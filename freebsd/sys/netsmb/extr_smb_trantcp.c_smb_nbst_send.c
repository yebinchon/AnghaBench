
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct smb_vc {struct nbpcb* vc_tdata; } ;
struct nbpcb {scalar_t__ nbp_state; int nbp_tso; } ;
struct mbuf {int dummy; } ;


 int ENOTCONN ;
 int M_PREPEND (struct mbuf*,int,int ) ;
 int M_WAITOK ;
 scalar_t__ NBST_SESSION ;
 int NB_SSN_MESSAGE ;
 scalar_t__ m_fixhdr (struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 int nb_sethdr (struct mbuf*,int ,scalar_t__) ;
 int nb_sosend (int ,struct mbuf*,int ,struct thread*) ;

__attribute__((used)) static int
smb_nbst_send(struct smb_vc *vcp, struct mbuf *m0, struct thread *td)
{
 struct nbpcb *nbp = vcp->vc_tdata;
 int error;

 if (nbp->nbp_state != NBST_SESSION) {
  error = ENOTCONN;
  goto abort;
 }
 M_PREPEND(m0, 4, M_WAITOK);
 nb_sethdr(m0, NB_SSN_MESSAGE, m_fixhdr(m0) - 4);
 error = nb_sosend(nbp->nbp_tso, m0, 0, td);
 return error;
abort:
 if (m0)
  m_freem(m0);
 return error;
}
