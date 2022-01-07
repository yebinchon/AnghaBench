
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_5__ {int family; } ;
struct tun_data {char* data; TYPE_2__ header; } ;
struct mbuf {int dummy; } ;
struct link {int name; } ;
struct TYPE_6__ {int fd; scalar_t__ header; } ;
struct TYPE_4__ {int alive; int in; } ;
struct bundle {TYPE_3__ dev; TYPE_1__ filter; } ;
typedef int ssize_t ;


 int FilterCheck (char*,int ,int *,unsigned int*) ;
 int LogERROR ;
 int LogWARN ;
 scalar_t__ PacketCheck (struct bundle*,int ,char*,size_t,int *,int *,unsigned int*) ;
 int bundle_StartIdleTimer (struct bundle*,unsigned int) ;
 int errno ;
 int htonl (int ) ;
 int log_Printf (int ,char*,int ,size_t,int) ;
 int m_freem (struct mbuf*) ;
 size_t m_length (struct mbuf*) ;
 int mbuf_Read (struct mbuf*,char*,size_t) ;
 int strerror (int ) ;
 int write (int ,char*,size_t) ;

__attribute__((used)) static size_t
ip_Input(struct bundle *bundle, struct link *l, struct mbuf *bp, u_int32_t af)
{
  ssize_t nw;
  size_t nb;
  struct tun_data tun;
  char *data;
  unsigned secs, alivesecs;

  nb = m_length(bp);
  if (nb > sizeof tun.data) {
    log_Printf(LogWARN, "ip_Input: %s: Packet too large (got %zd, max %d)\n",
               l->name, nb, (int)(sizeof tun.data));
    m_freem(bp);
    return 0;
  }
  mbuf_Read(bp, tun.data, nb);

  secs = 0;
  if (PacketCheck(bundle, af, tun.data, nb, &bundle->filter.in,
                  ((void*)0), &secs) < 0)
    return 0;

  alivesecs = 0;
  if (!FilterCheck(tun.data, af, &bundle->filter.alive, &alivesecs)) {
    if (secs == 0)
      secs = alivesecs;
    bundle_StartIdleTimer(bundle, secs);
  }

  if (bundle->dev.header) {
    tun.header.family = htonl(af);
    nb += sizeof tun - sizeof tun.data;
    data = (char *)&tun;
  } else
    data = tun.data;

  nw = write(bundle->dev.fd, data, nb);
  if (nw != (ssize_t)nb) {
    if (nw == -1)
      log_Printf(LogERROR, "ip_Input: %s: wrote %zd, got %s\n",
                 l->name, nb, strerror(errno));
    else
      log_Printf(LogERROR, "ip_Input: %s: wrote %zd, got %zd\n", l->name, nb,
   nw);
  }

  return nb;
}
