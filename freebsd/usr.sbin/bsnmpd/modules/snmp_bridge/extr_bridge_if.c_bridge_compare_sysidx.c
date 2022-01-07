
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int LOG_ERR ;
 char* bridge_if_find_name (scalar_t__) ;
 int strcmp (char const*,char const*) ;
 int syslog (int ,char*,scalar_t__) ;

int
bridge_compare_sysidx(uint32_t i1, uint32_t i2)
{
 int c;
 const char *b1, *b2;

 if (i1 == i2)
  return (0);

 if ((b1 = bridge_if_find_name(i1)) == ((void*)0)) {
  syslog(LOG_ERR, "Bridge interface %d does not exist", i1);
  return (-2);
 }

 if ((b2 = bridge_if_find_name(i2)) == ((void*)0)) {
  syslog(LOG_ERR, "Bridge interface %d does not exist", i2);
  return (-2);
 }

 if ((c = strcmp(b1, b2)) < 0)
  return (-1);
 else if (c > 0)
  return (1);

 return (0);
}
