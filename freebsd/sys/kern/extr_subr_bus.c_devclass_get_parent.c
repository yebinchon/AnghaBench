
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* devclass_t ;
struct TYPE_4__ {struct TYPE_4__* parent; } ;



devclass_t
devclass_get_parent(devclass_t dc)
{
 return (dc->parent);
}
