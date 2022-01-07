
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xsocket {int xso_len; uintptr_t xso_so; uintptr_t so_pcb; int so_rcv; int so_snd; scalar_t__ so_oobmark; scalar_t__ so_qlimit; scalar_t__ so_incqlen; scalar_t__ so_qlen; int so_state; int so_pgid; int so_uid; int so_error; int so_timeo; int xso_family; int xso_protocol; int so_linger; int so_options; int so_type; } ;
struct socket {int so_rcv; int so_snd; scalar_t__ so_oobmark; int so_qstate; scalar_t__ sol_qlimit; scalar_t__ sol_incqlen; scalar_t__ sol_qlen; TYPE_4__* so_sigio; TYPE_3__* so_cred; int so_error; int so_timeo; TYPE_2__* so_proto; scalar_t__ so_pcb; int so_state; int so_linger; int so_options; int so_type; } ;
struct TYPE_8__ {int sio_pgid; } ;
struct TYPE_7__ {int cr_uid; } ;
struct TYPE_6__ {TYPE_1__* pr_domain; int pr_protocol; } ;
struct TYPE_5__ {int dom_family; } ;


 scalar_t__ SOLISTENING (struct socket*) ;
 int bzero (struct xsocket*,int) ;
 int sbtoxsockbuf (int *,int *) ;

void
sotoxsocket(struct socket *so, struct xsocket *xso)
{

 bzero(xso, sizeof(*xso));
 xso->xso_len = sizeof *xso;
 xso->xso_so = (uintptr_t)so;
 xso->so_type = so->so_type;
 xso->so_options = so->so_options;
 xso->so_linger = so->so_linger;
 xso->so_state = so->so_state;
 xso->so_pcb = (uintptr_t)so->so_pcb;
 xso->xso_protocol = so->so_proto->pr_protocol;
 xso->xso_family = so->so_proto->pr_domain->dom_family;
 xso->so_timeo = so->so_timeo;
 xso->so_error = so->so_error;
 xso->so_uid = so->so_cred->cr_uid;
 xso->so_pgid = so->so_sigio ? so->so_sigio->sio_pgid : 0;
 if (SOLISTENING(so)) {
  xso->so_qlen = so->sol_qlen;
  xso->so_incqlen = so->sol_incqlen;
  xso->so_qlimit = so->sol_qlimit;
  xso->so_oobmark = 0;
 } else {
  xso->so_state |= so->so_qstate;
  xso->so_qlen = xso->so_incqlen = xso->so_qlimit = 0;
  xso->so_oobmark = so->so_oobmark;
  sbtoxsockbuf(&so->so_snd, &xso->so_snd);
  sbtoxsockbuf(&so->so_rcv, &xso->so_rcv);
 }
}
