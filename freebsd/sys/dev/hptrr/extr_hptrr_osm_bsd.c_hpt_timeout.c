
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int priv; } ;
struct TYPE_5__ {TYPE_1__* vbus_ext; } ;
struct TYPE_4__ {scalar_t__ vbus; } ;
typedef int PVBUS ;
typedef TYPE_2__* POS_CMDEXT ;
typedef TYPE_3__* PCOMMAND ;


 int KdPrint (char*) ;
 int ldm_reset_vbus (int ) ;

__attribute__((used)) static void hpt_timeout(void *arg)
{
 PCOMMAND pCmd = (PCOMMAND)arg;
 POS_CMDEXT ext = (POS_CMDEXT)pCmd->priv;

 KdPrint(("pCmd %p timeout", pCmd));

 ldm_reset_vbus((PVBUS)ext->vbus_ext->vbus);
}
