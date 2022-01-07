
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chdir_notify_register (char const*,int ,char**) ;
 int reparent_cb ;

void chdir_notify_reparent(const char *name, char **path)
{
 chdir_notify_register(name, reparent_cb, path);
}
