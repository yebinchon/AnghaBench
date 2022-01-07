
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct dirent {size_t d_namlen; int d_name; int d_type; int d_fileno; } ;
struct TYPE_2__ {int dir; } ;
struct cb_file {TYPE_1__ cf_u; int cf_isdir; } ;


 int EINVAL ;
 int ENOENT ;
 int memcpy (char*,int ,size_t) ;
 struct dirent* readdir (int ) ;

__attribute__((used)) static int
cb_readdir(void *arg, void *h, uint32_t *fileno_return, uint8_t *type_return,
    size_t *namelen_return, char *name)
{
 struct cb_file *cf = h;
 struct dirent *dp;

 if (!cf->cf_isdir)
  return (EINVAL);

 dp = readdir(cf->cf_u.dir);
 if (!dp)
  return (ENOENT);





 *fileno_return = dp->d_fileno;
 *type_return = dp->d_type;
 *namelen_return = dp->d_namlen;
 memcpy(name, dp->d_name, dp->d_namlen);
 name[dp->d_namlen] = 0;

 return (0);
}
