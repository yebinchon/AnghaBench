
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncprange {int dummy; } ;






 char const* ncprange_ntoa (struct ncprange*) ;

__attribute__((used)) static const char *
addrstr(struct ncprange *addr, unsigned type)
{
  switch (type) {
    case 128:
      return "MYADDR";
    case 129:
      return "HISADDR";
    case 131:
      return "DNS0";
    case 130:
      return "DNS1";
  }
  return ncprange_ntoa(addr);
}
