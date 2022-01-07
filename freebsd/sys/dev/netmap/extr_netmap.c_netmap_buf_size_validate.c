
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_adapter {unsigned int rx_buf_maxsize; int na_flags; TYPE_1__* ifp; } ;
struct TYPE_2__ {unsigned int if_xname; } ;


 int EINVAL ;
 int NAF_MOREFRAG ;
 unsigned int NETMAP_BUF_SIZE (struct netmap_adapter const*) ;
 int nm_prerr (char*,unsigned int,unsigned int) ;
 int nm_prinf (char*,unsigned int,unsigned int,unsigned int) ;

int
netmap_buf_size_validate(const struct netmap_adapter *na, unsigned mtu) {
 unsigned nbs = NETMAP_BUF_SIZE(na);

 if (mtu <= na->rx_buf_maxsize) {




  if (nbs < mtu) {
   nm_prerr("error: netmap buf size (%u) "
     "< device MTU (%u)", nbs, mtu);
   return EINVAL;
  }
 } else {





  if (!(na->na_flags & NAF_MOREFRAG)) {
   nm_prerr("error: large MTU (%d) needed "
     "but %s does not support "
     "NS_MOREFRAG", mtu,
     na->ifp->if_xname);
   return EINVAL;
  } else if (nbs < na->rx_buf_maxsize) {
   nm_prerr("error: using NS_MOREFRAG on "
     "%s requires netmap buf size "
     ">= %u", na->ifp->if_xname,
     na->rx_buf_maxsize);
   return EINVAL;
  } else {
   nm_prinf("info: netmap application on "
     "%s needs to support "
     "NS_MOREFRAG "
     "(MTU=%u,netmap_buf_size=%u)",
     na->ifp->if_xname, mtu, nbs);
  }
 }
 return 0;
}
