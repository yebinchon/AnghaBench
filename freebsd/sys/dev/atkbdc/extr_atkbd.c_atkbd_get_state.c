
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kb_data; } ;
typedef TYPE_1__ keyboard_t ;
typedef int atkbd_state_t ;


 int bcopy (int ,void*,int) ;

__attribute__((used)) static int
atkbd_get_state(keyboard_t *kbd, void *buf, size_t len)
{
 if (len == 0)
  return sizeof(atkbd_state_t);
 if (len < sizeof(atkbd_state_t))
  return -1;
 bcopy(kbd->kb_data, buf, sizeof(atkbd_state_t));
 return 0;
}
