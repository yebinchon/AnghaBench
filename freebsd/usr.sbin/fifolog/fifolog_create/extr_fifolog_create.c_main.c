
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int DEF_RECCNT ;
 int DEF_RECSIZE ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 int expand_number (int ,int*) ;
 char* fifolog_create (char* const,int,int) ;
 int getopt (int,char* const*,char*) ;
 int optarg ;
 scalar_t__ optind ;
 int usage () ;

int
main(int argc, char * const *argv)
{
 int ch;
 int64_t size;
 int64_t recsize;
 int64_t reccnt;
 const char *s;

 recsize = 0;
 size = 0;
 reccnt = 0;
 while((ch = getopt(argc, argv, "l:r:s:")) != -1) {
  switch (ch) {
  case 'l':
   if (expand_number(optarg, &recsize))
    err(1, "Couldn't parse -l argument");
   break;
  case 'r':
   if (expand_number(optarg, &reccnt))
    err(1, "Couldn't parse -r argument");
   break;
  case 's':
   if (expand_number(optarg, &size))
    err(1, "Couldn't parse -s argument");
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;
 if (argc != 1)
  usage();

 if (size != 0 && reccnt != 0 && recsize != 0) {
  if (size != reccnt * recsize)
   errx(1, "Inconsistent -l, -r and -s values");
 } else if (size != 0 && reccnt != 0 && recsize == 0) {
  if (size % reccnt)
   errx(1,
       "Inconsistent -r and -s values (gives remainder)");
  recsize = size / reccnt;
 } else if (size != 0 && reccnt == 0 && recsize != 0) {
  if (size % recsize)
      errx(1, "-s arg not divisible by -l arg");
 } else if (size != 0 && reccnt == 0 && recsize == 0) {
  recsize = DEF_RECSIZE;
  if (size % recsize)
      errx(1, "-s arg not divisible by %jd", recsize);
 } else if (size == 0 && reccnt != 0 && recsize != 0) {
  size = reccnt * recsize;
 } else if (size == 0 && reccnt != 0 && recsize == 0) {
  recsize = DEF_RECSIZE;
  size = reccnt * recsize;
 } else if (size == 0 && reccnt == 0 && recsize != 0) {
  size = DEF_RECCNT * recsize;
 } else if (size == 0 && reccnt == 0 && recsize == 0) {
  recsize = DEF_RECSIZE;
  size = DEF_RECCNT * recsize;
 }

 s = fifolog_create(argv[0], size, recsize);
 if (s == ((void*)0))
  return (0);
 err(1, "%s", s);
}
