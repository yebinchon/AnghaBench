
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {scalar_t__ ext_free; int ext_buf; int ext_paddr; } ;
struct mbuf {int m_flags; int m_data; TYPE_2__ m_pkthdr; TYPE_1__ m_ext; } ;
struct ieee80211_rx_ampdu {int rxa_qframes; int rxa_wnd; struct mbuf** rxa_m; } ;
typedef scalar_t__ caddr_t ;


 scalar_t__ MCLBYTES ;
 int MEXTADD (struct mbuf*,void*,scalar_t__,int ,int *,int *) ;
 int MEXTREMOVE (struct mbuf*) ;
 int M_CLUSTER ;
 int M_EXT ;
 int M_EXT_RW ;
 int _MOWNERREF (struct mbuf*,int) ;
 int mclpool_cache ;
 int memcpy (scalar_t__,int,scalar_t__) ;
 scalar_t__ mwl_ext_free ;
 void* pool_cache_get_paddr (int *,int ,int *) ;

__attribute__((used)) static void
mwl_ampdu_rxdma_reclaim(struct ieee80211_rx_ampdu *rap)
{
}
