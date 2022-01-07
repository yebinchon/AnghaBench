
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;


 int CONFIG_SIZE ;
 TYPE_1__* c ;
 int free (int ) ;

void
config_finish(void) {
 int i;

 for (i = 0; i < CONFIG_SIZE; i++)
  free(c[i].value);
}
