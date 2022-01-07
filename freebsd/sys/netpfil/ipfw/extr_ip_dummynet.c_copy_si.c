
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct dn_schk {scalar_t__ siht; TYPE_1__ sch; } ;
struct copy_args {int dummy; } ;


 int DN_HAVE_MASK ;
 int copy_si_cb (scalar_t__,struct copy_args*) ;
 int dn_ht_scan (scalar_t__,int (*) (scalar_t__,struct copy_args*),struct copy_args*) ;

__attribute__((used)) static int
copy_si(struct copy_args *a, struct dn_schk *s, int flags)
{
 if (s->sch.flags & DN_HAVE_MASK)
  dn_ht_scan(s->siht, copy_si_cb, a);
 else if (s->siht)
  copy_si_cb(s->siht, a);
 return 0;
}
