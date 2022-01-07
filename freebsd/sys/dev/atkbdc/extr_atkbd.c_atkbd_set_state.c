
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_5__ {scalar_t__ kbdc; } ;
typedef TYPE_2__ atkbd_state_t ;


 int ENOMEM ;
 int bcopy (void*,scalar_t__,int) ;

__attribute__((used)) static int
atkbd_set_state(keyboard_t *kbd, void *buf, size_t len)
{
 if (len < sizeof(atkbd_state_t))
  return ENOMEM;
 if (((atkbd_state_t *)kbd->kb_data)->kbdc
  != ((atkbd_state_t *)buf)->kbdc)
  return ENOMEM;
 bcopy(buf, kbd->kb_data, sizeof(atkbd_state_t));
 return 0;
}
