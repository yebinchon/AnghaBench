
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ strtoul (char const*,char**,int ) ;

__attribute__((used)) static int
parse_val_mask_param(const char *s, uint32_t *val, uint32_t *mask,
    uint32_t default_mask)
{
 char *p;

 *mask = default_mask;
 *val = strtoul(s, &p, 0);
 if (p == s || *val > default_mask)
  return -1;
 if (*p == ':' && p[1])
  *mask = strtoul(p + 1, &p, 0);
 return *p || *mask > default_mask ? -1 : 0;
}
