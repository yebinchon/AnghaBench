
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uio {int dummy; } ;
struct socket {scalar_t__ so_pcb; } ;
struct sockaddr {scalar_t__ sa_len; } ;
struct sctp_sndrcvinfo {int dummy; } ;
struct sctp_inpcb {int dummy; } ;
struct sctp_extrcvinfo {int dummy; } ;
struct mbuf {int dummy; } ;
typedef int sockbuf ;


 int EINVAL ;
 int MSG_NOTIFICATION ;
 int M_NOWAIT ;
 int SCTP_FROM_SCTPUTIL ;
 int SCTP_LTRACE_ERR_RET (struct sctp_inpcb*,int *,int *,int ,int) ;
 int SCTP_PCB_FLAGS_RECVDATAIOEVNT ;
 int SCTP_PCB_FLAGS_RECVNXTINFO ;
 int SCTP_PCB_FLAGS_RECVRCVINFO ;
 int memset (struct sctp_extrcvinfo*,int ,int) ;
 struct mbuf* sctp_build_ctl_nchunk (struct sctp_inpcb*,struct sctp_sndrcvinfo*) ;
 scalar_t__ sctp_is_feature_off (struct sctp_inpcb*,int ) ;
 int sctp_sorecvmsg (struct socket*,struct uio*,struct mbuf**,struct sockaddr*,int,int*,struct sctp_sndrcvinfo*,int) ;
 struct sockaddr* sodupsockaddr (struct sockaddr*,int ) ;

int
sctp_soreceive(struct socket *so,
    struct sockaddr **psa,
    struct uio *uio,
    struct mbuf **mp0,
    struct mbuf **controlp,
    int *flagsp)
{
 int error, fromlen;
 uint8_t sockbuf[256];
 struct sockaddr *from;
 struct sctp_extrcvinfo sinfo;
 int filling_sinfo = 1;
 int flags;
 struct sctp_inpcb *inp;

 inp = (struct sctp_inpcb *)so->so_pcb;

 if (inp == ((void*)0)) {
  SCTP_LTRACE_ERR_RET(inp, ((void*)0), ((void*)0), SCTP_FROM_SCTPUTIL, EINVAL);
  return (EINVAL);
 }
 if ((sctp_is_feature_off(inp, SCTP_PCB_FLAGS_RECVDATAIOEVNT) &&
     sctp_is_feature_off(inp, SCTP_PCB_FLAGS_RECVRCVINFO) &&
     sctp_is_feature_off(inp, SCTP_PCB_FLAGS_RECVNXTINFO)) ||
     (controlp == ((void*)0))) {

  filling_sinfo = 0;
 }
 if (psa) {
  from = (struct sockaddr *)sockbuf;
  fromlen = sizeof(sockbuf);
  from->sa_len = 0;
 } else {
  from = ((void*)0);
  fromlen = 0;
 }

 if (filling_sinfo) {
  memset(&sinfo, 0, sizeof(struct sctp_extrcvinfo));
 }
 if (flagsp != ((void*)0)) {
  flags = *flagsp;
 } else {
  flags = 0;
 }
 error = sctp_sorecvmsg(so, uio, mp0, from, fromlen, &flags,
     (struct sctp_sndrcvinfo *)&sinfo, filling_sinfo);
 if (flagsp != ((void*)0)) {
  *flagsp = flags;
 }
 if (controlp != ((void*)0)) {

  if (filling_sinfo && ((flags & MSG_NOTIFICATION) == 0)) {
   *controlp = sctp_build_ctl_nchunk(inp,
       (struct sctp_sndrcvinfo *)&sinfo);
  } else {
   *controlp = ((void*)0);
  }
 }
 if (psa) {

  if (from && from->sa_len) {
   *psa = sodupsockaddr(from, M_NOWAIT);
  } else {
   *psa = ((void*)0);
  }
 }
 return (error);
}
