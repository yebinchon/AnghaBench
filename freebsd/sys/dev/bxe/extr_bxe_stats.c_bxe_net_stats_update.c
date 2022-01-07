
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bxe_softc {int num_queues; TYPE_2__* fp; int ifp; } ;
struct TYPE_3__ {int checksum_discard; } ;
struct TYPE_4__ {TYPE_1__ old_tclient; } ;


 int IFCOUNTER_IQDROPS ;
 int if_inc_counter (int ,int ,int ) ;
 int le32toh (int ) ;

__attribute__((used)) static void
bxe_net_stats_update(struct bxe_softc *sc)
{

    for (int i = 0; i < sc->num_queues; i++)
        if_inc_counter(sc->ifp, IFCOUNTER_IQDROPS,
     le32toh(sc->fp[i].old_tclient.checksum_discard));
}
