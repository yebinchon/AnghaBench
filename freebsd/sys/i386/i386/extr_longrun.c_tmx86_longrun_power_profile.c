
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;




 scalar_t__ crusoe_economy_longrun ;
 scalar_t__ crusoe_performance_longrun ;
 int power_profile_get_state () ;
 scalar_t__ tmx86_get_longrun_mode () ;
 int tmx86_set_longrun_mode (scalar_t__) ;

__attribute__((used)) static void
tmx86_longrun_power_profile(void *arg)
{
 int state;
 u_int new;

 state = power_profile_get_state();
 if (state != 128 &&
     state != 129) {
  return;
 }

 switch (state) {
 case 128:
  new =crusoe_performance_longrun;
  break;
 case 129:
  new = crusoe_economy_longrun;
  break;
 default:
  new = tmx86_get_longrun_mode();
  break;
 }

 if (tmx86_get_longrun_mode() != new) {
  tmx86_set_longrun_mode(new);
 }
}
