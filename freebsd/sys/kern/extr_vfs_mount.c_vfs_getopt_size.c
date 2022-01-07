
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsoptlist {int dummy; } ;
typedef scalar_t__ quad_t ;
typedef scalar_t__ off_t ;


 int EINVAL ;
 scalar_t__ strtoq (char*,char**,int ) ;
 int vfs_getopt (struct vfsoptlist*,char const*,void**,int*) ;

int
vfs_getopt_size(struct vfsoptlist *opts, const char *name, off_t *value)
{
 char *opt_value, *vtp;
 quad_t iv;
 int error, opt_len;

 error = vfs_getopt(opts, name, (void **)&opt_value, &opt_len);
 if (error != 0)
  return (error);
 if (opt_len == 0 || opt_value == ((void*)0))
  return (EINVAL);
 if (opt_value[0] == '\0' || opt_value[opt_len - 1] != '\0')
  return (EINVAL);
 iv = strtoq(opt_value, &vtp, 0);
 if (vtp == opt_value || (vtp[0] != '\0' && vtp[1] != '\0'))
  return (EINVAL);
 if (iv < 0)
  return (EINVAL);
 switch (vtp[0]) {
 case 't': case 'T':
  iv *= 1024;

 case 'g': case 'G':
  iv *= 1024;

 case 'm': case 'M':
  iv *= 1024;

 case 'k': case 'K':
  iv *= 1024;
 case '\0':
  break;
 default:
  return (EINVAL);
 }
 *value = iv;

 return (0);
}
