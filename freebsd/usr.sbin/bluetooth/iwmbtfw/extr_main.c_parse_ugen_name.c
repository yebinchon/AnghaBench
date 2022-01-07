
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ strtoul (char const*,char**,int) ;

__attribute__((used)) static int
parse_ugen_name(char const *ugen, uint8_t *bus, uint8_t *addr)
{
 char *ep;

 if (strncmp(ugen, "ugen", 4) != 0)
  return (-1);

 *bus = (uint8_t) strtoul(ugen + 4, &ep, 10);
 if (*ep != '.')
  return (-1);

 *addr = (uint8_t) strtoul(ep + 1, &ep, 10);
 if (*ep != '\0')
  return (-1);

 return (0);
}
