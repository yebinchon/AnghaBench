
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fnbuf ;


 int PATH_MAX ;
 int doclean ;
 long nfiles ;
 char* prefix ;
 int snprintf (char*,int,char*,char*,int,long) ;
 scalar_t__ sufflen ;
 int unlink (char*) ;

__attribute__((used)) static void
cleanup(void)
{
 char fnbuf[PATH_MAX];
 long i;

 if (!doclean)
  return;
 for (i = 0; i < nfiles; i++) {
  snprintf(fnbuf, sizeof(fnbuf), "%s%0*ld", prefix,
      (int)sufflen, i);
  unlink(fnbuf);
 }
}
