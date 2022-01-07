
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENABLE_OFF ;
 int ENABLE_ON ;
 int ENABLE_UNSPECIFIED ;
 scalar_t__ strcasecmp (char const*,char*) ;

int
parse_enable(const char *enable)
{
 if (enable == ((void*)0))
  return (ENABLE_UNSPECIFIED);

 if (strcasecmp(enable, "on") == 0 ||
     strcasecmp(enable, "yes") == 0)
  return (ENABLE_ON);

 if (strcasecmp(enable, "off") == 0 ||
     strcasecmp(enable, "no") == 0)
  return (ENABLE_OFF);

 return (ENABLE_UNSPECIFIED);
}
