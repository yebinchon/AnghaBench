
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_query_disk {char const* devname; } ;
typedef int buf ;
typedef int U8 ;


 scalar_t__ mpt_query_disk (int,int,struct mpt_query_disk*) ;
 int snprintf (char*,int,char*,int,...) ;

const char *
mpt_volume_name(U8 VolumeBus, U8 VolumeID)
{
 static struct mpt_query_disk info;
 static char buf[16];

 if (mpt_query_disk(VolumeBus, VolumeID, &info) != 0) {





  if (VolumeBus == 0)
   snprintf(buf, sizeof(buf), "%d", VolumeID);
  else
   snprintf(buf, sizeof(buf), "%d:%d", VolumeBus,
       VolumeID);
  return (buf);
 }
 return (info.devname);
}
