
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int mask; TYPE_5__* info; int dmat; } ;
struct TYPE_10__ {int mask; TYPE_3__* info; int dmat; } ;
struct TYPE_8__ {int mask; TYPE_1__* info; int dmat; } ;
struct mxge_slice_state {TYPE_6__ tx; TYPE_4__ rx_small; TYPE_2__ rx_big; int lc; } ;
struct TYPE_11__ {int * m; int map; scalar_t__ flag; } ;
struct TYPE_9__ {int * m; int map; } ;
struct TYPE_7__ {int * m; int map; } ;


 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;
 int tcp_lro_free (int *) ;

__attribute__((used)) static void
mxge_free_slice_mbufs(struct mxge_slice_state *ss)
{
 int i;




 for (i = 0; i <= ss->rx_big.mask; i++) {
  if (ss->rx_big.info[i].m == ((void*)0))
   continue;
  bus_dmamap_unload(ss->rx_big.dmat,
      ss->rx_big.info[i].map);
  m_freem(ss->rx_big.info[i].m);
  ss->rx_big.info[i].m = ((void*)0);
 }

 for (i = 0; i <= ss->rx_small.mask; i++) {
  if (ss->rx_small.info[i].m == ((void*)0))
   continue;
  bus_dmamap_unload(ss->rx_small.dmat,
      ss->rx_small.info[i].map);
  m_freem(ss->rx_small.info[i].m);
  ss->rx_small.info[i].m = ((void*)0);
 }


 if (ss->tx.info == ((void*)0))
  return;

 for (i = 0; i <= ss->tx.mask; i++) {
  ss->tx.info[i].flag = 0;
  if (ss->tx.info[i].m == ((void*)0))
   continue;
  bus_dmamap_unload(ss->tx.dmat,
      ss->tx.info[i].map);
  m_freem(ss->tx.info[i].m);
  ss->tx.info[i].m = ((void*)0);
 }
}
