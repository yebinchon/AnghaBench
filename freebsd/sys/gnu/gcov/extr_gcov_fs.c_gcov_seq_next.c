
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef void gcov_iterator ;
typedef int off_t ;


 scalar_t__ gcov_iter_next (void*) ;

__attribute__((used)) static void *
gcov_seq_next(struct seq_file *seq, void *data, off_t *pos)
{
 struct gcov_iterator *iter = data;

 if (gcov_iter_next(iter))
  return ((void*)0);
 (*pos)++;

 return iter;
}
