
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sioc_mif_req6 {size_t mifi; int obytes; int ibytes; int ocount; int icount; } ;
typedef size_t mifi_t ;
struct TYPE_2__ {int m6_bytes_out; int m6_bytes_in; int m6_pkt_out; int m6_pkt_in; } ;


 int EINVAL ;
 int MIF6_LOCK () ;
 int MIF6_UNLOCK () ;
 TYPE_1__* mif6table ;
 size_t nummifs ;

__attribute__((used)) static int
get_mif6_cnt(struct sioc_mif_req6 *req)
{
 mifi_t mifi;
 int ret;

 ret = 0;
 mifi = req->mifi;

 MIF6_LOCK();

 if (mifi >= nummifs) {
  ret = EINVAL;
 } else {
  req->icount = mif6table[mifi].m6_pkt_in;
  req->ocount = mif6table[mifi].m6_pkt_out;
  req->ibytes = mif6table[mifi].m6_bytes_in;
  req->obytes = mif6table[mifi].m6_bytes_out;
 }

 MIF6_UNLOCK();

 return (ret);
}
