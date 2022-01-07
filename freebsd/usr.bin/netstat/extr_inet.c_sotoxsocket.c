
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsocket {int xso_len; uintptr_t xso_so; int so_options; uintptr_t so_pcb; int so_oobmark; int so_rcv; int so_snd; int so_qlimit; int so_incqlen; int so_qlen; int so_error; int so_timeo; int xso_family; int xso_protocol; int so_state; int so_linger; int so_type; } ;
struct socket {int so_options; int so_oobmark; int so_rcv; int so_snd; int sol_qlimit; int sol_incqlen; int sol_qlen; int so_error; int so_timeo; scalar_t__ so_proto; scalar_t__ so_pcb; int so_state; int so_linger; int so_type; } ;
struct protosw {int dom_family; scalar_t__ pr_domain; int pr_protocol; } ;
struct domain {int dom_family; scalar_t__ pr_domain; int pr_protocol; } ;
typedef int proto ;
typedef int domain ;


 int SO_ACCEPTCONN ;
 int bzero (struct xsocket*,int) ;
 scalar_t__ kread (uintptr_t,struct protosw*,int) ;
 int sbtoxsockbuf (int *,int *) ;

int
sotoxsocket(struct socket *so, struct xsocket *xso)
{
 struct protosw proto;
 struct domain domain;

 bzero(xso, sizeof *xso);
 xso->xso_len = sizeof *xso;
 xso->xso_so = (uintptr_t)so;
 xso->so_type = so->so_type;
 xso->so_options = so->so_options;
 xso->so_linger = so->so_linger;
 xso->so_state = so->so_state;
 xso->so_pcb = (uintptr_t)so->so_pcb;
 if (kread((uintptr_t)so->so_proto, &proto, sizeof(proto)) != 0)
  return (-1);
 xso->xso_protocol = proto.pr_protocol;
 if (kread((uintptr_t)proto.pr_domain, &domain, sizeof(domain)) != 0)
  return (-1);
 xso->xso_family = domain.dom_family;
 xso->so_timeo = so->so_timeo;
 xso->so_error = so->so_error;
 if ((so->so_options & SO_ACCEPTCONN) != 0) {
  xso->so_qlen = so->sol_qlen;
  xso->so_incqlen = so->sol_incqlen;
  xso->so_qlimit = so->sol_qlimit;
 } else {
  sbtoxsockbuf(&so->so_snd, &xso->so_snd);
  sbtoxsockbuf(&so->so_rcv, &xso->so_rcv);
  xso->so_oobmark = so->so_oobmark;
 }
 return (0);
}
