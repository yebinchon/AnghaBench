
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vtcon_sock {int vss_conn_fd; int vss_open; int vss_conn_evp; } ;
struct pci_vtcon_port {int dummy; } ;
struct iovec {int iov_len; int iov_base; } ;


 int mevent_delete_close (int ) ;
 int stream_write (int,int ,int ) ;

__attribute__((used)) static void
pci_vtcon_sock_tx(struct pci_vtcon_port *port, void *arg, struct iovec *iov,
    int niov)
{
 struct pci_vtcon_sock *sock;
 int i, ret;

 sock = (struct pci_vtcon_sock *)arg;

 if (sock->vss_conn_fd == -1)
  return;

 for (i = 0; i < niov; i++) {
  ret = stream_write(sock->vss_conn_fd, iov[i].iov_base,
      iov[i].iov_len);
  if (ret <= 0)
   break;
 }

 if (ret <= 0) {
  mevent_delete_close(sock->vss_conn_evp);
  sock->vss_conn_fd = -1;
  sock->vss_open = 0;
 }
}
