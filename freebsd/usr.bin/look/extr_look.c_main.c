
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ uintmax_t ;
struct stat {scalar_t__ st_size; } ;
typedef int off_t ;


 int EFBIG ;
 int LC_CTYPE ;
 unsigned char* MAP_FAILED ;
 int MAP_SHARED ;
 int MB_LEN_MAX ;
 int O_RDONLY ;
 int PROT_READ ;
 scalar_t__ SIZE_T_MAX ;
 unsigned char* _path_words ;
 int close (int) ;
 int dflag ;
 int err (int,char*,unsigned char const*) ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int fflag ;
 scalar_t__ fstat (int,struct stat*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int longopts ;
 int look (int*,unsigned char*,unsigned char*) ;
 int mbrtowc (int*,int ,int ,int *) ;
 unsigned char* mmap (int *,size_t,int ,int ,int,int ) ;
 int open (unsigned char const*,int ,int ) ;
 int optarg ;
 scalar_t__ optind ;
 int* prepkey (int ,int) ;
 int setlocale (int ,char*) ;
 int strerror (int ) ;
 int strlen (int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct stat sb;
 int ch, fd, match;
 wchar_t termchar;
 unsigned char *back, *front;
 unsigned const char *file;
 wchar_t *key;

 (void) setlocale(LC_CTYPE, "");

 file = _path_words;
 termchar = L'\0';
 while ((ch = getopt_long(argc, argv, "+adft:", longopts, ((void*)0))) != -1)
  switch(ch) {
  case 'a':

   break;
  case 'd':
   dflag = 1;
   break;
  case 'f':
   fflag = 1;
   break;
  case 't':
   if (mbrtowc(&termchar, optarg, MB_LEN_MAX, ((void*)0)) !=
       strlen(optarg))
    errx(2, "invalid termination character");
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc == 0)
  usage();
 if (argc == 1)
  dflag = fflag = 1;
 key = prepkey(*argv++, termchar);
 if (argc >= 2)
  file = *argv++;

 match = 1;

 do {
  if ((fd = open(file, O_RDONLY, 0)) < 0 || fstat(fd, &sb))
   err(2, "%s", file);
  if ((uintmax_t)sb.st_size > (uintmax_t)SIZE_T_MAX)
   errx(2, "%s: %s", file, strerror(EFBIG));
  if (sb.st_size == 0) {
   close(fd);
   continue;
  }
  if ((front = mmap(((void*)0), (size_t)sb.st_size, PROT_READ, MAP_SHARED, fd, (off_t)0)) == MAP_FAILED)
   err(2, "%s", file);
  back = front + sb.st_size;
  match *= (look(key, front, back));
  close(fd);
 } while (argc-- > 2 && (file = *argv++));

 exit(match);
}
