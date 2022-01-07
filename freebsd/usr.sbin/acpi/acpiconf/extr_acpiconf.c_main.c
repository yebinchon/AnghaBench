
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int acpi_battinfo (int) ;
 int acpi_init () ;
 int acpi_sleep (int) ;
 int acpi_sleep_ack (int) ;
 int acpifd ;
 int close (int ) ;
 int errx (int ,char*,...) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 scalar_t__ optind ;
 size_t strlen (char*) ;
 int strtol (char*,char**,int) ;
 int usage (char*) ;

int
main(int argc, char *argv[])
{
 char *prog, *end;
 int c, sleep_type, battery, ack;
 int iflag = 0, kflag = 0, sflag = 0;

 prog = argv[0];
 if (argc < 2)
  usage(prog);


 sleep_type = -1;
 acpi_init();
 while ((c = getopt(argc, argv, "hi:k:s:")) != -1) {
  switch (c) {
  case 'i':
   iflag = 1;
   battery = strtol(optarg, &end, 10);
   if ((size_t)(end - optarg) != strlen(optarg))
       errx(EX_USAGE, "invalid battery");
   break;
  case 'k':
   kflag = 1;
   ack = strtol(optarg, &end, 10);
   if ((size_t)(end - optarg) != strlen(optarg))
       errx(EX_USAGE, "invalid ack argument");
   break;
  case 's':
   sflag = 1;
   if (optarg[0] == 'S')
    optarg++;
   sleep_type = strtol(optarg, &end, 10);
   if ((size_t)(end - optarg) != strlen(optarg))
       errx(EX_USAGE, "invalid sleep type");
   if (sleep_type < 1 || sleep_type > 4)
    errx(EX_USAGE, "invalid sleep type (%d)",
         sleep_type);
   break;
  case 'h':
  default:
   usage(prog);

  }
 }
 argc -= optind;
 argv += optind;

 if (iflag != 0 && kflag != 0 && sflag != 0)
   errx(EX_USAGE, "-i, -k and -s are mutually exclusive");

 if (iflag != 0) {
  if (kflag != 0)
   errx(EX_USAGE, "-i and -k are mutually exclusive");
  if (sflag != 0)
   errx(EX_USAGE, "-i and -s are mutually exclusive");
  acpi_battinfo(battery);
 }

 if (kflag != 0) {
  if (sflag != 0)
   errx(EX_USAGE, "-k and -s are mutually exclusive");
  acpi_sleep_ack(ack);
 }


 if (sflag != 0)
  acpi_sleep(sleep_type);

 close(acpifd);
 exit (0);
}
