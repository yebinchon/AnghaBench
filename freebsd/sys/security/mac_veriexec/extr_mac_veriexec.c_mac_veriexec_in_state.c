
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mac_veriexec_state ;

int
mac_veriexec_in_state(int state)
{

 return (mac_veriexec_state & state);
}
