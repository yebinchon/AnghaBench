
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct ncprange {int ncprange_family; int ncprange_ip4width; int ncprange_ip6width; TYPE_1__ ncprange_ip4mask; } ;
struct ncpaddr {int dummy; } ;




 int NCP_ASCIIBUFFERSIZE ;
 char* ncpaddr_ntowa (struct ncpaddr*) ;
 int ncprange_getaddr (struct ncprange const*,struct ncpaddr*) ;
 scalar_t__ ntohl (int ) ;
 int snprintf (char*,int,char*,unsigned long) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;

const char *
ncprange_ntoa(const struct ncprange *range)
{
  char *res;
  struct ncpaddr addr;
  int len;

  if (!ncprange_getaddr(range, &addr))
    return "<AF_UNSPEC>";

  res = ncpaddr_ntowa(&addr);
  len = strlen(res);
  if (len >= NCP_ASCIIBUFFERSIZE - 1)
    return res;

  switch (range->ncprange_family) {
  case 129:
    if (range->ncprange_ip4width == -1) {

      for (; len >= 3; res[len -= 2] = '\0')
        if (strcmp(res + len - 2, ".0"))
          break;
      snprintf(res + len, sizeof res - len, "&0x%08lx",
               (unsigned long)ntohl(range->ncprange_ip4mask.s_addr));
    } else if (range->ncprange_ip4width < 32)
      snprintf(res + len, sizeof res - len, "/%d", range->ncprange_ip4width);

    return res;


  case 128:
    if (range->ncprange_ip6width != 128)
      snprintf(res + len, sizeof res - len, "/%d", range->ncprange_ip6width);

    return res;

  }

  return "<AF_UNSPEC>";
}
