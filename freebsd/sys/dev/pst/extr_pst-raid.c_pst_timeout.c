
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pst_request {int mfa; TYPE_1__* psc; TYPE_4__* bp; } ;
struct TYPE_7__ {int bio_cmd; } ;
struct TYPE_6__ {int outstanding; int mtx; } ;
struct TYPE_5__ {TYPE_2__* iop; } ;


 int EIO ;
 int MA_OWNED ;
 int biofinish (TYPE_4__*,int *,int ) ;
 int iop_free_mfa (TYPE_2__*,int) ;
 int iop_get_mfa (TYPE_2__*) ;
 int mtx_assert (int *,int ) ;
 int printf (char*,...) ;
 scalar_t__ pst_rw (struct pst_request*) ;

__attribute__((used)) static void
pst_timeout(void *arg)
{
    struct pst_request *request;

    request = arg;
    printf("pst: timeout mfa=0x%08x cmd=0x%02x\n",
    request->mfa, request->bp->bio_cmd);
    mtx_assert(&request->psc->iop->mtx, MA_OWNED);
    iop_free_mfa(request->psc->iop, request->mfa);
    if ((request->mfa = iop_get_mfa(request->psc->iop)) == 0xffffffff) {
 printf("pst: timeout no mfa possible\n");
 biofinish(request->bp, ((void*)0), EIO);
 request->psc->iop->outstanding--;
 return;
    }
    if (pst_rw(request)) {
 iop_free_mfa(request->psc->iop, request->mfa);
 biofinish(request->bp, ((void*)0), EIO);
 request->psc->iop->outstanding--;
    }
}
