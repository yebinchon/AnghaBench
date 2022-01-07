
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct per_user_data {int user_data_lock; int file_offset; int gmap_tree; int gref_tree; } ;
struct file_offset_struct {int count; scalar_t__ file_offset; } ;
struct cdev {int dummy; } ;


 int MAX_OFFSET_COUNT ;
 int MTX_DEF ;
 int M_GNTDEV ;
 int M_WAITOK ;
 int M_ZERO ;
 int RB_INIT (int *) ;
 int RB_INSERT (int ,int *,struct file_offset_struct*) ;
 int devfs_set_cdevpriv (struct per_user_data*,int (*) (struct per_user_data*)) ;
 int file_offset_head ;
 void* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int per_user_data_dtor (struct per_user_data*) ;

__attribute__((used)) static int
gntdev_open(struct cdev *dev, int flag, int otyp, struct thread *td)
{
 int error;
 struct per_user_data *priv_user;
 struct file_offset_struct *offset;

 priv_user = malloc(sizeof(*priv_user), M_GNTDEV, M_WAITOK | M_ZERO);
 RB_INIT(&priv_user->gref_tree);
 RB_INIT(&priv_user->gmap_tree);
 RB_INIT(&priv_user->file_offset);
 offset = malloc(sizeof(*offset), M_GNTDEV, M_WAITOK | M_ZERO);
 offset->file_offset = 0;
 offset->count = MAX_OFFSET_COUNT;
 RB_INSERT(file_offset_head, &priv_user->file_offset, offset);
 mtx_init(&priv_user->user_data_lock,
     "per user data mutex", ((void*)0), MTX_DEF);

 error = devfs_set_cdevpriv(priv_user, per_user_data_dtor);
 if (error != 0)
  per_user_data_dtor(priv_user);

 return (error);
}
