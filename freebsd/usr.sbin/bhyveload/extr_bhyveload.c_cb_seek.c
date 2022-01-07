
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int fd; } ;
struct cb_file {TYPE_1__ cf_u; scalar_t__ cf_isdir; } ;


 int EINVAL ;
 int errno ;
 scalar_t__ lseek (int ,int ,int) ;

__attribute__((used)) static int
cb_seek(void *arg, void *h, uint64_t offset, int whence)
{
 struct cb_file *cf = h;

 if (cf->cf_isdir)
  return (EINVAL);
 if (lseek(cf->cf_u.fd, offset, whence) < 0)
  return (errno);
 return (0);
}
