
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fclose (int ) ;
 int infile ;
 int outfile ;
 int outfp ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 scalar_t__ strspn (char const*,char*) ;
 int warn (char*,int ,int ) ;
 int warnx (char*,int ,int ,char const*) ;

__attribute__((used)) static int
checkend(const char *ptr, const char *end, const char *msg)
{
 size_t n;

 n = strlen(end);
 if (strncmp(ptr, end, n) != 0 ||
     strspn(ptr + n, " \t\r\n") != strlen(ptr + n)) {
  warnx("%s: %s: %s", infile, outfile, msg);
  return (1);
 }
 if (fclose(outfp) != 0) {
  warn("%s: %s", infile, outfile);
  return (1);
 }
 return (0);
}
