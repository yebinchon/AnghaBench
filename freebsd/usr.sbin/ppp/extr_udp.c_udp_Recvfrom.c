
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sin_port; int sin_addr; } ;
struct udpdevice {scalar_t__ connected; TYPE_1__ sock; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {char* full; char* base; } ;
struct physical {TYPE_2__ name; int fd; int handler; } ;
typedef int ssize_t ;


 scalar_t__ UDP_CONNECTED ;
 struct udpdevice* device2udp (int ) ;
 char* inet_ntoa (int ) ;
 int ntohs (int ) ;
 int read (int ,void*,size_t) ;
 int recvfrom (int ,void*,size_t,int ,struct sockaddr*,int*) ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static ssize_t
udp_Recvfrom(struct physical *p, void *v, size_t n)
{
  struct udpdevice *dev = device2udp(p->handler);
  int sz, ret;

  if (dev->connected == UDP_CONNECTED)
    return read(p->fd, v, n);

  sz = sizeof dev->sock;
  ret = recvfrom(p->fd, v, n, 0, (struct sockaddr *)&dev->sock, &sz);

  if (*p->name.full == '\0') {
    snprintf(p->name.full, sizeof p->name.full, "%s:%d/udp",
             inet_ntoa(dev->sock.sin_addr), ntohs(dev->sock.sin_port));
    p->name.base = p->name.full;
  }

  return ret;
}
