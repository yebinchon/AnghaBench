
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int dummy; } ;


 int cgetent (char**,int ,char const*) ;
 int free (char*) ;
 int getprintcap_int (char*,struct printer*) ;
 int printcapdb ;

int
getprintcap(const char *printer, struct printer *pp)
{
 int status;
 char *bp;

 if ((status = cgetent(&bp, printcapdb, printer)) < 0)
  return status;
 status = getprintcap_int(bp, pp);
 free(bp);
 return status;
}
