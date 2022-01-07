
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udpdevice {int connected; int sock; } ;
struct sockaddr {int dummy; } ;
struct physical {int fd; int handler; } ;
typedef int ssize_t ;


 scalar_t__ EISCONN ;

 int UDP_MAYBEUNCONNECTED ;

 struct udpdevice* device2udp (int ) ;
 scalar_t__ errno ;
 int sendto (int ,void const*,size_t,int ,struct sockaddr*,int) ;
 int write (int ,void const*,size_t) ;

__attribute__((used)) static ssize_t
udp_Sendto(struct physical *p, const void *v, size_t n)
{
  struct udpdevice *dev = device2udp(p->handler);
  int ret;

  switch (dev->connected) {
    case 129:
      ret = write(p->fd, v, n);
      break;

    case 128:
    default:
      ret = sendto(p->fd, v, n, 0, (struct sockaddr *)&dev->sock,
                   sizeof dev->sock);
      break;
  }
  if (dev->connected == UDP_MAYBEUNCONNECTED) {
    if (ret == -1 && errno == EISCONN) {
      dev->connected = 129;
      ret = write(p->fd, v, n);
    } else
      dev->connected = 128;
  }

  return ret;
}
