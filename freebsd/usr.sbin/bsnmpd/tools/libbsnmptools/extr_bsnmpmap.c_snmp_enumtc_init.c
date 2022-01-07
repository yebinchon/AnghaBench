
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enum_type {int * name; } ;


 int LOG_ERR ;
 struct enum_type* calloc (int,int) ;
 int errno ;
 int free (struct enum_type*) ;
 int * strdup (char*) ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;

struct enum_type *
snmp_enumtc_init(char *name)
{
 struct enum_type *enum_tc;

 if ((enum_tc = calloc(1, sizeof(struct enum_type))) == ((void*)0)) {
  syslog(LOG_ERR, "malloc() failed: %s", strerror(errno));
  return (((void*)0));
 }

 if ((enum_tc->name = strdup(name)) == ((void*)0)) {
  syslog(LOG_ERR, "malloc() failed: %s", strerror(errno));
  free(enum_tc);
  return (((void*)0));
 }

 return (enum_tc);
}
