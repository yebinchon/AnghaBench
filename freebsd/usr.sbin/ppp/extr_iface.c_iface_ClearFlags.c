
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IFACE_DELFLAGS ;
 int iface_ChangeFlags (char const*,int,int ) ;

int
iface_ClearFlags(const char *ifname, int flags)
{
  return iface_ChangeFlags(ifname, flags, IFACE_DELFLAGS);
}
