
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct datalink {TYPE_1__* physical; struct datalink* next; } ;
struct bundle {struct datalink* links; } ;
struct TYPE_2__ {int fd; } ;


 int CLOSE_NORMAL ;
 int datalink_Down (struct datalink*,int ) ;

int
bundle_Exception(struct bundle *bundle, int fd)
{
  struct datalink *dl;

  for (dl = bundle->links; dl; dl = dl->next)
    if (dl->physical->fd == fd) {
      datalink_Down(dl, CLOSE_NORMAL);
      return 1;
    }

  return 0;
}
