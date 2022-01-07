
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int buf; } ;
struct gcov_iterator {int dummy; } ;


 int EINVAL ;
 scalar_t__ gcov_iter_write (struct gcov_iterator*,int ) ;

__attribute__((used)) static int
gcov_seq_show(struct seq_file *seq, void *data)
{
 struct gcov_iterator *iter = data;

 if (gcov_iter_write(iter, seq->buf))
  return (-EINVAL);
 return (0);
}
