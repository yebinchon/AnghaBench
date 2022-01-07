
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct entry {scalar_t__ en_nsamples; } ;
struct aggent {float ag_nsamples; } ;
typedef int FILE ;


 int LNBUFF ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int * fgets (char*,int,int *) ;
 int fseek (int *,int,int ) ;
 long ftell (int *) ;
 struct entry* general_findent (uintptr_t) ;
 scalar_t__ isasminline (char*) ;
 int newfunction (char*) ;
 int printf (char*,...) ;
 int sscanf (char*,char*,void**) ;
 int strlen (char*) ;

__attribute__((used)) static int
printblock(FILE *fp, struct aggent *agg)
{
 char buffer[LNBUFF];
 long lstart;
 struct entry *obj;
 u_int tnsamples;
 int done, nbytes, sentinel;
 void *ptr;





 lstart = ftell(fp);
 sentinel = 0;
 for (;;) {
  if (fgets(buffer, LNBUFF, fp) == ((void*)0))
   return (0);
  if (isasminline(buffer) != 0)
   break;
  sentinel = 1;
  nbytes = newfunction(buffer);
  if (nbytes != 0) {
   if (fseek(fp, nbytes * -1, SEEK_CUR) == -1)
    return (-1);
   return (0);
  }
 }






 tnsamples = 0;
 do {
  if (sentinel == 0)
   return (-1);
  if (sscanf(buffer, " %p:", &ptr) != 1)
   return (-1);
  obj = general_findent((uintptr_t)ptr);
  if (obj != ((void*)0))
   tnsamples += obj->en_nsamples;
 } while (fgets(buffer, LNBUFF, fp) != ((void*)0) && isasminline(buffer) != 0);


 if (fseek(fp, lstart, SEEK_SET) == -1)
  return (-1);


 done = 0;
 while (fgets(buffer, LNBUFF, fp) != ((void*)0) && isasminline(buffer) == 0) {
  if (tnsamples == 0 || done != 0)
   printf("\t| %s", buffer);
  else {
   done = 1;
   printf("%.2f%%\t| %s",
       (float)tnsamples * 100 / agg->ag_nsamples, buffer);
  }
 }





 for (;;) {
  if (fgets(buffer, LNBUFF, fp) == ((void*)0))
   return (0);
  if (isasminline(buffer) == 0)
   break;
  nbytes = newfunction(buffer);
  if (nbytes != 0) {
   if (fseek(fp, nbytes * -1, SEEK_CUR) == -1)
    return (-1);
   return (0);
  }
 }
 if (fseek(fp, strlen(buffer) * -1, SEEK_CUR) == -1)
  return (-1);
 return (0);
}
