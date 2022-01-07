
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct executable {char const* x_path; int * x_fp; } ;
typedef int FILE ;


 struct executable* calloc (int,int) ;
 scalar_t__ caph_enter () ;
 int * checked_fopen (char const*,char*) ;
 int digest (struct executable*) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int load (struct executable*) ;
 int parse (struct executable*) ;
 int printf (char*) ;
 int receive_signature (struct executable*,int) ;
 int save (struct executable*,int *,char const*) ;
 int send_digest (struct executable*,int) ;
 int show_certificate (struct executable*) ;
 int show_digest (struct executable*) ;
 scalar_t__ signature_size (struct executable*) ;
 int update (struct executable*) ;

int
child(const char *inpath, const char *outpath, int pipefd,
    bool Vflag, bool vflag)
{
 FILE *outfp = ((void*)0), *infp = ((void*)0);
 struct executable *x;

 infp = checked_fopen(inpath, "r");
 if (outpath != ((void*)0))
  outfp = checked_fopen(outpath, "w");

 if (caph_enter() < 0)
  err(1, "cap_enter");

 x = calloc(1, sizeof(*x));
 if (x == ((void*)0))
  err(1, "calloc");
 x->x_path = inpath;
 x->x_fp = infp;

 load(x);
 parse(x);
 if (Vflag) {
  if (signature_size(x) == 0)
   errx(1, "file not signed");

  printf("file contains signature\n");
  if (vflag) {
   digest(x);
   show_digest(x);
   show_certificate(x);
  }
 } else {
  if (signature_size(x) != 0)
   errx(1, "file already signed");

  digest(x);
  if (vflag)
   show_digest(x);
  send_digest(x, pipefd);
  receive_signature(x, pipefd);
  update(x);
  save(x, outfp, outpath);
 }

 return (0);
}
