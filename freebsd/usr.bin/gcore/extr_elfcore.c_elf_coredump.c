
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_map_entry_t ;
typedef int uintmax_t ;
struct sseg_closure {int count; scalar_t__ size; } ;
struct sbuf {int dummy; } ;
struct ptrace_io_desc {char* piod_addr; int piod_len; int * piod_offs; int piod_op; } ;
typedef int ssize_t ;
typedef int pid_t ;
typedef int * caddr_t ;
typedef int buf ;
struct TYPE_2__ {int p_filesz; scalar_t__ p_vaddr; } ;
typedef int Elf_Shdr ;
typedef TYPE_1__ Elf_Phdr ;
typedef int Elf_Ehdr ;


 size_t PAGE_SIZE ;
 int PIOD_READ_D ;
 int PN_XNUM ;
 int PT_ATTACH ;
 int PT_IO ;
 scalar_t__ atexit (int ) ;
 int cb_size_segment ;
 int each_dumpable_segment (int ,int ,struct sseg_closure*) ;
 int elf_detach ;
 int elf_puthdr (int,int ,int ,void*,size_t,size_t,size_t,int) ;
 int elf_putnotes (int ,struct sbuf*,size_t*) ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int freemap (int ) ;
 int g_pid ;
 int g_status ;
 int ptrace (int ,int ,int *,int ) ;
 int readmap (int ) ;
 void* sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_end_section (struct sbuf*,int,size_t,int ) ;
 scalar_t__ sbuf_finish (struct sbuf*) ;
 size_t sbuf_len (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_putc (struct sbuf*,int ) ;
 int sbuf_start_section (struct sbuf*,int*) ;
 int waitpid (int ,int *,int ) ;
 int write (int,char*,size_t) ;

__attribute__((used)) static void
elf_coredump(int efd, int fd, pid_t pid)
{
 vm_map_entry_t map;
 struct sseg_closure seginfo;
 struct sbuf *sb;
 void *hdr;
 size_t hdrsize, notesz, segoff;
 ssize_t n, old_len;
 Elf_Phdr *php;
 int i;


 g_pid = pid;
 if (atexit(elf_detach) != 0)
  err(1, "atexit");
 errno = 0;
 ptrace(PT_ATTACH, pid, ((void*)0), 0);
 if (errno)
  err(1, "PT_ATTACH");
 if (waitpid(pid, &g_status, 0) == -1)
  err(1, "waitpid");


 map = readmap(pid);


 seginfo.count = 0;
 seginfo.size = 0;
 each_dumpable_segment(map, cb_size_segment, &seginfo);




 sb = sbuf_new_auto();
 hdrsize = sizeof(Elf_Ehdr) + sizeof(Elf_Phdr) * (1 + seginfo.count);
 if (seginfo.count + 1 >= PN_XNUM)
  hdrsize += sizeof(Elf_Shdr);

 sbuf_start_section(sb, ((void*)0));

 sbuf_start_section(sb, &old_len);
 sbuf_putc(sb, 0);
 sbuf_end_section(sb, old_len, hdrsize, 0);

 elf_putnotes(pid, sb, &notesz);

 sbuf_end_section(sb, -1, PAGE_SIZE, 0);
 if (sbuf_finish(sb) != 0)
  err(1, "sbuf_finish");
 hdr = sbuf_data(sb);
 segoff = sbuf_len(sb);

 elf_puthdr(efd, pid, map, hdr, hdrsize, notesz, segoff, seginfo.count);

 n = write(fd, hdr, segoff);
 if (n == -1)
  err(1, "write");
 if (n < segoff)
              errx(1, "short write");


 php = (Elf_Phdr *)((char *)hdr + sizeof(Elf_Ehdr)) + 1;
 for (i = 0; i < seginfo.count; i++) {
  struct ptrace_io_desc iorequest;
  uintmax_t nleft = php->p_filesz;

  iorequest.piod_op = PIOD_READ_D;
  iorequest.piod_offs = (caddr_t)(uintptr_t)php->p_vaddr;
  while (nleft > 0) {
   char buf[8*1024];
   size_t nwant;
   ssize_t ngot;

   if (nleft > sizeof(buf))
    nwant = sizeof buf;
   else
    nwant = nleft;
   iorequest.piod_addr = buf;
   iorequest.piod_len = nwant;
   ptrace(PT_IO, pid, (caddr_t)&iorequest, 0);
   ngot = iorequest.piod_len;
   if ((size_t)ngot < nwant)
    errx(1, "short read wanted %zu, got %zd",
        nwant, ngot);
   ngot = write(fd, buf, nwant);
   if (ngot == -1)
    err(1, "write of segment %d failed", i);
   if ((size_t)ngot != nwant)
    errx(1, "short write");
   nleft -= nwant;
   iorequest.piod_offs += ngot;
  }
  php++;
 }
 sbuf_delete(sb);
 freemap(map);
}
