
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ gpio_handle_t ;
struct TYPE_3__ {int g_pin; int g_flags; } ;
typedef TYPE_1__ gpio_config_t ;


 scalar_t__ GPIO_INVALID_HANDLE ;


 int dump_pins (scalar_t__,int) ;
 int exit (int) ;
 int fail (char*,char*) ;
 int get_pinnum_by_name (scalar_t__,char*) ;
 int getopt (int,char**,char*) ;
 int gpio_close (scalar_t__) ;
 scalar_t__ gpio_open (int ) ;
 scalar_t__ gpio_open_device (char*) ;
 int gpio_pin_get (scalar_t__,int) ;
 scalar_t__ gpio_pin_set (scalar_t__,int,int) ;
 scalar_t__ gpio_pin_set_flags (scalar_t__,TYPE_1__*) ;
 scalar_t__ gpio_pin_set_name (scalar_t__,int,char*) ;
 scalar_t__ gpio_pin_toggle (scalar_t__,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int perror (char*) ;
 int printf (char*,int) ;
 int str2cap (char*) ;
 int str2int (char*,int*) ;
 int usage () ;

int
main(int argc, char **argv)
{
 int i;
 gpio_config_t pin;
 gpio_handle_t handle;
 char *ctlfile = ((void*)0);
 int pinn, pinv, pin_type, ch;
 int flags, flag, ok;
 int config, list, name, toggle, verbose;

 config = toggle = verbose = list = name = pin_type = 0;

 while ((ch = getopt(argc, argv, "cf:lntvNp")) != -1) {
  switch (ch) {
  case 'c':
   config = 1;
   break;
  case 'f':
   ctlfile = optarg;
   break;
  case 'l':
   list = 1;
   break;
  case 'n':
   name = 1;
   break;
  case 'N':
   pin_type = 129;
   break;
  case'p':
   pin_type = 128;
   break;
  case 't':
   toggle = 1;
   break;
  case 'v':
   verbose = 1;
   break;
  default:
   usage();
   break;
  }
 }
 argv += optind;
 argc -= optind;
 if (ctlfile == ((void*)0))
  handle = gpio_open(0);
 else
  handle = gpio_open_device(ctlfile);
 if (handle == GPIO_INVALID_HANDLE) {
  perror("gpio_open");
  exit(1);
 }

 if (list) {
  dump_pins(handle, verbose);
  gpio_close(handle);
  exit(0);
 }

 if (argc == 0)
  usage();


 switch (pin_type) {
 default:

  pinn = str2int(argv[0], &ok);
  if (ok) {

   if (get_pinnum_by_name(handle, argv[0]) != -1)
    fail("%s is also a pin name, use -p or -N\n", argv[0]);
  } else {

   if ((pinn = get_pinnum_by_name(handle, argv[0])) == -1)
    fail("Can't find pin named \"%s\"\n", argv[0]);
  }
  break;
 case 128:
  pinn = str2int(argv[0], &ok);
  if (!ok)
   fail("Invalid pin number: %s\n", argv[0]);
  break;
 case 129:
  if ((pinn = get_pinnum_by_name(handle, argv[0])) == -1)
   fail("Can't find pin named \"%s\"\n", argv[0]);
  break;
 }


 if (name) {
  if (argc != 2)
   usage();
  if (gpio_pin_set_name(handle, pinn, argv[1]) < 0) {
   perror("gpio_pin_set_name");
   exit(1);
  }
  exit(0);
 }

 if (toggle) {



  if (argc > 1)
   usage();
  if (gpio_pin_toggle(handle, pinn) < 0) {
   perror("gpio_pin_toggle");
   exit(1);
  }
  gpio_close(handle);
  exit(0);
 }

 if (config) {
  flags = 0;
  for (i = 1; i < argc; i++) {
   flag = str2cap(argv[i]);
   if (flag < 0)
    fail("Invalid flag: %s\n", argv[i]);
   flags |= flag;
  }
  pin.g_pin = pinn;
  pin.g_flags = flags;
  if (gpio_pin_set_flags(handle, &pin) < 0) {
   perror("gpio_pin_set_flags");
   exit(1);
  }
  exit(0);
 }




 if ((argc == 0) || (argc > 2))
  usage();




 if (argc == 1) {
  pinv = gpio_pin_get(handle, pinn);
  if (pinv < 0) {
   perror("gpio_pin_get");
   exit(1);
  }
  printf("%d\n", pinv);
  exit(0);
 }


 pinv = str2int(argv[1], &ok);
 if (ok == 0 || ((pinv != 0) && (pinv != 1)))
  fail("Invalid pin value: %s\n", argv[1]);




 if (gpio_pin_set(handle, pinn, pinv) < 0) {
  perror("gpio_pin_set");
  exit(1);
 }

 gpio_close(handle);
 exit(0);
}
