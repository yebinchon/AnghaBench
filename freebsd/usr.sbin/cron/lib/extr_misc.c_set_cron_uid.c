
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR_EXIT ;
 scalar_t__ OK ;
 int ROOT_UID ;
 int err (int ,char*) ;
 scalar_t__ seteuid (int ) ;
 scalar_t__ setuid (int ) ;

void
set_cron_uid()
{




 if (setuid(ROOT_UID) < OK)
  err(ERROR_EXIT, "setuid");

}
