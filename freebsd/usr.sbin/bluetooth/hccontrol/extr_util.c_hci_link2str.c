
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE (char const* const*) ;

char const *
hci_link2str(int link_type)
{
 static char const * const t[] = {
                        "SCO",
                        "ACL"
 };

 return (link_type >= SIZE(t)? "?" : t[link_type]);
}
