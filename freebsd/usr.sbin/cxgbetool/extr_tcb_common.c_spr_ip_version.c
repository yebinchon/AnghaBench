
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
spr_ip_version(unsigned ip_version)
{
  char *ret="UNKNOWN";

  if ( 0 == ip_version) {ret = "IPv4";}
  else if ( 1 == ip_version) {ret = "IPv6";}

  return ret;
}
