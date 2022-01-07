
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zone_args ;
typedef int uint32_t ;
struct TYPE_3__ {int zone_mode; } ;
struct TYPE_4__ {TYPE_1__ disk_params; } ;
struct disk_zone_args {TYPE_2__ zone_params; int zone_cmd; } ;


 int DIOCZONECMD ;
 int DISK_ZONE_GET_PARAMS ;




 int bzero (struct disk_zone_args*,int) ;
 int ioctl (int,int ,struct disk_zone_args*) ;
 int snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static int
zonecheck(int fd, uint32_t *zone_mode, char *zone_str, size_t zone_str_len)
{
 struct disk_zone_args zone_args;
 int error;

 bzero(&zone_args, sizeof(zone_args));

 zone_args.zone_cmd = DISK_ZONE_GET_PARAMS;
 error = ioctl(fd, DIOCZONECMD, &zone_args);

 if (error == 0) {
  *zone_mode = zone_args.zone_params.disk_params.zone_mode;

  switch (*zone_mode) {
  case 128:
   snprintf(zone_str, zone_str_len, "Not_Zoned");
   break;
  case 130:
   snprintf(zone_str, zone_str_len, "Host_Aware");
   break;
  case 131:
   snprintf(zone_str, zone_str_len, "Drive_Managed");
   break;
  case 129:
   snprintf(zone_str, zone_str_len, "Host_Managed");
   break;
  default:
   snprintf(zone_str, zone_str_len, "Unknown_zone_mode_%u",
       *zone_mode);
   break;
  }
 }
 return (error);
}
