
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct cb_file {TYPE_1__ cf_u; scalar_t__ cf_isdir; } ;
typedef size_t ssize_t ;


 int EINVAL ;
 size_t read (int ,void*,size_t) ;

__attribute__((used)) static int
cb_read(void *arg, void *h, void *buf, size_t size, size_t *resid)
{
 struct cb_file *cf = h;
 ssize_t sz;

 if (cf->cf_isdir)
  return (EINVAL);
 sz = read(cf->cf_u.fd, buf, size);
 if (sz < 0)
  return (EINVAL);
 *resid = size - sz;
 return (0);
}
