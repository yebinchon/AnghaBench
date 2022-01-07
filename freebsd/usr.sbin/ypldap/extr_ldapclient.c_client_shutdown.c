
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _exit (int ) ;
 int log_info (char*) ;

void
client_shutdown(void)
{
 log_info("ldap client exiting");
 _exit(0);
}
