
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int uint8_t ;
struct TYPE_4__ {int queue; int busy_lock; int aflags; int flags; } ;


 int PG_MARKER ;
 int VPB_SINGLE_EXCLUSIVER ;
 int bzero (TYPE_1__*,int) ;

__attribute__((used)) static void
vm_page_init_marker(vm_page_t marker, int queue, uint8_t aflags)
{

 bzero(marker, sizeof(*marker));
 marker->flags = PG_MARKER;
 marker->aflags = aflags;
 marker->busy_lock = VPB_SINGLE_EXCLUSIVER;
 marker->queue = queue;
}
