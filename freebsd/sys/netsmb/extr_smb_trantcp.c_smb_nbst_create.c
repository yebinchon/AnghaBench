
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct smb_vc {struct nbpcb* vc_tdata; } ;
struct TYPE_2__ {int tv_sec; } ;
struct nbpcb {int nbp_rcvbuf; int nbp_sndbuf; struct smb_vc* nbp_vc; int nbp_state; TYPE_1__ nbp_timo; } ;


 int M_NBDATA ;
 int M_WAITOK ;
 int NBST_CLOSED ;
 int bzero (struct nbpcb*,int) ;
 struct nbpcb* malloc (int,int ,int ) ;
 int smb_tcprcvbuf ;
 int smb_tcpsndbuf ;

__attribute__((used)) static int
smb_nbst_create(struct smb_vc *vcp, struct thread *td)
{
 struct nbpcb *nbp;

 nbp = malloc(sizeof *nbp, M_NBDATA, M_WAITOK);
 bzero(nbp, sizeof *nbp);
 nbp->nbp_timo.tv_sec = 15;
 nbp->nbp_state = NBST_CLOSED;
 nbp->nbp_vc = vcp;
 nbp->nbp_sndbuf = smb_tcpsndbuf;
 nbp->nbp_rcvbuf = smb_tcprcvbuf;
 vcp->vc_tdata = nbp;
 return 0;
}
