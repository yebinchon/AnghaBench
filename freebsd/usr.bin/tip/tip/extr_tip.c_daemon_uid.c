
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int euid ;
 int seteuid (int ) ;
 scalar_t__ uidswapped ;

void
daemon_uid(void)
{

 if (uidswapped) {
  seteuid(euid);
  uidswapped = 0;
 }
}
