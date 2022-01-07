
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct network_entry {int dummy; } ;


 struct network_entry* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct network_entry*,int ) ;
 int free (struct network_entry*) ;
 int link ;
 int network_tbl ;

void
fini_network_tbl(void)
{
 struct network_entry *n1;

 while ((n1 = TAILQ_FIRST(&network_tbl)) != ((void*)0)) {
  TAILQ_REMOVE(&network_tbl, n1, link);
  free(n1);
 }
}
