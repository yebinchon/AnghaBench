
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int dummy; } ;
struct dcons_state {int flags; int zero; int kq; } ;
struct dcons_port {int infd; int outfd; int s; int port; } ;
typedef int rbuf ;


 int EVFILT_READ ;
 int EV_ADD ;
 int EV_DELETE ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,int,int ,int,int ,int ,void*) ;
 int F_READY ;
 int MAX_XFER ;
 int close (int) ;
 int dconschat_read_filter (struct dcons_state*,struct dcons_port*,char*,int,char*,int*) ;
 int dconschat_write_dcons (struct dcons_state*,int ,char*,int) ;
 int fflush (int ) ;
 int kevent (int ,struct kevent*,int,int *,int ,int *) ;
 int printf (char*,...) ;
 int read (int,char*,int) ;
 int stdout ;
 int verbose ;
 int warn (char*,int ) ;
 int warnx (char*,int ) ;

__attribute__((used)) static int
dconschat_read_socket(struct dcons_state *dc, struct dcons_port *p)
{
 struct kevent kev;
 int len, wlen;
 char rbuf[MAX_XFER], wbuf[MAX_XFER+2];

 if ((len = read(p->infd, rbuf, sizeof(rbuf))) > 0) {
  wlen = 0;
  dconschat_read_filter(dc, p, rbuf, len, wbuf, &wlen);

  if (wlen > 0 && (dc->flags & F_READY) != 0) {
   dconschat_write_dcons(dc, p->port, wbuf, wlen);
   if (verbose > 1) {
    wbuf[wlen] = 0;
    printf("-> %s\n", wbuf);
   } else if (verbose == 1) {
    printf("(%d)", wlen);
    fflush(stdout);
   }
  }
 } else {
  if (verbose) {
   if (len == 0)
    warnx("port%d: closed", p->port);
   else
    warn("port%d: read", p->port);
  }
  EV_SET(&kev, p->infd, EVFILT_READ,
   EV_DELETE, 0, 0, ((void*)0));
  kevent(dc->kq, &kev, 1, ((void*)0), 0, &dc->zero);
  close(p->infd);
  close(p->outfd);

  EV_SET(&kev, p->s, EVFILT_READ,
    EV_ADD | EV_ONESHOT, 0, 0, (void *) p);
  kevent(dc->kq, &kev, 1, ((void*)0), 0, &dc->zero);
  p->infd = p->outfd = -1;
 }
 return(0);
}
