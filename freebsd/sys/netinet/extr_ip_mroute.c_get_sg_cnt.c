
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sioc_sg_req {int pktcnt; int bytecnt; int wrong_if; int grp; int src; } ;
struct mfc {int mfc_pkt_cnt; int mfc_byte_cnt; int mfc_wrong_if; } ;


 int EADDRNOTAVAIL ;
 int MFC_LOCK () ;
 int MFC_UNLOCK () ;
 struct mfc* mfc_find (int *,int *) ;

__attribute__((used)) static int
get_sg_cnt(struct sioc_sg_req *req)
{
    struct mfc *rt;

    MFC_LOCK();
    rt = mfc_find(&req->src, &req->grp);
    if (rt == ((void*)0)) {
 MFC_UNLOCK();
 req->pktcnt = req->bytecnt = req->wrong_if = 0xffffffff;
 return EADDRNOTAVAIL;
    }
    req->pktcnt = rt->mfc_pkt_cnt;
    req->bytecnt = rt->mfc_byte_cnt;
    req->wrong_if = rt->mfc_wrong_if;
    MFC_UNLOCK();
    return 0;
}
