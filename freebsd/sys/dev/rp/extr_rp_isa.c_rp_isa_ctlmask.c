
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONTROLLER_t ;


 int rp_controller ;
 unsigned char sGetControllerIntStatus (int ,int *) ;

__attribute__((used)) static unsigned char
rp_isa_ctlmask(CONTROLLER_t *ctlp)
{
 return sGetControllerIntStatus(rp_controller,ctlp);
}
