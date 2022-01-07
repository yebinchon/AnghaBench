
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct cdev {char* si_name; } ;


 int EEXIST ;
 int EINVAL ;
 int ENAMETOOLONG ;
 int MA_OWNED ;
 scalar_t__ devfs_dev_exists (char*) ;
 int devmtx ;
 scalar_t__ isspace (char) ;
 int mtx_assert (int *,int ) ;
 int vsnrprintf (char*,int,int,char const*,int ) ;

__attribute__((used)) static int
prep_devname(struct cdev *dev, const char *fmt, va_list ap)
{
 int len;
 char *from, *q, *s, *to;

 mtx_assert(&devmtx, MA_OWNED);

 len = vsnrprintf(dev->si_name, sizeof(dev->si_name), 32, fmt, ap);
 if (len > sizeof(dev->si_name) - 1)
  return (ENAMETOOLONG);


 for (from = dev->si_name; *from == '/'; from++)
  ;

 for (to = dev->si_name; *from != '\0'; from++, to++) {





  if (isspace(*from) || *from == '"')
   return (EINVAL);

  while (from[0] == '/' && from[1] == '/')
   from++;

  if (from[0] == '/' && from[1] == '\0')
   return (EINVAL);
  *to = *from;
 }
 *to = '\0';

 if (dev->si_name[0] == '\0')
  return (EINVAL);


 for (s = dev->si_name;;) {
  for (q = s; *q != '/' && *q != '\0'; q++)
   ;
  if (q - s == 1 && s[0] == '.')
   return (EINVAL);
  if (q - s == 2 && s[0] == '.' && s[1] == '.')
   return (EINVAL);
  if (*q != '/')
   break;
  s = q + 1;
 }

 if (devfs_dev_exists(dev->si_name) != 0)
  return (EEXIST);

 return (0);
}
