
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint16_t ;
struct mprs_btdh_mapping {void* DevHandle; void* TargetID; void* Bus; } ;


 int MPTIOCTL_BTDH_MAPPING ;
 int errno ;
 int ioctl (int,int ,struct mprs_btdh_mapping*) ;
 int warn (char*) ;

int
mps_map_btdh(int fd, uint16_t *devhandle, uint16_t *bus, uint16_t *target)
{
 int error;
 struct mprs_btdh_mapping map;

 map.Bus = *bus;
 map.TargetID = *target;
 map.DevHandle = *devhandle;

 if ((error = ioctl(fd, MPTIOCTL_BTDH_MAPPING, &map)) != 0) {
  error = errno;
  warn("Failed to map bus/target/device");
  return (error);
 }

 *bus = map.Bus;
 *target = map.TargetID;
 *devhandle = map.DevHandle;

 return (0);
}
