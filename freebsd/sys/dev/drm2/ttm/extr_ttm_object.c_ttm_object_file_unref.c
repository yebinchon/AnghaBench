
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_object_file {int refcount; } ;


 scalar_t__ refcount_release (int *) ;
 int ttm_object_file_destroy (struct ttm_object_file*) ;

__attribute__((used)) static inline void ttm_object_file_unref(struct ttm_object_file **p_tfile)
{
 struct ttm_object_file *tfile = *p_tfile;

 *p_tfile = ((void*)0);
 if (refcount_release(&tfile->refcount))
  ttm_object_file_destroy(tfile);
}
