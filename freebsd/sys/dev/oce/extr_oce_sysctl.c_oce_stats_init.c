
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct mbx_get_pport_stats {int dummy; } ;
struct mbx_get_nic_stats_v2 {int dummy; } ;
struct mbx_get_nic_stats_v1 {int dummy; } ;
struct mbx_get_nic_stats_v0 {int dummy; } ;
struct TYPE_8__ {int stats_mem; } ;
typedef TYPE_1__* POCE_SOFTC ;


 scalar_t__ IS_BE2 (TYPE_1__*) ;
 scalar_t__ IS_BE3 (TYPE_1__*) ;
 scalar_t__ IS_SH (TYPE_1__*) ;
 scalar_t__ IS_XE201 (TYPE_1__*) ;
 int oce_dma_alloc (TYPE_1__*,int,int *,int ) ;

int
oce_stats_init(POCE_SOFTC sc)
{
 int rc = 0, sz = 0;


        if( IS_BE2(sc) )
  sz = sizeof(struct mbx_get_nic_stats_v0);
        else if( IS_BE3(sc) )
  sz = sizeof(struct mbx_get_nic_stats_v1);
        else if( IS_SH(sc))
  sz = sizeof(struct mbx_get_nic_stats_v2);
        else if( IS_XE201(sc) )
  sz = sizeof(struct mbx_get_pport_stats);

 rc = oce_dma_alloc(sc, sz, &sc->stats_mem, 0);

 return rc;
}
