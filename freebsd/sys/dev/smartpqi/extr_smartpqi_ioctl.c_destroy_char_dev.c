
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cdev; } ;
struct pqisrc_softstate {TYPE_1__ os_specific; } ;


 int DBG_FUNC (char*) ;
 int destroy_dev (int *) ;

void destroy_char_dev(struct pqisrc_softstate *softs)
{
 DBG_FUNC("IN\n");
 if (softs->os_specific.cdev) {
  destroy_dev(softs->os_specific.cdev);
  softs->os_specific.cdev = ((void*)0);
 }
 DBG_FUNC("OUT\n");
}
