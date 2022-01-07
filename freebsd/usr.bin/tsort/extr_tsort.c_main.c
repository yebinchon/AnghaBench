
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* b_buf; int b_bsize; } ;
typedef int FILE ;
typedef TYPE_1__ BUF ;


 int EOF ;
 int add_arc (char*,char*) ;
 int debug ;
 int err (int,char*,char*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int getc (int *) ;
 int getopt (int,char**,char*) ;
 void* grow_buf (int*,int) ;
 scalar_t__ isspace (int) ;
 int longest ;
 scalar_t__ optind ;
 int quiet ;
 int * stdin ;
 int tsort () ;
 int usage () ;

int
main(int argc, char *argv[])
{
 BUF *b;
 int c, n;
 FILE *fp;
 int bsize, ch, nused;
 BUF bufs[2];

 fp = ((void*)0);
 while ((ch = getopt(argc, argv, "dlq")) != -1)
  switch (ch) {
  case 'd':
   debug = 1;
   break;
  case 'l':
   longest = 1;
   break;
  case 'q':
   quiet = 1;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 switch (argc) {
 case 0:
  fp = stdin;
  break;
 case 1:
  if ((fp = fopen(*argv, "r")) == ((void*)0))
   err(1, "%s", *argv);
  break;
 default:
  usage();
 }

 for (b = bufs, n = 2; --n >= 0; b++)
  b->b_buf = grow_buf(((void*)0), b->b_bsize = 1024);


 for (n = 0, c = getc(fp);;) {
  while (c != EOF && isspace(c))
   c = getc(fp);
  if (c == EOF)
   break;

  nused = 0;
  b = &bufs[n];
  bsize = b->b_bsize;
  do {
   b->b_buf[nused++] = c;
   if (nused == bsize)
    b->b_buf = grow_buf(b->b_buf, bsize *= 2);
   c = getc(fp);
  } while (c != EOF && !isspace(c));

  b->b_buf[nused] = '\0';
  b->b_bsize = bsize;
  if (n)
   add_arc(bufs[0].b_buf, bufs[1].b_buf);
  n = !n;
 }
 (void)fclose(fp);
 if (n)
  errx(1, "odd data count");


 tsort();
 exit(0);
}
