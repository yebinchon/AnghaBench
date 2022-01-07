
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_map_entry_t ;
struct phdr_closure {size_t offset; TYPE_2__* phdr; } ;
typedef int ssize_t ;
typedef int pid_t ;
typedef int binhdr ;
struct TYPE_8__ {int e_phoff; int e_ehsize; int e_phentsize; int e_shentsize; int e_phnum; int e_shnum; int e_shoff; int e_shstrndx; int e_flags; scalar_t__ e_entry; void* e_version; int e_machine; int e_type; void** e_ident; } ;
struct TYPE_7__ {size_t p_offset; size_t p_filesz; int p_align; int p_flags; scalar_t__ p_memsz; scalar_t__ p_paddr; scalar_t__ p_vaddr; int p_type; } ;
struct TYPE_6__ {int sh_size; int sh_info; int sh_link; int sh_type; } ;
typedef TYPE_1__ Elf_Shdr ;
typedef TYPE_2__ Elf_Phdr ;
typedef TYPE_3__ Elf_Ehdr ;
typedef int Elf32_Size ;


 size_t EI_ABIVERSION ;
 size_t EI_CLASS ;
 size_t EI_DATA ;
 size_t EI_MAG0 ;
 size_t EI_MAG1 ;
 size_t EI_MAG2 ;
 size_t EI_MAG3 ;
 size_t EI_OSABI ;
 size_t EI_PAD ;
 size_t EI_VERSION ;
 void* ELFMAG0 ;
 void* ELFMAG1 ;
 void* ELFMAG2 ;
 void* ELFMAG3 ;
 void* ELFOSABI_FREEBSD ;
 void* ELF_CLASS ;
 void* ELF_DATA ;
 int ET_CORE ;
 void* EV_CURRENT ;
 int PF_R ;
 int PN_XNUM ;
 int PT_NOTE ;
 int SHN_UNDEF ;
 int SHT_NULL ;
 int cb_put_phdr ;
 int each_dumpable_segment (int ,int ,struct phdr_closure*) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int read (int,TYPE_3__*,int) ;

__attribute__((used)) static void
elf_puthdr(int efd, pid_t pid, vm_map_entry_t map, void *hdr, size_t hdrsize,
    size_t notesz, size_t segoff, int numsegs)
{
 Elf_Ehdr *ehdr, binhdr;
 Elf_Phdr *phdr;
 Elf_Shdr *shdr;
 struct phdr_closure phc;
 ssize_t cnt;

 cnt = read(efd, &binhdr, sizeof(binhdr));
 if (cnt < 0)
  err(1, "Failed to re-read ELF header");
 else if (cnt != sizeof(binhdr))
  errx(1, "Failed to re-read ELF header");

 ehdr = (Elf_Ehdr *)hdr;

 ehdr->e_ident[EI_MAG0] = ELFMAG0;
 ehdr->e_ident[EI_MAG1] = ELFMAG1;
 ehdr->e_ident[EI_MAG2] = ELFMAG2;
 ehdr->e_ident[EI_MAG3] = ELFMAG3;
 ehdr->e_ident[EI_CLASS] = ELF_CLASS;
 ehdr->e_ident[EI_DATA] = ELF_DATA;
 ehdr->e_ident[EI_VERSION] = EV_CURRENT;
 ehdr->e_ident[EI_OSABI] = ELFOSABI_FREEBSD;
 ehdr->e_ident[EI_ABIVERSION] = 0;
 ehdr->e_ident[EI_PAD] = 0;
 ehdr->e_type = ET_CORE;
 ehdr->e_machine = binhdr.e_machine;
 ehdr->e_version = EV_CURRENT;
 ehdr->e_entry = 0;
 ehdr->e_phoff = sizeof(Elf_Ehdr);
 ehdr->e_flags = binhdr.e_flags;
 ehdr->e_ehsize = sizeof(Elf_Ehdr);
 ehdr->e_phentsize = sizeof(Elf_Phdr);
 ehdr->e_shentsize = sizeof(Elf_Shdr);
 ehdr->e_shstrndx = SHN_UNDEF;
 if (numsegs + 1 < PN_XNUM) {
  ehdr->e_phnum = numsegs + 1;
  ehdr->e_shnum = 0;
 } else {
  ehdr->e_phnum = PN_XNUM;
  ehdr->e_shnum = 1;

  ehdr->e_shoff = ehdr->e_phoff +
      (numsegs + 1) * ehdr->e_phentsize;

  shdr = (Elf_Shdr *)((char *)hdr + ehdr->e_shoff);
  memset(shdr, 0, sizeof(*shdr));
  shdr->sh_type = SHT_NULL;
  shdr->sh_size = ehdr->e_shnum;
  shdr->sh_link = ehdr->e_shstrndx;
  shdr->sh_info = numsegs + 1;
 }




 phdr = (Elf_Phdr *)((char *)hdr + ehdr->e_phoff);


 phdr->p_type = PT_NOTE;
 phdr->p_offset = hdrsize;
 phdr->p_vaddr = 0;
 phdr->p_paddr = 0;
 phdr->p_filesz = notesz;
 phdr->p_memsz = 0;
 phdr->p_flags = PF_R;
 phdr->p_align = sizeof(Elf32_Size);
 phdr++;


 phc.phdr = phdr;
 phc.offset = segoff;
 each_dumpable_segment(map, cb_put_phdr, &phc);
}
