
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer_entry {int dummy; } ;


 int TAILQ_REMOVE (int *,struct printer_entry*,int ) ;
 int assert (int ) ;
 int free (struct printer_entry*) ;
 int link ;
 int printer_tbl ;

__attribute__((used)) static void
printer_entry_delete(struct printer_entry *entry)
{

 assert(entry != ((void*)0));
 if (entry == ((void*)0))
  return;

 TAILQ_REMOVE(&printer_tbl, entry, link);
 free(entry);
}
