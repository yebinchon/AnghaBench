
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int exit (int) ;
 int syslog (int ,char*) ;

void out_of_mem()
{
 syslog(LOG_ERR, "out of memory");
 exit(2);
}
