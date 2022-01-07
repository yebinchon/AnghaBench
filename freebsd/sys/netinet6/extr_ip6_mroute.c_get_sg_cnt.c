
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sin6_addr; } ;
struct TYPE_3__ {int sin6_addr; } ;
struct sioc_sg_req6 {int wrong_if; int bytecnt; int pktcnt; TYPE_2__ grp; TYPE_1__ src; } ;
struct mf6c {int mf6c_wrong_if; int mf6c_byte_cnt; int mf6c_pkt_cnt; } ;


 int ESRCH ;
 int MF6CFIND (int ,int ,struct mf6c*) ;
 int MFC6_LOCK () ;
 int MFC6_UNLOCK () ;

__attribute__((used)) static int
get_sg_cnt(struct sioc_sg_req6 *req)
{
 struct mf6c *rt;
 int ret;

 ret = 0;

 MFC6_LOCK();

 MF6CFIND(req->src.sin6_addr, req->grp.sin6_addr, rt);
 if (rt == ((void*)0)) {
  ret = ESRCH;
 } else {
  req->pktcnt = rt->mf6c_pkt_cnt;
  req->bytecnt = rt->mf6c_byte_cnt;
  req->wrong_if = rt->mf6c_wrong_if;
 }

 MFC6_UNLOCK();

 return (ret);
}
