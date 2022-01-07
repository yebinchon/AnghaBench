
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef int int32_t ;
typedef int FILE ;


 int input_new (int *,int *,char const*) ;
 int ** paths ;
 int * tryopen (int *,char const*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int32_t
input_fopen(const char *fname)
{
 FILE *fp;
 u_int p;

 if (fname[0] == '/' || fname[0] == '.' || fname[0] == '~') {
  if ((fp = tryopen(((void*)0), fname)) != ((void*)0)) {
   input_new(fp, ((void*)0), fname);
   return (0);
  }

 } else {

  for (p = 0; paths[p] != ((void*)0); p++)
   if ((fp = tryopen(paths[p], fname)) != ((void*)0)) {
    input_new(fp, paths[p], fname);
    return (0);
   }
 }

 warnx("cannot open '%s'", fname);
 return (-1);
}
