
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 scalar_t__ base64 ;
 int base64_decode () ;
 scalar_t__ cflag ;
 int decode2 () ;
 int infile ;
 char* outfile ;
 int outfp ;
 scalar_t__ rflag ;
 int stdout ;
 int uu_decode () ;
 int warnx (char*,int ) ;

__attribute__((used)) static int
decode(void)
{
 int r, v;

 if (rflag) {

  outfile = "/dev/stdout";
  outfp = stdout;
  if (base64)
   return (base64_decode());
  else
   return (uu_decode());
 }
 v = decode2();
 if (v == EOF) {
  warnx("%s: missing or bad \"begin\" line", infile);
  return (1);
 }
 for (r = v; cflag; r |= v) {
  v = decode2();
  if (v == EOF)
   break;
 }
 return (r);
}
