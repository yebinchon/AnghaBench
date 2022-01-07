
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int state; int socket; int flags; } ;


 int KASSERT (int ,char*) ;
 int SDP_NEEDFIN ;
 int SDP_WLOCK (struct sdp_sock*) ;
 int SDP_WLOCK_ASSERT (struct sdp_sock*) ;
 int SDP_WUNLOCK (struct sdp_sock*) ;



 int TCPS_FIN_WAIT_1 ;
 int TCPS_FIN_WAIT_2 ;
 int TCPS_LAST_ACK ;



 int sdp_2msl_wait (struct sdp_sock*) ;
 struct sdp_sock* sdp_closed (struct sdp_sock*) ;
 int sdp_destroy_cma (struct sdp_sock*) ;
 int soisdisconnected (int ) ;

__attribute__((used)) static void
sdp_usrclosed(struct sdp_sock *ssk)
{

 SDP_WLOCK_ASSERT(ssk);

 switch (ssk->state) {
 case 130:
  ssk->state = 133;
  SDP_WUNLOCK(ssk);
  sdp_destroy_cma(ssk);
  SDP_WLOCK(ssk);

 case 133:
  ssk = sdp_closed(ssk);




  KASSERT(ssk != ((void*)0),
      ("sdp_usrclosed: sdp_closed() returned NULL"));
  break;

 case 128:

 case 129:
  ssk->flags |= SDP_NEEDFIN;
  break;

 case 131:
  ssk->flags |= SDP_NEEDFIN;
  ssk->state = TCPS_FIN_WAIT_1;
  break;

 case 132:
  ssk->state = TCPS_LAST_ACK;
  break;
 }
 if (ssk->state >= TCPS_FIN_WAIT_2) {

  if (ssk->state == TCPS_FIN_WAIT_2)
   sdp_2msl_wait(ssk);
  else
   soisdisconnected(ssk->socket);
 }
}
