
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct network_entry {int dummy; } ;


 int TAILQ_REMOVE (int *,struct network_entry*,int ) ;
 int free (struct network_entry*) ;
 int link ;
 int network_tbl ;

__attribute__((used)) static void
network_entry_delete(struct network_entry* entry)
{

 TAILQ_REMOVE(&network_tbl, entry, link);
 free(entry);
}
