
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ e_FmMacExceptions ;
struct TYPE_2__ {scalar_t__ num; char const* str; } ;


 scalar_t__ DTSEC_MAC_EXCEPTIONS_END ;
 TYPE_1__* dtsec_fm_mac_exceptions ;

__attribute__((used)) static const char *
dtsec_fm_mac_ex_to_str(e_FmMacExceptions exception)
{
 int i;

 for (i = 0; dtsec_fm_mac_exceptions[i].num != exception &&
     dtsec_fm_mac_exceptions[i].num != DTSEC_MAC_EXCEPTIONS_END; ++i)
  ;

 if (dtsec_fm_mac_exceptions[i].num == DTSEC_MAC_EXCEPTIONS_END)
  return ("<Unknown Exception>");

 return (dtsec_fm_mac_exceptions[i].str);
}
