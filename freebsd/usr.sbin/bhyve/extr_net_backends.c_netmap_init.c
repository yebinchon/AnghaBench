
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netmap_priv {char* ifname; int * mevp; TYPE_2__* nmd; void* cb_param; int cb; int rx; int tx; int memid; } ;
struct net_backend {int fd; scalar_t__ opaque; } ;
typedef int net_be_rxeof_t ;
struct TYPE_3__ {int nr_arg2; } ;
struct TYPE_4__ {int fd; int nifp; TYPE_1__ req; } ;


 int EVF_READ ;
 int NETMAP_NO_TX_POLL ;
 int NETMAP_RXRING (int ,int ) ;
 int NETMAP_TXRING (int ,int ) ;
 int WPRINTF (char*) ;
 int errno ;
 int free (struct netmap_priv*) ;
 int * mevent_add_disabled (int ,int ,int ,void*) ;
 TYPE_2__* nm_open (char*,int *,int ,int *) ;
 int strerror (int ) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static int
netmap_init(struct net_backend *be, const char *devname,
     net_be_rxeof_t cb, void *param)
{
 struct netmap_priv *priv = (struct netmap_priv *)be->opaque;

 strlcpy(priv->ifname, devname, sizeof(priv->ifname));
 priv->ifname[sizeof(priv->ifname) - 1] = '\0';

 priv->nmd = nm_open(priv->ifname, ((void*)0), NETMAP_NO_TX_POLL, ((void*)0));
 if (priv->nmd == ((void*)0)) {
  WPRINTF(("Unable to nm_open(): interface '%s', errno (%s)\n",
   devname, strerror(errno)));
  free(priv);
  return (-1);
 }

 priv->memid = priv->nmd->req.nr_arg2;
 priv->tx = NETMAP_TXRING(priv->nmd->nifp, 0);
 priv->rx = NETMAP_RXRING(priv->nmd->nifp, 0);
 priv->cb = cb;
 priv->cb_param = param;
 be->fd = priv->nmd->fd;

 priv->mevp = mevent_add_disabled(be->fd, EVF_READ, cb, param);
 if (priv->mevp == ((void*)0)) {
  WPRINTF(("Could not register event\n"));
  return (-1);
 }

 return (0);
}
