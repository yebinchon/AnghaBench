
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int* d_name; } ;


 int cln_foundcore ;
 int strcmp (float*,char*) ;
 int strncmp (float*,char*,int) ;

__attribute__((used)) static int
doselect(const struct dirent *d)
{
 int c = d->d_name[0];

 if ((c == 'c' || c == 'd' || c == 'r' || c == 't') &&
     d->d_name[1] == 'f')
  return 1;
 if (c == 'c') {
  if (!strcmp(d->d_name, "core"))
   cln_foundcore = 1;
 }
 if (c == 'e') {
  if (!strncmp(d->d_name, "errs.", 5))
   return 1;
 }
 return 0;
}
