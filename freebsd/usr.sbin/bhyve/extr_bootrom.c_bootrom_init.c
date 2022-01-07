
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
struct vmctx {int dummy; } ;
struct stat {int st_size; } ;
typedef int ssize_t ;


 char* MAP_FAILED ;
 int MAX_BOOTROM_SIZE ;
 int O_RDONLY ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int PROT_EXEC ;
 int PROT_READ ;
 int VM_BOOTROM ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fstat (int,struct stat*) ;
 int open (char const*,int ) ;
 int read (int,char*,int) ;
 int stderr ;
 char* strerror (int ) ;
 char* vm_create_devmem (struct vmctx*,int ,char*,int) ;
 scalar_t__ vm_mmap_memseg (struct vmctx*,int,int ,int ,int,int) ;

int
bootrom_init(struct vmctx *ctx, const char *romfile)
{
 struct stat sbuf;
 vm_paddr_t gpa;
 ssize_t rlen;
 char *ptr;
 int fd, i, rv, prot;

 rv = -1;
 fd = open(romfile, O_RDONLY);
 if (fd < 0) {
  fprintf(stderr, "Error opening bootrom \"%s\": %s\n",
      romfile, strerror(errno));
  goto done;
 }

        if (fstat(fd, &sbuf) < 0) {
  fprintf(stderr, "Could not fstat bootrom file \"%s\": %s\n",
      romfile, strerror(errno));
  goto done;
        }





 if (sbuf.st_size > MAX_BOOTROM_SIZE || sbuf.st_size < PAGE_SIZE) {
  fprintf(stderr, "Invalid bootrom size %ld\n", sbuf.st_size);
  goto done;
 }

 if (sbuf.st_size & PAGE_MASK) {
  fprintf(stderr, "Bootrom size %ld is not a multiple of the "
      "page size\n", sbuf.st_size);
  goto done;
 }

 ptr = vm_create_devmem(ctx, VM_BOOTROM, "bootrom", sbuf.st_size);
 if (ptr == MAP_FAILED)
  goto done;


 prot = PROT_READ | PROT_EXEC;
 gpa = (1ULL << 32) - sbuf.st_size;
 if (vm_mmap_memseg(ctx, gpa, VM_BOOTROM, 0, sbuf.st_size, prot) != 0)
  goto done;


 for (i = 0; i < sbuf.st_size / PAGE_SIZE; i++) {
  rlen = read(fd, ptr + i * PAGE_SIZE, PAGE_SIZE);
  if (rlen != PAGE_SIZE) {
   fprintf(stderr, "Incomplete read of page %d of bootrom "
       "file %s: %ld bytes\n", i, romfile, rlen);
   goto done;
  }
 }
 rv = 0;
done:
 if (fd >= 0)
  close(fd);
 return (rv);
}
