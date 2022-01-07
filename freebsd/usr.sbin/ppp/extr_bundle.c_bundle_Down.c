
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink {struct datalink* next; } ;
struct bundle {struct datalink* links; } ;


 int datalink_Down (struct datalink*,int) ;

void
bundle_Down(struct bundle *bundle, int how)
{
  struct datalink *dl;

  for (dl = bundle->links; dl; dl = dl->next)
    datalink_Down(dl, how);
}
