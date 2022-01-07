
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
 struct secasvar* key_allocsa_tcpmd5 (struct secasindex*) ;
 int key_freesav (struct secasvar**) ;
 int setsockaddrs (struct mbuf*,int *,int *) ;
 int tcp_signature_compute (struct mbuf*,struct tcphdr*,struct secasvar*,int *) ;
 int tcps_sig_err_buildsig ;

__attribute__((used)) static int
tcp_ipsec_output(struct mbuf *m, struct tcphdr *th, u_char *buf)
{
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
 tcp_signature_compute(m, th, sav, buf);
 key_freesav(&sav);
 return (0);
}
