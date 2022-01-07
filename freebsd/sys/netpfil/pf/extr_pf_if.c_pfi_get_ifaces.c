
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif {scalar_t__ pfik_tzero; } ;
struct epoch_tracker {int dummy; } ;


 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 struct pfi_kif* RB_MIN (int ,int *) ;
 struct pfi_kif* RB_NEXT (int ,int *,struct pfi_kif*) ;
 int V_pfi_ifs ;
 int bcopy (struct pfi_kif*,int ,int) ;
 int pfi_ifhead ;
 scalar_t__ pfi_skip_if (char const*,struct pfi_kif*) ;
 scalar_t__ time_second ;

void
pfi_get_ifaces(const char *name, struct pfi_kif *buf, int *size)
{
 struct epoch_tracker et;
 struct pfi_kif *p, *nextp;
 int n = 0;

 NET_EPOCH_ENTER(et);
 for (p = RB_MIN(pfi_ifhead, &V_pfi_ifs); p; p = nextp) {
  nextp = RB_NEXT(pfi_ifhead, &V_pfi_ifs, p);
  if (pfi_skip_if(name, p))
   continue;
  if (*size <= n++)
   break;
  if (!p->pfik_tzero)
   p->pfik_tzero = time_second;
  bcopy(p, buf++, sizeof(*buf));
  nextp = RB_NEXT(pfi_ifhead, &V_pfi_ifs, p);
 }
 *size = n;
 NET_EPOCH_EXIT(et);
}
