
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gpio_handle_t ;
struct TYPE_4__ {int g_name; int g_pin; } ;
typedef TYPE_1__ gpio_config_t ;


 int exit (int) ;
 int free (TYPE_1__*) ;
 int gpio_pin_get (int ,int ) ;
 int gpio_pin_list (int ,TYPE_1__**) ;
 int perror (char*) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int
get_pinnum_by_name(gpio_handle_t handle, const char *name) {
 int i, maxpin, pinn;
 gpio_config_t *cfgs;
 gpio_config_t *pin;

 pinn = -1;
 maxpin = gpio_pin_list(handle, &cfgs);
 if (maxpin < 0) {
  perror("gpio_pin_list");
  exit(1);
 }

 for (i = 0; i <= maxpin; i++) {
  pin = cfgs + i;
  gpio_pin_get(handle, pin->g_pin);
  if (!strcmp(name, pin->g_name)) {
   pinn = i;
   break;
  }
 }
 free(cfgs);

 return pinn;
}
