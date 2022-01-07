
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gpio_handle_t ;
struct TYPE_4__ {int g_pin; char* g_name; int g_caps; int g_flags; } ;
typedef TYPE_1__ gpio_config_t ;


 int exit (int) ;
 int free (TYPE_1__*) ;
 int gpio_pin_get (int ,int) ;
 int gpio_pin_list (int ,TYPE_1__**) ;
 int perror (char*) ;
 int print_caps (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_pins(gpio_handle_t handle, int verbose)
{
 int i, maxpin, pinv;
 gpio_config_t *cfgs;
 gpio_config_t *pin;

 maxpin = gpio_pin_list(handle, &cfgs);
 if (maxpin < 0) {
  perror("gpio_pin_list");
  exit(1);
 }

 for (i = 0; i <= maxpin; i++) {
  pin = cfgs + i;
  pinv = gpio_pin_get(handle, pin->g_pin);
  printf("pin %02d:\t%d\t%s", pin->g_pin, pinv,
      pin->g_name);

  print_caps(pin->g_flags);

  if (verbose) {
   printf(", caps:");
   print_caps(pin->g_caps);
  }
  printf("\n");
 }
 free(cfgs);
}
