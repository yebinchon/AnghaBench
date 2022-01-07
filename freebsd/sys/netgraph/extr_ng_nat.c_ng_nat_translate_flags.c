
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NG_NAT_DENY_INCOMING ;
 unsigned int NG_NAT_LOG ;
 unsigned int NG_NAT_PROXY_ONLY ;
 unsigned int NG_NAT_RESET_ON_ADDR_CHANGE ;
 unsigned int NG_NAT_REVERSE ;
 unsigned int NG_NAT_SAME_PORTS ;
 unsigned int NG_NAT_UNREGISTERED_ONLY ;
 unsigned int PKT_ALIAS_DENY_INCOMING ;
 unsigned int PKT_ALIAS_LOG ;
 unsigned int PKT_ALIAS_PROXY_ONLY ;
 unsigned int PKT_ALIAS_RESET_ON_ADDR_CHANGE ;
 unsigned int PKT_ALIAS_REVERSE ;
 unsigned int PKT_ALIAS_SAME_PORTS ;
 unsigned int PKT_ALIAS_UNREGISTERED_ONLY ;

__attribute__((used)) static unsigned int
ng_nat_translate_flags(unsigned int x)
{
 unsigned int res = 0;

 if (x & NG_NAT_LOG)
  res |= PKT_ALIAS_LOG;
 if (x & NG_NAT_DENY_INCOMING)
  res |= PKT_ALIAS_DENY_INCOMING;
 if (x & NG_NAT_SAME_PORTS)
  res |= PKT_ALIAS_SAME_PORTS;
 if (x & NG_NAT_UNREGISTERED_ONLY)
  res |= PKT_ALIAS_UNREGISTERED_ONLY;
 if (x & NG_NAT_RESET_ON_ADDR_CHANGE)
  res |= PKT_ALIAS_RESET_ON_ADDR_CHANGE;
 if (x & NG_NAT_PROXY_ONLY)
  res |= PKT_ALIAS_PROXY_ONLY;
 if (x & NG_NAT_REVERSE)
  res |= PKT_ALIAS_REVERSE;

 return (res);
}
