
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sockaddr_ng {int sg_len; int sg_family; int sg_data; } ;
struct sockaddr {int dummy; } ;
struct ngpcb {TYPE_1__* sockdata; } ;
typedef int * node_p ;
struct TYPE_2__ {int mtx; int * node; } ;


 int AF_NETGRAPH ;
 int EINVAL ;
 int M_SONAME ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODESIZ ;
 scalar_t__ NG_NODE_HAS_NAME (int *) ;
 int NG_NODE_NAME (int *) ;
 int bcopy (int ,int ,int ) ;
 int free (struct sockaddr_ng*,int ) ;
 struct sockaddr_ng* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct ngpcb* sotongpcb (struct socket*) ;
 int strlen (int ) ;

__attribute__((used)) static int
ng_getsockaddr(struct socket *so, struct sockaddr **addr)
{
 struct ngpcb *pcbp;
 struct sockaddr_ng *sg;
 int sg_len;
 int error = 0;

 pcbp = sotongpcb(so);
 if ((pcbp == ((void*)0)) || (pcbp->sockdata == ((void*)0)))

  return (EINVAL);

 sg_len = sizeof(struct sockaddr_ng) + NG_NODESIZ -
     sizeof(sg->sg_data);
 sg = malloc(sg_len, M_SONAME, M_WAITOK | M_ZERO);

 mtx_lock(&pcbp->sockdata->mtx);
 if (pcbp->sockdata->node != ((void*)0)) {
  node_p node = pcbp->sockdata->node;

  if (NG_NODE_HAS_NAME(node))
   bcopy(NG_NODE_NAME(node), sg->sg_data,
       strlen(NG_NODE_NAME(node)));
  mtx_unlock(&pcbp->sockdata->mtx);

  sg->sg_len = sg_len;
  sg->sg_family = AF_NETGRAPH;
  *addr = (struct sockaddr *)sg;
 } else {
  mtx_unlock(&pcbp->sockdata->mtx);
  free(sg, M_SONAME);
  error = EINVAL;
 }

 return (error);
}
