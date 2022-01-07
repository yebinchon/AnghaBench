
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int abort () ;
 int getchar () ;
 int getopt (int,char**,char*) ;
 int optarg ;
 scalar_t__ optind ;
 int printf (char*,...) ;
 int putchar (char) ;
 int strtol (int ,int *,int) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int c, count, linepos, maxcount, pretty, radix;

 maxcount = 0;
 pretty = 0;
 radix = 10;
 while ((c = getopt(argc, argv, "n:sx")) != -1) {
  switch (c) {
  case 'n':
   maxcount = strtol(optarg, ((void*)0), 10);
   break;
  case 's':
   pretty = 1;
   break;
  case 'x':
   radix = 16;
   break;
  case '?':
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc > 0)
  printf("%s\n", argv[0]);
 count = linepos = 0;
 while((c = getchar()) != EOF) {
  if (count) {
   putchar(',');
   linepos++;
  }
  if ((maxcount == 0 && linepos > 70) ||
      (maxcount > 0 && count >= maxcount)) {
   putchar('\n');
   count = linepos = 0;
  }
  if (pretty) {
   if (count) {
    putchar(' ');
    linepos++;
   } else {
    putchar('\t');
    linepos += 8;
   }
  }
  switch (radix) {
  case 10:
   linepos += printf("%d", c);
   break;
  case 16:
   linepos += printf("0x%02x", c);
   break;
  default:
   abort();
  }
  count++;
 }
 putchar('\n');
 if (argc > 1)
  printf("%s\n", argv[1]);
 return (0);
}
