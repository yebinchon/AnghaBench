
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aggent {int dummy; } ;
typedef int FILE ;


 int LNBUFF ;
 int SEEK_CUR ;
 int * fgets (char*,int,int *) ;
 int fseek (int *,int,int ) ;
 scalar_t__ newfunction (char*) ;
 int printblock (int *,struct aggent*) ;
 int strlen (char*) ;

__attribute__((used)) static int
general_printc(FILE *fp, struct aggent *agg)
{
 char buffer[LNBUFF];

 while (fgets(buffer, LNBUFF, fp) != ((void*)0)) {
  fseek(fp, strlen(buffer) * -1, SEEK_CUR);
  if (newfunction(buffer) != 0)
   break;
  if (printblock(fp, agg) == -1)
   return (-1);
 }
 return (0);
}
