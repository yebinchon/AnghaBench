
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int err (int,char*) ;
 char* fgetln (int *,size_t*) ;
 size_t fwrite (char*,int,size_t,int ) ;
 int stdout ;

__attribute__((used)) static void
head(FILE *fp, int cnt)
{
 char *cp;
 size_t error, readlen;

 while (cnt != 0 && (cp = fgetln(fp, &readlen)) != ((void*)0)) {
  error = fwrite(cp, sizeof(char), readlen, stdout);
  if (error != readlen)
   err(1, "stdout");
  cnt--;
 }
}
