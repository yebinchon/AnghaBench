
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int dummy; } ;
struct TYPE_2__ {struct ifnet* ifp; } ;
struct iavf_sc {int queues_enabled; TYPE_1__ vsi; } ;


 int IAVF_FLAG_AQ_DISABLE_QUEUES ;
 scalar_t__ atomic_load_acq_32 (int *) ;
 int iavf_disable_intr (TYPE_1__*) ;
 int iavf_send_vc_msg_sleep (struct iavf_sc*,int ) ;

__attribute__((used)) static void
iavf_stop(struct iavf_sc *sc)
{
 struct ifnet *ifp;

 ifp = sc->vsi.ifp;

 iavf_disable_intr(&sc->vsi);

 if (atomic_load_acq_32(&sc->queues_enabled))
  iavf_send_vc_msg_sleep(sc, IAVF_FLAG_AQ_DISABLE_QUEUES);
}
