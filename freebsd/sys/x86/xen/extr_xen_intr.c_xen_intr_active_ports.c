
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef size_t u_int ;
struct xen_intr_pcpu_data {int* evtchn_enabled; } ;
struct TYPE_3__ {int* evtchn_pending; int* evtchn_mask; } ;
typedef TYPE_1__ shared_info_t ;


 int CTASSERT (int) ;

__attribute__((used)) static inline u_long
xen_intr_active_ports(struct xen_intr_pcpu_data *pcpu, shared_info_t *sh,
    u_int idx)
{

 CTASSERT(sizeof(sh->evtchn_mask[0]) == sizeof(sh->evtchn_pending[0]));
 CTASSERT(sizeof(sh->evtchn_mask[0]) == sizeof(pcpu->evtchn_enabled[0]));
 CTASSERT(sizeof(sh->evtchn_mask) == sizeof(sh->evtchn_pending));
 CTASSERT(sizeof(sh->evtchn_mask) == sizeof(pcpu->evtchn_enabled));
 return (sh->evtchn_pending[idx]
       & ~sh->evtchn_mask[idx]
       & pcpu->evtchn_enabled[idx]);
}
