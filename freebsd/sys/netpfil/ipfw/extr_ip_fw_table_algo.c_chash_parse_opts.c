
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chash_cfg {int mask4; int mask6; } ;


 int EINVAL ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
chash_parse_opts(struct chash_cfg *cfg, char *data)
{
 char *pdel, *pend, *s;
 int mask4, mask6;

 mask4 = cfg->mask4;
 mask6 = cfg->mask6;

 if (data == ((void*)0))
  return (0);
 if ((pdel = strchr(data, ' ')) == ((void*)0))
  return (0);
 while (*pdel == ' ')
  pdel++;
 if (strncmp(pdel, "masks=", 6) != 0)
  return (EINVAL);
 if ((s = strchr(pdel, ' ')) != ((void*)0))
  *s++ = '\0';

 pdel += 6;

 if (*pdel++ != '/')
  return (EINVAL);
 mask4 = strtol(pdel, &pend, 10);
 if (*pend == ',') {

  pdel = pend + 1;
  if (*pdel++ != '/')
   return (EINVAL);
  mask6 = strtol(pdel, &pend, 10);
  if (*pend != '\0')
   return (EINVAL);
 } else if (*pend != '\0')
  return (EINVAL);

 if (mask4 < 0 || mask4 > 32 || mask6 < 0 || mask6 > 128)
  return (EINVAL);

 cfg->mask4 = mask4;
 cfg->mask6 = mask6;

 return (0);
}
