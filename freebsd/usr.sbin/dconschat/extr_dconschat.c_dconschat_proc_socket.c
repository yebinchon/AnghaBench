
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {scalar_t__ ident; scalar_t__ udata; } ;
struct dcons_state {int to; int kq; } ;
struct dcons_port {scalar_t__ s; } ;


 int NEVENT ;
 int dconschat_accept_socket (struct dcons_state*,struct dcons_port*) ;
 int dconschat_read_socket (struct dcons_state*,struct dcons_port*) ;
 int kevent (int ,int *,int ,struct kevent*,int,int *) ;

__attribute__((used)) static int
dconschat_proc_socket(struct dcons_state *dc)
{
 struct kevent elist[NEVENT], *e;
 int i, n;
 struct dcons_port *p;

 n = kevent(dc->kq, ((void*)0), 0, elist, NEVENT, &dc->to);
 for (i = 0; i < n; i ++) {
  e = &elist[i];
  p = (struct dcons_port *)e->udata;
  if (e->ident == p->s) {
   dconschat_accept_socket(dc, p);
  } else {
   dconschat_read_socket(dc, p);
  }
 }
 return(0);
}
