
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcons_state {int flags; struct dcons_port* port; } ;
struct dcons_port {scalar_t__ infd; int outfd; } ;
typedef int buf ;


 int DCONS_NPORT ;
 int F_ONE_SHOT ;
 int MAX_XFER ;
 int dconschat_cleanup (int ) ;
 int dconschat_get_ptr (struct dcons_state*) ;
 int dconschat_read_dcons (struct dcons_state*,int,char*,int) ;
 int dconschat_write_socket (int ,char*,int) ;

__attribute__((used)) static int
dconschat_proc_dcons(struct dcons_state *dc)
{
 int port, len, err;
 char buf[MAX_XFER];
 struct dcons_port *p;

 err = dconschat_get_ptr(dc);
 if (err) {

  return err;
 }
 for (port = 0; port < DCONS_NPORT; port ++) {
  p = &dc->port[port];
  if (p->infd < 0)
   continue;
  while ((len = dconschat_read_dcons(dc, port, buf,
      sizeof(buf))) > 0) {
   dconschat_write_socket(p->outfd, buf, len);
   if ((err = dconschat_get_ptr(dc)))
    return (err);
  }
  if ((dc->flags & F_ONE_SHOT) != 0 && len <= 0)
   dconschat_cleanup(0);
 }
 return 0;
}
