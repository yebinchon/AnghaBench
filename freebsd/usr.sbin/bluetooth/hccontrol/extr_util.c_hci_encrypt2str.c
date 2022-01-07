
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE (char const* const*) ;

char const *
hci_encrypt2str(int encrypt, int brief)
{
 static char const * const t[] = {
             "Disabled",
             "Only for point-to-point packets",
             "Both point-to-point and broadcast packets"
 };

 static char const * const t1[] = {
                                    "NONE",
                                    "P2P",
                                    "ALL",
 };

 if (brief)
  return (encrypt >= SIZE(t1)? "?" : t1[encrypt]);

 return (encrypt >= SIZE(t)? "?" : t[encrypt]);
}
