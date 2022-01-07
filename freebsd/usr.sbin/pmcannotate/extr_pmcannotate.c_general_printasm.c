
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {scalar_t__ en_nsamples; } ;
struct aggent {float ag_nsamples; } ;
typedef int FILE ;


 int LNBUFF ;
 int SEEK_CUR ;
 int * fgets (char*,int,int *) ;
 int fseek (int *,int,int ) ;
 struct entry* general_findent (uintptr_t) ;
 int isasminline (char*) ;
 int newfunction (char*) ;
 int printf (char*,...) ;
 int sscanf (char*,char*,void**) ;

__attribute__((used)) static void
general_printasm(FILE *fp, struct aggent *agg)
{
 char buffer[LNBUFF];
 struct entry *obj;
 int nbytes;
 void *ptr;

 while (fgets(buffer, LNBUFF, fp) != ((void*)0)) {
  if ((nbytes = newfunction(buffer)) != 0) {
   fseek(fp, nbytes * -1, SEEK_CUR);
   break;
  }
  if (!isasminline(buffer))
   continue;
  if (sscanf(buffer, " %p:", &ptr) != 1)
   continue;
  obj = general_findent((uintptr_t)ptr);
  if (obj == ((void*)0))
   printf("\t| %s", buffer);
  else
   printf("%.2f%%\t| %s",
       (float)obj->en_nsamples * 100 / agg->ag_nsamples,
       buffer);
 }
}
