
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_10__ {int value; char const* name; } ;
typedef TYPE_1__ nltype ;
struct TYPE_13__ {int e_shoff; int e_shnum; } ;
struct TYPE_12__ {scalar_t__ sh_type; size_t sh_link; int sh_offset; int sh_size; int sh_entsize; } ;
struct TYPE_11__ {int st_value; int st_name; } ;
typedef TYPE_2__ Elf_Sym ;
typedef TYPE_3__ Elf_Shdr ;
typedef TYPE_4__ Elf_Ehdr ;


 int IS_ELF (TYPE_4__) ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PROT_READ ;
 scalar_t__ SHT_SYMTAB ;
 scalar_t__ calloc (scalar_t__,int) ;
 int close (int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,...) ;
 char** excludes ;
 int fstat (int,struct stat*) ;
 void* mmap (int ,int ,int ,int ,int,int ) ;
 TYPE_1__* nl ;
 scalar_t__ nname ;
 TYPE_1__* npe ;
 int open (char const*,int ) ;
 int read (int,TYPE_4__*,int) ;
 scalar_t__ wantsym (TYPE_2__ const*,char const*) ;

int
elf_getnfile(const char *filename, char ***defaultEs)
{
    int fd;
    Elf_Ehdr h;
    struct stat s;
    void *mapbase;
    const char *base;
    const Elf_Shdr *shdrs;
    const Elf_Shdr *sh_symtab;
    const Elf_Shdr *sh_strtab;
    const char *strtab;
    const Elf_Sym *symtab;
    int symtabct;
    int i;

    if ((fd = open(filename, O_RDONLY)) == -1)
 err(1, "%s", filename);
    if (read(fd, &h, sizeof h) != sizeof h || !IS_ELF(h)) {
 close(fd);
 return -1;
    }
    if (fstat(fd, &s) == -1)
 err(1, "cannot fstat %s", filename);
    if ((mapbase = mmap(0, s.st_size, PROT_READ, MAP_SHARED, fd, 0)) ==
      MAP_FAILED)
 err(1, "cannot mmap %s", filename);
    close(fd);

    base = (const char *)mapbase;
    shdrs = (const Elf_Shdr *)(base + h.e_shoff);


    for (i = 1; i < h.e_shnum; i++)
 if (shdrs[i].sh_type == SHT_SYMTAB)
     break;
    if (i == h.e_shnum)
 errx(1, "%s has no symbol table", filename);
    sh_symtab = &shdrs[i];
    sh_strtab = &shdrs[sh_symtab->sh_link];

    symtab = (const Elf_Sym *)(base + sh_symtab->sh_offset);
    symtabct = sh_symtab->sh_size / sh_symtab->sh_entsize;
    strtab = (const char *)(base + sh_strtab->sh_offset);


    nname = 0;
    for (i = 1; i < symtabct; i++)
 if (wantsym(&symtab[i], strtab))
     nname++;


    if ((nl = (nltype *)calloc(nname + 1, sizeof(nltype))) == ((void*)0))
 errx(1, "insufficient memory for symbol table");


    npe = nl;
    for (i = 1; i < symtabct; i++) {
 const Elf_Sym *sym = &symtab[i];

 if (wantsym(sym, strtab)) {
     npe->value = sym->st_value;
     npe->name = strtab + sym->st_name;
     npe++;
 }
    }
    npe->value = -1;

    *defaultEs = excludes;
    return 0;
}
