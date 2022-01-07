
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int dump_keys_file () ;
 int read_config_file () ;
 int read_keys_file () ;
 int syslog (int ,char*,int) ;

__attribute__((used)) static void
sighup(int s)
{
 syslog(LOG_DEBUG, "Got SIGHUP (%d)", s);

 dump_keys_file();
 read_config_file();
 read_keys_file();
}
