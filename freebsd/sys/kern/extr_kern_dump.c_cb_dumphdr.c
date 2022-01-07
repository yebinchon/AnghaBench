
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
struct dumperinfo {int dummy; } ;
struct dump_pa {long pa_start; void* pa_size; } ;
typedef int phdr ;
struct TYPE_3__ {long p_vaddr; long p_paddr; void* p_filesz; int p_align; void* p_memsz; int p_offset; int p_flags; int p_type; } ;
typedef TYPE_1__ Elf_Phdr ;


 int PAGE_SIZE ;
 int PF_R ;
 int PT_LOAD ;
 int bzero (TYPE_1__*,int) ;
 scalar_t__ do_minidump ;
 int dumpsys_buf_write (struct dumperinfo*,char*,int) ;
 int fileofs ;

__attribute__((used)) static int
cb_dumphdr(struct dump_pa *mdp, int seqnr, void *arg)
{
 struct dumperinfo *di = (struct dumperinfo*)arg;
 Elf_Phdr phdr;
 uint64_t size;
 int error;

 size = mdp->pa_size;
 bzero(&phdr, sizeof(phdr));
 phdr.p_type = PT_LOAD;
 phdr.p_flags = PF_R;
 phdr.p_offset = fileofs;




 phdr.p_vaddr = mdp->pa_start;
 phdr.p_paddr = mdp->pa_start;

 phdr.p_filesz = size;
 phdr.p_memsz = size;
 phdr.p_align = PAGE_SIZE;

 error = dumpsys_buf_write(di, (char*)&phdr, sizeof(phdr));
 fileofs += phdr.p_filesz;
 return (error);
}
