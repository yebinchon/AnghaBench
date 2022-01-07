
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int dir; } ;
struct cb_file {TYPE_1__ cf_u; scalar_t__ cf_isdir; } ;


 int close (int ) ;
 int closedir (int ) ;
 int free (struct cb_file*) ;

__attribute__((used)) static int
cb_close(void *arg, void *h)
{
 struct cb_file *cf = h;

 if (cf->cf_isdir)
  closedir(cf->cf_u.dir);
 else
  close(cf->cf_u.fd);
 free(cf);

 return (0);
}
