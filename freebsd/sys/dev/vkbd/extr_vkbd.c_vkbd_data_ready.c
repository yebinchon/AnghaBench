
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cc; } ;
struct TYPE_6__ {TYPE_1__ ks_inq; } ;
typedef TYPE_2__ vkbd_state_t ;


 int MA_OWNED ;
 int VKBD_LOCK_ASSERT (TYPE_2__*,int ) ;

__attribute__((used)) static int
vkbd_data_ready(vkbd_state_t *state)
{
 VKBD_LOCK_ASSERT(state, MA_OWNED);

 return (state->ks_inq.cc > 0);
}
