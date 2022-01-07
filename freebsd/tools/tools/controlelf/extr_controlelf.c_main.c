
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* e_ident; int e_phnum; } ;
typedef TYPE_1__ GElf_Ehdr ;
typedef scalar_t__ Elf_Kind ;
typedef int Elf ;


 size_t EI_DATA ;
 int ELF_C_READ ;
 scalar_t__ ELF_K_AR ;
 scalar_t__ ELF_K_ELF ;
 int EV_CURRENT ;
 scalar_t__ EV_NONE ;
 int EXIT_FAILURE ;
 int O_RDONLY ;
 int O_RDWR ;
 scalar_t__ SUPPORTED_ENDIAN ;
 int close (int) ;
 int edit_file_features (int *,int ,int,char*) ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 int elf_errmsg (int) ;
 scalar_t__ elf_kind (int *) ;
 scalar_t__ elf_version (int ) ;
 int errx (int ,char*) ;
 int exit (int ) ;
 int * gelf_getehdr (int *,TYPE_1__*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int long_opts ;
 int open (char*,int ,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int print_features () ;
 int print_file_features (int *,int ,int,char*) ;
 int usage () ;
 int warn (char*,char*) ;
 int warnx (char*,...) ;

int
main(int argc, char **argv)
{
 GElf_Ehdr ehdr;
 Elf *elf;
 Elf_Kind kind;
 int ch, fd, editfeatures, retval;
 char *features;
 bool lflag;

 lflag = 0;
 editfeatures = 0;
 retval = 0;

 if (elf_version(EV_CURRENT) == EV_NONE)
  errx(EXIT_FAILURE, "elf_version error");

 while ((ch = getopt_long(argc, argv, "hle:", long_opts, ((void*)0))) != -1) {
  switch (ch) {
  case 'l':
   print_features();
   lflag = 1;
   break;
  case 'e':
   features = optarg;
   editfeatures = 1;
   break;
  case 'h':
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;
 if (argc == 0) {
  if (lflag)
   exit(0);
  else {
   warnx("no file(s) specified");
   usage();
  }
 }

 while (argc) {
  elf = ((void*)0);

  if ((fd = open(argv[0],
      editfeatures ? O_RDWR : O_RDONLY, 0)) < 0) {
   warn("error opening file %s", argv[0]);
   retval = 1;
   goto fail;
  }

  if ((elf = elf_begin(fd, ELF_C_READ, ((void*)0))) == ((void*)0)) {
   warnx("elf_begin failed: %s", elf_errmsg(-1));
   retval = 1;
   goto fail;
  }

  if ((kind = elf_kind(elf)) != ELF_K_ELF) {
   if (kind == ELF_K_AR)
    warnx("file '%s' is an archive", argv[0]);
   else
    warnx("file '%s' is not an ELF file", argv[0]);
   retval = 1;
   goto fail;
  }

  if (gelf_getehdr(elf, &ehdr) == ((void*)0)) {
   warnx("gelf_getehdr: %s", elf_errmsg(-1));
   retval = 1;
   goto fail;
  }




  if (ehdr.e_ident[EI_DATA] != SUPPORTED_ENDIAN) {
   warnx("file endianness must match host");
   retval = 1;
   goto fail;
  }

  if (!editfeatures) {
   if (!print_file_features(elf, ehdr.e_phnum, fd,
       argv[0])) {
    retval = 1;
    goto fail;
   }
  } else if (!edit_file_features(elf, ehdr.e_phnum, fd,
      features)) {
   retval = 1;
   goto fail;
  }
fail:
  if (elf != ((void*)0))
   elf_end(elf);

  if (fd >= 0)
   close(fd);

  argc--;
  argv++;
 }

 return (retval);
}
