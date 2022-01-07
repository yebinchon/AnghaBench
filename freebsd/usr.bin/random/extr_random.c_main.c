
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int ERANGE ;
 int LC_CTYPE ;
 int O_RDONLY ;
 double RANDOM_MAX_PLUS1 ;
 int RANDOM_TYPE_LINES ;
 int RANDOM_TYPE_UNSET ;
 int RANDOM_TYPE_WORDS ;
 int err (int,char*,...) ;
 int errno ;
 int errx (int,char*) ;
 int exit (int ) ;
 scalar_t__ ferror (int ) ;
 int getchar () ;
 int getopt (int,char**,char*) ;
 int open (char const*,int ,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int putchar (int) ;
 double random () ;
 int randomize_fd (int,int,int,double) ;
 int setbuf (int ,int *) ;
 int setlocale (int ,char*) ;
 int srandomdev () ;
 int stdin ;
 int stdout ;
 int strcmp (char*,char*) ;
 double strtod (char*,char**) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 double denom;
 int ch, fd, random_exit, randomize_lines, random_type, ret,
  selected, unique_output, unbuffer_output;
 char *ep;
 const char *filename;

 denom = 0;
 filename = "/dev/fd/0";
 random_type = RANDOM_TYPE_UNSET;
 random_exit = randomize_lines = unbuffer_output = 0;
 unique_output = 1;

 (void)setlocale(LC_CTYPE, "");

 while ((ch = getopt(argc, argv, "ef:hlruUw")) != -1)
  switch (ch) {
  case 'e':
   random_exit = 1;
   break;
  case 'f':
   randomize_lines = 1;
   if (strcmp(optarg, "-") != 0)
    filename = optarg;
   break;
  case 'l':
   randomize_lines = 1;
   random_type = RANDOM_TYPE_LINES;
   break;
  case 'r':
   unbuffer_output = 1;
   break;
  case 'u':
   randomize_lines = 1;
   unique_output = 1;
   break;
  case 'U':
   randomize_lines = 1;
   unique_output = 0;
   break;
  case 'w':
   randomize_lines = 1;
   random_type = RANDOM_TYPE_WORDS;
   break;
  default:
  case '?':
   usage();

  }

 argc -= optind;
 argv += optind;

 switch (argc) {
 case 0:
  denom = (randomize_lines ? 1 : 2);
  break;
 case 1:
  errno = 0;
  denom = strtod(*argv, &ep);
  if (errno == ERANGE)
   err(1, "%s", *argv);
  if (denom <= 0 || *ep != '\0')
   errx(1, "denominator is not valid.");
  if (random_exit && denom > 256)
   errx(1, "denominator must be <= 256 for random exit.");
  break;
 default:
  usage();

 }

 srandomdev();





 if (unbuffer_output)
  setbuf(stdout, ((void*)0));





 if (randomize_lines) {
  if ((fd = open(filename, O_RDONLY, 0)) < 0)
   err(1, "%s", filename);
  ret = randomize_fd(fd, random_type, unique_output, denom);
  if (!random_exit)
   return(ret);
 }


 if (random_exit)
  return (int)(denom * random() / RANDOM_MAX_PLUS1);







 selected = (int)(denom * random() / RANDOM_MAX_PLUS1) == 0;
 while ((ch = getchar()) != EOF) {
  if (selected)
   (void)putchar(ch);
  if (ch == '\n') {

   if (ferror(stdout))
    err(2, "stdout");


   selected = (int)(denom * random() /
    RANDOM_MAX_PLUS1) == 0;
  }
 }
 if (ferror(stdin))
  err(2, "stdin");
 exit (0);
}
