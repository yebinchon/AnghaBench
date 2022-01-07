
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer_entry {int dummy; } ;


 struct printer_entry* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct printer_entry*,int ) ;
 int free (struct printer_entry*) ;
 int link ;
 int printer_tbl ;

void
fini_printer_tbl(void)
{
 struct printer_entry *n1;

 while ((n1 = TAILQ_FIRST(&printer_tbl)) != ((void*)0)) {
  TAILQ_REMOVE(&printer_tbl, n1, link);
  free(n1);
 }
}
