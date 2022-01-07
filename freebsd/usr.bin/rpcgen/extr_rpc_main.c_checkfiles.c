
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int crash () ;
 scalar_t__ stat (char const*,struct stat*) ;
 int warn (char*,char const*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static void
checkfiles(const char *infile, const char *outfile)
{

 struct stat buf;

 if (infile)
  if (stat(infile, &buf) < 0)
  {
   warn("%s", infile);
   crash();
  }
 if (outfile) {
  if (stat(outfile, &buf) < 0)
   return;
  else {
   warnx("file '%s' already exists and may be overwritten", outfile);
   crash();
  }
 }
}
