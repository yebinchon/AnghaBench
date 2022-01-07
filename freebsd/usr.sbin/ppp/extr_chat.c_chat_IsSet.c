
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fdescriptor {int dummy; } ;
struct chat {TYPE_1__* physical; scalar_t__ argptr; } ;
typedef int fd_set ;
struct TYPE_2__ {int desc; } ;


 struct chat* descriptor2chat (struct fdescriptor*) ;
 scalar_t__ physical_IsSet (int *,int const*) ;

__attribute__((used)) static int
chat_IsSet(struct fdescriptor *d, const fd_set *fdset)
{
  struct chat *c = descriptor2chat(d);
  return c->argptr && physical_IsSet(&c->physical->desc, fdset);
}
