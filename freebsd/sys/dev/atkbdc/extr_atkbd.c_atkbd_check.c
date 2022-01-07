
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_6__ {int kbdc; } ;
typedef TYPE_2__ atkbd_state_t ;


 int FALSE ;
 int KBD_IS_ACTIVE (TYPE_1__*) ;
 int kbdc_data_ready (int ) ;

__attribute__((used)) static int
atkbd_check(keyboard_t *kbd)
{
 if (!KBD_IS_ACTIVE(kbd))
  return FALSE;
 return kbdc_data_ready(((atkbd_state_t *)kbd->kb_data)->kbdc);
}
