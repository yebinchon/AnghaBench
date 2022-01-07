
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {char* machine; char* nodename; char* sysname; char* release; char* version; } ;


 int TAILQ_INIT (int *) ;
 int defined_add (char*,char*) ;
 int defined_values ;
 int log_err (int,char*) ;
 int uname (struct utsname*) ;

void
defined_init(void)
{
 struct utsname name;
 int error;

 TAILQ_INIT(&defined_values);

 error = uname(&name);
 if (error != 0)
  log_err(1, "uname");

 defined_add("ARCH", name.machine);
 defined_add("CPU", name.machine);
 defined_add("DOLLAR", "$");
 defined_add("HOST", name.nodename);
 defined_add("OSNAME", name.sysname);
 defined_add("OSREL", name.release);
 defined_add("OSVERS", name.version);
}
