
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fail_point_setting {int feq_mtx; int fp_entry_queue; struct fail_point* fs_parent; } ;
struct fail_point {int dummy; } ;


 int MTX_SPIN ;
 int TAILQ_INIT (int *) ;
 int fail_point_setting_garbage_append (struct fail_point_setting*) ;
 struct fail_point_setting* fs_malloc () ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static struct fail_point_setting *
fail_point_setting_new(struct fail_point *fp)
{
 struct fail_point_setting *fs_new;

 fs_new = fs_malloc();
 fs_new->fs_parent = fp;
 TAILQ_INIT(&fs_new->fp_entry_queue);
 mtx_init(&fs_new->feq_mtx, "fail point entries", ((void*)0), MTX_SPIN);

 fail_point_setting_garbage_append(fs_new);

 return (fs_new);
}
