
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef scalar_t__ u_int8_t ;
struct timeval {int dummy; } ;
struct thread {int dummy; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct nbpcb {int nbp_vc; int nbp_state; int nbp_flags; int nbp_tso; int nbp_timo; int nbp_laddr; int nbp_paddr; } ;
struct mdchain {int mb_top; } ;
struct mbuf {int dummy; } ;
struct mbchain {int mb_top; } ;
typedef int caddr_t ;


 int ECONNABORTED ;
 int ETIMEDOUT ;
 int EWOULDBLOCK ;
 int MB_MSYSTEM ;
 int M_NBDATA ;
 int M_WAITOK ;
 int NBDEBUG (char*,...) ;
 int NBF_CONNECTED ;
 int NBST_RETARGET ;
 int NBST_RQSENT ;
 int NBST_SESSION ;
 scalar_t__ NB_SSN_POSRESP ;
 int NB_SSN_REQUEST ;
 scalar_t__ NB_SSN_RTGRESP ;
 int POLLIN ;
 int TIMESPEC_TO_TIMEVAL (struct timeval*,int *) ;
 int free (struct mdchain*,int ) ;
 struct mdchain* malloc (int,int ,int ) ;
 int mb_detach (struct mdchain*) ;
 int mb_done (struct mdchain*) ;
 scalar_t__ mb_fixhdr (struct mdchain*) ;
 int mb_init (struct mdchain*) ;
 int mb_put_uint32le (struct mdchain*,int ) ;
 int md_done (struct mdchain*) ;
 int md_get_mem (struct mdchain*,int ,int,int ) ;
 int md_get_uint16 (struct mdchain*,int *) ;
 int md_initm (struct mdchain*,struct mbuf*) ;
 int nb_connect_in (struct nbpcb*,struct sockaddr_in*,struct thread*) ;
 int nb_put_name (struct mdchain*,int ) ;
 int nb_sethdr (int ,int ,scalar_t__) ;
 int nb_sosend (int ,int ,int ,struct thread*) ;
 int nbssn_recv (struct nbpcb*,struct mbuf**,int*,scalar_t__*,struct thread*) ;
 int selsocket (int ,int ,struct timeval*,struct thread*) ;
 int smb_nbst_disconnect (int ,struct thread*) ;

__attribute__((used)) static int
nbssn_rq_request(struct nbpcb *nbp, struct thread *td)
{
 struct mbchain *mbp;
 struct mdchain *mdp;
 struct mbuf *m0;
 struct timeval tv;
 struct sockaddr_in sin;
 u_short port;
 u_int8_t rpcode;
 int error, rplen;

 mbp = malloc(sizeof(struct mbchain), M_NBDATA, M_WAITOK);
 mdp = malloc(sizeof(struct mbchain), M_NBDATA, M_WAITOK);
 error = mb_init(mbp);
 if (error) {
  free(mbp, M_NBDATA);
  free(mdp, M_NBDATA);
  return error;
 }
 mb_put_uint32le(mbp, 0);
 nb_put_name(mbp, nbp->nbp_paddr);
 nb_put_name(mbp, nbp->nbp_laddr);
 nb_sethdr(mbp->mb_top, NB_SSN_REQUEST, mb_fixhdr(mbp) - 4);
 error = nb_sosend(nbp->nbp_tso, mbp->mb_top, 0, td);
 if (!error) {
  nbp->nbp_state = NBST_RQSENT;
 }
 mb_detach(mbp);
 mb_done(mbp);
 free(mbp, M_NBDATA);
 if (error) {
  free(mdp, M_NBDATA);
  return error;
 }
 TIMESPEC_TO_TIMEVAL(&tv, &nbp->nbp_timo);
 error = selsocket(nbp->nbp_tso, POLLIN, &tv, td);
 if (error == EWOULDBLOCK) {
  NBDEBUG("initial request timeout\n");
  free(mdp, M_NBDATA);
  return ETIMEDOUT;
 }
 if (error) {
  free(mdp, M_NBDATA);
  return error;
 }
 error = nbssn_recv(nbp, &m0, &rplen, &rpcode, td);
 if (error) {
  NBDEBUG("recv() error %d\n", error);
  free(mdp, M_NBDATA);
  return error;
 }



 if (m0)
  md_initm(mdp, m0);
 error = 0;
 do {
  if (rpcode == NB_SSN_POSRESP) {
   nbp->nbp_state = NBST_SESSION;
   nbp->nbp_flags |= NBF_CONNECTED;
   break;
  }
  if (rpcode != NB_SSN_RTGRESP) {
   error = ECONNABORTED;
   break;
  }
  if (rplen != 6) {
   error = ECONNABORTED;
   break;
  }
  md_get_mem(mdp, (caddr_t)&sin.sin_addr, 4, MB_MSYSTEM);
  md_get_uint16(mdp, &port);
  sin.sin_port = port;
  nbp->nbp_state = NBST_RETARGET;
  smb_nbst_disconnect(nbp->nbp_vc, td);
  error = nb_connect_in(nbp, &sin, td);
  if (!error)
   error = nbssn_rq_request(nbp, td);
  if (error) {
   smb_nbst_disconnect(nbp->nbp_vc, td);
   break;
  }
 } while(0);
 if (m0)
  md_done(mdp);
 free(mdp, M_NBDATA);
 return error;
}
