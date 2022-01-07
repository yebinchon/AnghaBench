
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct fdescriptor {int dummy; } ;
struct datalink {int desc; struct datalink* next; } ;
struct TYPE_9__ {int fd; } ;
struct TYPE_6__ {int desc; } ;
struct TYPE_7__ {TYPE_1__ server; } ;
struct TYPE_8__ {TYPE_2__ mp; } ;
struct TYPE_10__ {int desc; } ;
struct bundle {TYPE_4__ dev; TYPE_3__ ncp; TYPE_5__ radius; struct datalink* links; } ;
typedef int fd_set ;


 int FD_ISSET (int ,int const*) ;
 struct bundle* descriptor2bundle (struct fdescriptor*) ;
 scalar_t__ descriptor_IsSet (int *,int const*) ;

__attribute__((used)) static int
bundle_IsSet(struct fdescriptor *d, const fd_set *fdset)
{
  struct bundle *bundle = descriptor2bundle(d);
  struct datalink *dl;

  for (dl = bundle->links; dl; dl = dl->next)
    if (descriptor_IsSet(&dl->desc, fdset))
      return 1;


  if (descriptor_IsSet(&bundle->radius.desc, fdset))
    return 1;


  if (descriptor_IsSet(&bundle->ncp.mp.server.desc, fdset))
    return 1;

  return FD_ISSET(bundle->dev.fd, fdset);
}
