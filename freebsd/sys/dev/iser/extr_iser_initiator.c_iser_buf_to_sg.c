
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct scatterlist {int dummy; } ;
struct iser_data_buf {size_t data_len; int size; struct scatterlist* sgl; } ;


 uintptr_t PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 size_t min (scalar_t__,size_t) ;
 int sg_mark_end (struct scatterlist*) ;
 int sg_set_buf (struct scatterlist*,void*,size_t) ;

__attribute__((used)) static void
iser_buf_to_sg(void *buf, struct iser_data_buf *data_buf)
{
 struct scatterlist *sg;
 int i;
 size_t len, tlen;
 int offset;

 tlen = data_buf->data_len;

 for (i = 0; 0 < tlen; i++, tlen -= len) {
  sg = &data_buf->sgl[i];
  offset = ((uintptr_t)buf) & ~PAGE_MASK;
  len = min(PAGE_SIZE - offset, tlen);
  sg_set_buf(sg, buf, len);
  buf = (void *)(((u64)buf) + (u64)len);
 }

 data_buf->size = i;
 sg_mark_end(sg);
}
