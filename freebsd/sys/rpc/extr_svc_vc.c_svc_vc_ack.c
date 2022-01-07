
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int bool_t ;
struct TYPE_5__ {TYPE_1__* xp_socket; int xp_snt_cnt; } ;
struct TYPE_4__ {int so_snd; } ;
typedef TYPE_2__ SVCXPRT ;


 int TRUE ;
 int atomic_load_acq_32 (int *) ;
 scalar_t__ sbused (int *) ;

__attribute__((used)) static bool_t
svc_vc_ack(SVCXPRT *xprt, uint32_t *ack)
{

 *ack = atomic_load_acq_32(&xprt->xp_snt_cnt);
 *ack -= sbused(&xprt->xp_socket->so_snd);
 return (TRUE);
}
