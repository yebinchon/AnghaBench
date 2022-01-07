
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct gcov_iterator {scalar_t__ pos; scalar_t__ size; size_t buffer; } ;


 int EINVAL ;
 size_t ITER_STRIDE ;
 int sbuf_bcat (struct sbuf*,size_t,size_t) ;

int
gcov_iter_write(struct gcov_iterator *iter, struct sbuf *sbuf)
{
 size_t len;

 if (iter->pos >= iter->size)
  return (EINVAL);

 len = ITER_STRIDE;
 if (iter->pos + len > iter->size)
  len = iter->size - iter->pos;

 sbuf_bcat(sbuf, iter->buffer + iter->pos, len);

 return (0);
}
