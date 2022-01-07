
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tcphdr {int dummy; } ;
struct secasvar {int dummy; } ;
struct secasindex {scalar_t__ reqid; int mode; int proto; int dst; int src; } ;
struct mbuf {int dummy; } ;


 int EACCES ;
 int IPPROTO_TCP ;
 int IPSEC_MODE_TCPMD5 ;
 int KMOD_TCPSTAT_INC (int ) ;
 int TCP_SIGLEN ;
 scalar_t__ bcmp (int *,char*,int) ;
 struct secasvar* key_allocsa_tcpmd5 (struct secasindex*) ;
 int key_freesav (struct secasvar**) ;
 int setsockaddrs (struct mbuf*,int *,int *) ;
 int tcp_fields_to_host (struct tcphdr*) ;
 int tcp_fields_to_net (struct tcphdr*) ;
 int tcp_signature_compute (struct mbuf*,struct tcphdr*,struct secasvar*,char*) ;
 int tcps_sig_err_buildsig ;
 int tcps_sig_rcvbadsig ;
 int tcps_sig_rcvgoodsig ;

__attribute__((used)) static int
tcp_ipsec_input(struct mbuf *m, struct tcphdr *th, u_char *buf)
{
 char tmpdigest[TCP_SIGLEN];
 struct secasindex saidx;
 struct secasvar *sav;

 setsockaddrs(m, &saidx.src, &saidx.dst);
 saidx.proto = IPPROTO_TCP;
 saidx.mode = IPSEC_MODE_TCPMD5;
 saidx.reqid = 0;
 sav = key_allocsa_tcpmd5(&saidx);
 if (sav == ((void*)0)) {
  KMOD_TCPSTAT_INC(tcps_sig_err_buildsig);
  return (EACCES);
 }




 tcp_fields_to_net(th);
 tcp_signature_compute(m, th, sav, tmpdigest);
 tcp_fields_to_host(th);
 key_freesav(&sav);
 if (bcmp(buf, tmpdigest, TCP_SIGLEN) != 0) {
  KMOD_TCPSTAT_INC(tcps_sig_rcvbadsig);
  return (EACCES);
 }
 KMOD_TCPSTAT_INC(tcps_sig_rcvgoodsig);
 return (0);
}
