
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kb_data; } ;
typedef TYPE_1__ keyboard_t ;
typedef int kbdmux_state_t ;


 int ENOMEM ;
 int bcopy (void*,int ,int) ;

__attribute__((used)) static int
kbdmux_set_state(keyboard_t *kbd, void *buf, size_t len)
{
 if (len < sizeof(kbdmux_state_t))
  return (ENOMEM);

 bcopy(buf, kbd->kb_data, sizeof(kbdmux_state_t));

 return (0);
}
