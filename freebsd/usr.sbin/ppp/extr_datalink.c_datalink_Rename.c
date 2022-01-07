
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct datalink {int name; TYPE_2__* physical; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ link; } ;


 int free (int ) ;
 int strdup (char const*) ;

void
datalink_Rename(struct datalink *dl, const char *name)
{
  free(dl->name);
  dl->physical->link.name = dl->name = strdup(name);
}
