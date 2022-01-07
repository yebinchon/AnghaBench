
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VBE_DPMS_GET_STATE ;
 int dpms_call_bios (int ,int*) ;

__attribute__((used)) static int
dpms_get_current_state(int *state)
{

 *state = 0;
 return (dpms_call_bios(VBE_DPMS_GET_STATE, state));
}
