
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* devname; int dev; } ;
typedef TYPE_1__ devid_nmlist_t ;
typedef int ddi_devid_t ;


 int DEVID_MINOR_NAME_ALL ;
 int O_NDELAY ;
 int O_RDONLY ;
 scalar_t__ devid_deviceid_to_nmlist (char*,int ,int ,TYPE_1__**) ;
 int devid_free (int ) ;
 int devid_free_nmlist (TYPE_1__*) ;
 scalar_t__ devid_get (int,int *) ;
 scalar_t__ devid_get_minor_name (int,char**) ;
 char* devid_str_encode (int ,char*) ;
 int devid_str_free (char*) ;
 int exit (int) ;
 int open (char*,int) ;
 int perror (char*) ;
 int printf (char*,char*,...) ;

int
main(int argc, char *argv[])
{
 int fd;
 ddi_devid_t devid;
 char *minor_name, *devidstr, *device;






 if (argc == 1) {
  (void) printf("%s <devicepath> [search path]\n",
      argv[0]);
  exit(1);
 }
 device = argv[1];

 if ((fd = open(device, O_RDONLY|O_NDELAY)) < 0) {
  perror(device);
  exit(1);
 }
 if (devid_get(fd, &devid) != 0) {
  perror("devid_get");
  exit(1);
 }
 if (devid_get_minor_name(fd, &minor_name) != 0) {
  perror("devid_get_minor_name");
  exit(1);
 }
 if ((devidstr = devid_str_encode(devid, minor_name)) == 0) {
  perror("devid_str_encode");
  exit(1);
 }

 (void) printf("devid %s\n", devidstr);

 devid_str_free(devidstr);
 devid_str_free(minor_name);
 devid_free(devid);

 return (0);
}
