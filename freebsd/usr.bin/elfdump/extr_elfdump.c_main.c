
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int ;
struct stat {int st_size; } ;
typedef int cap_rights_t ;
typedef char Elf32_Ehdr ;


 int CAP_FSTAT ;
 int CAP_MMAP_R ;
 int CAP_WRITE ;
 int ED_ALL ;
 int ED_DYN ;
 int ED_EHDR ;
 int ED_GOT ;
 int ED_HASH ;
 int ED_INTERP ;
 int ED_IS_ELF ;
 int ED_NOTE ;
 int ED_PHDR ;
 int ED_REL ;
 int ED_SHDR ;
 int ED_SYMTAB ;
 int E_PHENTSIZE ;
 int E_PHNUM ;
 int E_PHOFF ;
 int E_SHENTSIZE ;
 int E_SHOFF ;
 int IS_ELF (char) ;
 char* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PROT_READ ;







 int P_TYPE ;
 int SH_NAME ;
 int SH_OFFSET ;
 int SH_TYPE ;
 int STDIN_FILENO ;
 int cap_rights_init (int *,...) ;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_limit_stderr () ;
 scalar_t__ caph_limit_stdout () ;
 scalar_t__ caph_rights_limit (int,int *) ;
 char* dynstr ;
 int elf_get_off (char*,char*,int ) ;
 int elf_get_quarter (char*,char*,int ) ;
 int elf_get_shnum (char*,void*) ;
 int elf_get_shstrndx (char*,void*) ;
 int elf_get_word (char*,void*,int ) ;
 int elf_print_dynamic (char*,void*) ;
 int elf_print_ehdr (char*,void*) ;
 int elf_print_got (char*,void*) ;
 int elf_print_hash (char*,void*) ;
 int elf_print_interp (char*,void*) ;
 int elf_print_note (char*,void*) ;
 int elf_print_phdr (char*,void*) ;
 int elf_print_rel (char*,void*) ;
 int elf_print_rela (char*,void*) ;
 int elf_print_shdr (char*,void*) ;
 int elf_print_symtab (char*,void*,char*) ;
 int err (int,char*,...) ;
 int errx (int,char*) ;
 int exit (int) ;
 int fileno (int *) ;
 int * fopen (int ,char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int getopt (int,char**,char*) ;
 char* mmap (int *,int ,int ,int ,int,int ) ;
 int open (char*,int ) ;
 int optarg ;
 scalar_t__ optind ;
 int * out ;
 char* shstrtab ;
 int * stdout ;
 scalar_t__ strcmp (char*,char*) ;
 char* strtab ;
 int usage () ;

int
main(int ac, char **av)
{
 cap_rights_t rights;
 u_int64_t phoff;
 u_int64_t shoff;
 u_int64_t phentsize;
 u_int64_t phnum;
 u_int64_t shentsize;
 u_int64_t shnum;
 u_int64_t shstrndx;
 u_int64_t offset;
 u_int64_t name;
 u_int64_t type;
 struct stat sb;
 u_int flags;
 Elf32_Ehdr *e;
 void *p;
 void *sh;
 void *v;
 int fd;
 int ch;
 int i;

 out = stdout;
 flags = 0;
 while ((ch = getopt(ac, av, "acdEeiGhnprsw:")) != -1)
  switch (ch) {
  case 'a':
   flags = ED_ALL;
   break;
  case 'c':
   flags |= ED_SHDR;
   break;
  case 'd':
   flags |= ED_DYN;
   break;
  case 'E':
   flags = ED_IS_ELF;
   break;
  case 'e':
   flags |= ED_EHDR;
   break;
  case 'i':
   flags |= ED_INTERP;
   break;
  case 'G':
   flags |= ED_GOT;
   break;
  case 'h':
   flags |= ED_HASH;
   break;
  case 'n':
   flags |= ED_NOTE;
   break;
  case 'p':
   flags |= ED_PHDR;
   break;
  case 'r':
   flags |= ED_REL;
   break;
  case 's':
   flags |= ED_SYMTAB;
   break;
  case 'w':
   if ((out = fopen(optarg, "w")) == ((void*)0))
    err(1, "%s", optarg);
   cap_rights_init(&rights, CAP_FSTAT, CAP_WRITE);
   if (caph_rights_limit(fileno(out), &rights) < 0)
    err(1, "unable to limit rights for %s", optarg);
   break;
  case '?':
  default:
   usage();
  }
 ac -= optind;
 av += optind;
 if (ac == 0 || flags == 0 || ((flags & ED_IS_ELF) &&
     (ac != 1 || (flags & ~ED_IS_ELF) || out != stdout)))
  usage();
 if ((fd = open(*av, O_RDONLY)) < 0 ||
     fstat(fd, &sb) < 0)
  err(1, "%s", *av);
 cap_rights_init(&rights, CAP_MMAP_R);
 if (caph_rights_limit(fd, &rights) < 0)
  err(1, "unable to limit rights for %s", *av);
 cap_rights_init(&rights);
 if (caph_rights_limit(STDIN_FILENO, &rights) < 0 ||
     caph_limit_stdout() < 0 || caph_limit_stderr() < 0) {
                err(1, "unable to limit rights for stdio");
 }
 if (caph_enter() < 0)
  err(1, "unable to enter capability mode");
 e = mmap(((void*)0), sb.st_size, PROT_READ, MAP_SHARED, fd, 0);
 if (e == MAP_FAILED)
  err(1, ((void*)0));
 if (!IS_ELF(*(Elf32_Ehdr *)e)) {
  if (flags & ED_IS_ELF)
   exit(1);
  errx(1, "not an elf file");
 } else if (flags & ED_IS_ELF)
  exit (0);
 phoff = elf_get_off(e, e, E_PHOFF);
 shoff = elf_get_off(e, e, E_SHOFF);
 phentsize = elf_get_quarter(e, e, E_PHENTSIZE);
 phnum = elf_get_quarter(e, e, E_PHNUM);
 shentsize = elf_get_quarter(e, e, E_SHENTSIZE);
 p = (char *)e + phoff;
 if (shoff > 0) {
  sh = (char *)e + shoff;
  shnum = elf_get_shnum(e, sh);
  shstrndx = elf_get_shstrndx(e, sh);
  offset = elf_get_off(e, (char *)sh + shstrndx * shentsize,
      SH_OFFSET);
  shstrtab = (char *)e + offset;
 } else {
  sh = ((void*)0);
  shnum = 0;
  shstrndx = 0;
  shstrtab = ((void*)0);
 }
 for (i = 0; (u_int64_t)i < shnum; i++) {
  name = elf_get_word(e, (char *)sh + i * shentsize, SH_NAME);
  offset = elf_get_off(e, (char *)sh + i * shentsize, SH_OFFSET);
  if (strcmp(shstrtab + name, ".strtab") == 0)
   strtab = (char *)e + offset;
  if (strcmp(shstrtab + name, ".dynstr") == 0)
   dynstr = (char *)e + offset;
 }
 if (flags & ED_EHDR)
  elf_print_ehdr(e, sh);
 if (flags & ED_PHDR)
  elf_print_phdr(e, p);
 if (flags & ED_SHDR)
  elf_print_shdr(e, sh);
 for (i = 0; (u_int64_t)i < phnum; i++) {
  v = (char *)p + i * phentsize;
  type = elf_get_word(e, v, P_TYPE);
  switch (type) {
  case 145:
   if (flags & ED_INTERP)
    elf_print_interp(e, v);
   break;
  case 142:
  case 144:
  case 146:
  case 143:
  case 140:
  case 141:
   break;
  }
 }
 for (i = 0; (u_int64_t)i < shnum; i++) {
  v = (char *)sh + i * shentsize;
  type = elf_get_word(e, v, SH_TYPE);
  switch (type) {
  case 128:
   if (flags & ED_SYMTAB)
    elf_print_symtab(e, v, strtab);
   break;
  case 139:
   if (flags & ED_DYN)
    elf_print_dynamic(e, v);
   break;
  case 131:
   if (flags & ED_REL)
    elf_print_rela(e, v);
   break;
  case 132:
   if (flags & ED_REL)
    elf_print_rel(e, v);
   break;
  case 135:
   name = elf_get_word(e, v, SH_NAME);
   if (flags & ED_NOTE &&
       strcmp(shstrtab + name, ".note.tag") == 0)
    elf_print_note(e, v);
   break;
  case 138:
   if (flags & ED_SYMTAB)
    elf_print_symtab(e, v, dynstr);
   break;
  case 133:
   name = elf_get_word(e, v, SH_NAME);
   if (flags & ED_GOT &&
       strcmp(shstrtab + name, ".got") == 0)
    elf_print_got(e, v);
   break;
  case 137:
   if (flags & ED_HASH)
    elf_print_hash(e, v);
   break;
  case 134:
  case 129:
  case 136:
  case 130:
   break;
  }
 }

 return 0;
}
