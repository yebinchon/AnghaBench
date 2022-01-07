
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_iterator {int size; int * buffer; struct gcov_info* info; } ;
struct gcov_info {int dummy; } ;


 int M_GCOV ;
 int M_NOWAIT ;
 int M_ZERO ;
 int convert_to_gcda (int *,struct gcov_info*) ;
 int free (struct gcov_iterator*,int ) ;
 void* malloc (int,int ,int) ;

struct gcov_iterator *
gcov_iter_new(struct gcov_info *info)
{
 struct gcov_iterator *iter;

 iter = malloc(sizeof(struct gcov_iterator), M_GCOV, M_NOWAIT|M_ZERO);
 if (iter == ((void*)0))
  goto err_free;

 iter->info = info;

 iter->size = convert_to_gcda(((void*)0), info);
 iter->buffer = malloc(iter->size, M_GCOV, M_NOWAIT);
 if (!iter->buffer)
  goto err_free;

 convert_to_gcda(iter->buffer, info);

 return iter;

err_free:
 free(iter, M_GCOV);
 return (((void*)0));
}
