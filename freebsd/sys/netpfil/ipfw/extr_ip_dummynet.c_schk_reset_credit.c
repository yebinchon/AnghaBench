
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct dn_schk {scalar_t__ siht; TYPE_1__ sch; } ;


 int DN_HAVE_MASK ;
 int dn_ht_scan (scalar_t__,int (*) (scalar_t__,int *),int *) ;
 int si_reset_credit (scalar_t__,int *) ;

__attribute__((used)) static void
schk_reset_credit(struct dn_schk *s)
{
 if (s->sch.flags & DN_HAVE_MASK)
  dn_ht_scan(s->siht, si_reset_credit, ((void*)0));
 else if (s->siht)
  si_reset_credit(s->siht, ((void*)0));
}
