
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ROOT_UID ;
 int WHEEL_GID ;
 int setregid (int ,int ) ;
 int setreuid (int ,int ) ;

int
restoreprivilege(void)
{
 int error;

 error = setreuid(ROOT_UID, ROOT_UID);
 if (error)
  return (error);

 error = setregid(WHEEL_GID, WHEEL_GID);
 if (error)
  return (error);

 return (0);
}
