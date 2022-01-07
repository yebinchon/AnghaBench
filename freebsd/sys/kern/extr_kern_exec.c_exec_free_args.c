
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_args {int * fdp; int * fname_buf; int * buf; int bufkva; } ;


 int M_TEMP ;
 int exec_free_args_kva (int ) ;
 int fdescfree_remapped (int *) ;
 int free (int *,int ) ;

void
exec_free_args(struct image_args *args)
{

 if (args->buf != ((void*)0)) {
  exec_free_args_kva(args->bufkva);
  args->buf = ((void*)0);
 }
 if (args->fname_buf != ((void*)0)) {
  free(args->fname_buf, M_TEMP);
  args->fname_buf = ((void*)0);
 }
 if (args->fdp != ((void*)0))
  fdescfree_remapped(args->fdp);
}
