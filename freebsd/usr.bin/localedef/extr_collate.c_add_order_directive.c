
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ directive_count; } ;


 scalar_t__ COLL_WEIGHTS_MAX ;
 TYPE_1__ collinfo ;
 int fprintf (int ,char*,scalar_t__) ;
 int stderr ;

void
add_order_directive(void)
{
 if (collinfo.directive_count >= COLL_WEIGHTS_MAX) {
  fprintf(stderr,"too many directives (max %d)", COLL_WEIGHTS_MAX);
 }
 collinfo.directive_count++;
}
