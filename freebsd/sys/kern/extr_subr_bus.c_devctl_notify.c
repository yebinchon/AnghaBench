
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_NOWAIT ;
 int devctl_notify_f (char const*,char const*,char const*,char const*,int ) ;

void
devctl_notify(const char *system, const char *subsystem, const char *type,
    const char *data)
{

 devctl_notify_f(system, subsystem, type, data, M_NOWAIT);
}
