
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct mbuf {int dummy; } ;
typedef TYPE_2__* iflib_fl_t ;
typedef TYPE_3__* iflib_dma_info_t ;
typedef struct mbuf* caddr_t ;
typedef int bus_dmamap_t ;
struct TYPE_7__ {int idi_size; int idi_vaddr; } ;
struct TYPE_5__ {struct mbuf** ifsd_m; struct mbuf** ifsd_cl; int * ifsd_map; } ;
struct TYPE_6__ {size_t ifl_size; scalar_t__ ifl_fragidx; scalar_t__ ifl_gen; scalar_t__ ifl_pidx; scalar_t__ ifl_cidx; scalar_t__ ifl_credits; TYPE_1__ ifl_sds; int ifl_cl_dequeued; int ifl_m_dequeued; int ifl_zone; int ifl_buf_tag; TYPE_3__* ifl_ifdi; } ;


 int BUS_DMASYNC_POSTREAD ;
 int MPASS (int ) ;
 int MT_DATA ;
 int M_NOWAIT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (int ,int ) ;
 int m_init (struct mbuf*,int ,int ,int ) ;
 int uma_zfree (int ,struct mbuf*) ;
 int zone_mbuf ;

__attribute__((used)) static void
iflib_fl_bufs_free(iflib_fl_t fl)
{
 iflib_dma_info_t idi = fl->ifl_ifdi;
 bus_dmamap_t sd_map;
 uint32_t i;

 for (i = 0; i < fl->ifl_size; i++) {
  struct mbuf **sd_m = &fl->ifl_sds.ifsd_m[i];
  caddr_t *sd_cl = &fl->ifl_sds.ifsd_cl[i];

  if (*sd_cl != ((void*)0)) {
   sd_map = fl->ifl_sds.ifsd_map[i];
   bus_dmamap_sync(fl->ifl_buf_tag, sd_map,
       BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(fl->ifl_buf_tag, sd_map);
   if (*sd_cl != ((void*)0))
    uma_zfree(fl->ifl_zone, *sd_cl);
   if (*sd_m != ((void*)0)) {
    m_init(*sd_m, M_NOWAIT, MT_DATA, 0);
    uma_zfree(zone_mbuf, *sd_m);
   }
  } else {
   MPASS(*sd_cl == ((void*)0));
   MPASS(*sd_m == ((void*)0));
  }




  *sd_cl = ((void*)0);
  *sd_m = ((void*)0);
 }
 fl->ifl_credits = fl->ifl_cidx = fl->ifl_pidx = fl->ifl_gen = fl->ifl_fragidx = 0;
 bzero(idi->idi_vaddr, idi->idi_size);
}
