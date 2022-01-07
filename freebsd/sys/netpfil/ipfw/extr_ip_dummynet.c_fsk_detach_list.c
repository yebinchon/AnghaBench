
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_fsk_head {int dummy; } ;
struct dn_fsk {int dummy; } ;


 int ND (char*,int,...) ;
 struct dn_fsk* SLIST_FIRST (struct dn_fsk_head*) ;
 int SLIST_REMOVE_HEAD (struct dn_fsk_head*,int ) ;
 int fsk_detach (struct dn_fsk*,int) ;
 int sch_chain ;

__attribute__((used)) static void
fsk_detach_list(struct dn_fsk_head *h, int flags)
{
 struct dn_fsk *fs;
 int n = 0;

 ND("head %p flags %x", h, flags);
 while ((fs = SLIST_FIRST(h))) {
  SLIST_REMOVE_HEAD(h, sch_chain);
  n++;
  fsk_detach(fs, flags);
 }
 ND("done %d flowsets", n);
}
