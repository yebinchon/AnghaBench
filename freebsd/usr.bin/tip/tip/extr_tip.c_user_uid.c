
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int seteuid (int ) ;
 int uid ;
 int uidswapped ;

void
user_uid(void)
{
 if (uidswapped == 0) {
  seteuid(uid);
  uidswapped = 1;
 }
}
