
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink {unsigned int state; struct datalink* next; } ;
struct bundle {struct datalink* links; } ;


 unsigned int DATALINK_CLOSED ;

unsigned
bundle_HighestState(struct bundle *bundle)
{
  struct datalink *dl;
  unsigned result = DATALINK_CLOSED;

  for (dl = bundle->links; dl; dl = dl->next)
    if (result < dl->state)
      result = dl->state;

  return result;
}
