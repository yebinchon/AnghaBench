
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,char*,int) ;
 int MAMBO_DISK_INFO ;
 int MAMBO_INFO_DEVSZ ;
 scalar_t__ mambocall (int ,int ,int) ;

__attribute__((used)) static void
mambodisk_identify(driver_t *driver, device_t parent)
{
 int i = 0;

 for (i = 0; mambocall(MAMBO_DISK_INFO,MAMBO_INFO_DEVSZ,i) > 0; i++)
  BUS_ADD_CHILD(parent,0,"mambodisk",i);
}
