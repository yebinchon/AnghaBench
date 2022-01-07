
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_iterator {struct gcov_iterator* buffer; } ;


 int M_GCOV ;
 int free (struct gcov_iterator*,int ) ;

void
gcov_iter_free(struct gcov_iterator *iter)
{
 free(iter->buffer, M_GCOV);
 free(iter, M_GCOV);
}
