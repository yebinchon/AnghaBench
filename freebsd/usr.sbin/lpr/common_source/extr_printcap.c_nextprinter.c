
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int dummy; } ;


 int cgetnext (char**,int ) ;
 scalar_t__ firstnextmap (int*) ;
 int free (char*) ;
 int free_printer (struct printer*) ;
 int getprintcap_int (char*,struct printer*) ;
 int printcapdb ;

int
nextprinter(struct printer *pp, int *error)
{
 int status;
 char *bp;

 free_printer(pp);
 status = cgetnext(&bp, printcapdb);
 if (firstnextmap(&status) == 0) {
  if (error)
   *error = status;
  return 0;
 }
 if (error)
  *error = status;
 status = getprintcap_int(bp, pp);
 free(bp);
 if (error && status)
  *error = status;
 return 1;
}
