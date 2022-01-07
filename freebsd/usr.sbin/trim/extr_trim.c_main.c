
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ off_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int EX_USAGE ;
 int errx (int ,char*,char*,...) ;
 int expand_number (int ,int *) ;
 int getopt (int,char**,char*) ;
 scalar_t__ getsize (int ) ;
 int optarg ;
 int optind ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ trim (char*,scalar_t__,scalar_t__,int,int) ;
 int usage (char*) ;

int
main(int argc, char **argv)
{
 off_t offset, length;
 uint64_t usz;
 int ch, error;
 bool dryrun, verbose;
 char *fname, *name;

 error = 0;
 length = offset = 0;
 name = argv[0];
 dryrun = verbose = 1;

 while ((ch = getopt(argc, argv, "Nfl:o:qr:v")) != -1)
  switch (ch) {
  case 'N':
   dryrun = 1;
   verbose = 1;
   break;
  case 'f':
   dryrun = 0;
   break;
  case 'l':
  case 'o':
   if (expand_number(optarg, &usz) == -1 ||
     (off_t)usz < 0 || (usz == 0 && ch == 'l'))
    errx(EX_USAGE,
     "invalid %s of the region: %s",
     ch == 'o' ? "offset" : "length",
     optarg);
   if (ch == 'o')
    offset = (off_t)usz;
   else
    length = (off_t)usz;
   break;
  case 'q':
   verbose = 0;
   break;
  case 'r':
   if ((length = getsize(optarg)) == 0)
    errx(EX_USAGE,
     "invalid zero length reference file"
     " for the region: %s", optarg);
   break;
  case 'v':
   verbose = 1;
   break;
  default:
   usage(name);

  }
 if (strcmp(argv[optind-1], "--") != 0) {
  for (ch = optind; ch < argc; ch++)
   if (argv[ch][0] == '-')
    usage(name);
 }

 argv += optind;
 argc -= optind;

 if (argc < 1)
  usage(name);

 while ((fname = *argv++) != ((void*)0))
  if (trim(fname, offset, length, dryrun, verbose) < 0)
   error++;

 return (error ? EXIT_FAILURE : EXIT_SUCCESS);
}
