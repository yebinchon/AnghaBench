
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crash () ;
 int * fopen (char const*,char*) ;
 int * fout ;
 int record_open (char const*) ;
 int * stdout ;
 scalar_t__ streq (char const*,char const*) ;
 int warn (char*,char const*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static void
open_output(const char *infile, const char *outfile)
{

 if (outfile == ((void*)0)) {
  fout = stdout;
  return;
 }

 if (infile != ((void*)0) && streq(outfile, infile)) {
  warnx("%s already exists. No output generated", infile);
  crash();
 }
 fout = fopen(outfile, "w");
 if (fout == ((void*)0)) {
  warn("unable to open %s", outfile);
  crash();
 }
 record_open(outfile);

 return;
}
