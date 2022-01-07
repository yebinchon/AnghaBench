
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_BUS ;
 int devctl_queue_data_f (char*,int) ;
 char* malloc (int,int ,int) ;
 int snprintf (char*,int,char*,char const*,char const*,char const*,...) ;
 scalar_t__ strlen (char const*) ;

void
devctl_notify_f(const char *system, const char *subsystem, const char *type,
    const char *data, int flags)
{
 int len = 0;
 char *msg;

 if (system == ((void*)0))
  return;
 if (subsystem == ((void*)0))
  return;
 if (type == ((void*)0))
  return;
 len += strlen(" system=") + strlen(system);
 len += strlen(" subsystem=") + strlen(subsystem);
 len += strlen(" type=") + strlen(type);

 if (data != ((void*)0))
  len += strlen(data);
 len += 3;
 msg = malloc(len, M_BUS, flags);
 if (msg == ((void*)0))
  return;
 if (data != ((void*)0))
  snprintf(msg, len, "!system=%s subsystem=%s type=%s %s\n",
      system, subsystem, type, data);
 else
  snprintf(msg, len, "!system=%s subsystem=%s type=%s\n",
      system, subsystem, type);
 devctl_queue_data_f(msg, flags);
}
