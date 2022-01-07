
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* cmdext_list; } ;
typedef TYPE_1__* PVBUS_EXT ;
typedef TYPE_2__* POS_CMDEXT ;



__attribute__((used)) static __inline POS_CMDEXT cmdext_get(PVBUS_EXT vbus_ext)
{
 POS_CMDEXT p = vbus_ext->cmdext_list;
 if (p)
  vbus_ext->cmdext_list = p->next;
 return p;
}
