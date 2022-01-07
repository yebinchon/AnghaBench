
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_9__ {int NumAiop; } ;
typedef TYPE_1__ CONTROLLER_t ;


 int FREQ_DIS ;
 int MAX_AIOPS_PER_BOARD ;
 TYPE_1__* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int rp_attachcommon (TYPE_1__*,int,int) ;
 int rp_controller ;
 int rp_isareleaseresource (TYPE_1__*) ;
 int sEnAiop (int ,TYPE_1__*,int) ;
 scalar_t__ sGetAiopNumChan (TYPE_1__*,int) ;
 int sInitController (TYPE_1__*,int ,int ,int ,int ,int ) ;
 int sResetAiopByNum (TYPE_1__*,int) ;

__attribute__((used)) static int
rp_attach(device_t dev)
{
 int unit;
 int num_ports, num_aiops;
 int aiop;
 CONTROLLER_t *ctlp;
 int retval;

 unit = device_get_unit(dev);

 ctlp = device_get_softc(dev);







 num_aiops = ctlp->NumAiop;


 num_ports = 0;
 for(aiop=0; aiop < num_aiops; aiop++) {
  sResetAiopByNum(ctlp, aiop);
  sEnAiop(rp_controller, ctlp, aiop);
  num_ports += sGetAiopNumChan(ctlp, aiop);
 }

 retval = rp_attachcommon(ctlp, num_aiops, num_ports);
 if (retval != 0)
  goto nogo;

 return (0);

nogo:
 rp_isareleaseresource(ctlp);

 return (retval);
}
