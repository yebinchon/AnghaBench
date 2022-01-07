
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tools_context {int access_type; int tdev; } ;
struct thread {int dummy; } ;
struct cdev {int si_drv1; } ;


 int MLX5_FPGA_ACCESS_TYPE_DONTCARE ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int devfs_set_cdevpriv (struct tools_context*,int ) ;
 struct tools_context* malloc (int,int ,int ) ;
 int tools_char_ctx_dtor ;

__attribute__((used)) static int
tools_char_open(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 struct tools_context *context;

 context = malloc(sizeof(*context), M_DEVBUF, M_WAITOK);
 context->tdev = dev->si_drv1;
 context->access_type = MLX5_FPGA_ACCESS_TYPE_DONTCARE;
 devfs_set_cdevpriv(context, tools_char_ctx_dtor);
 return (0);
}
