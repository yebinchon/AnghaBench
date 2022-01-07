
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct camdd_buf_data {int fill_len; } ;
struct TYPE_2__ {struct camdd_buf_data data; } ;
struct camdd_buf {scalar_t__ buf_type; int src_count; int src_list; TYPE_1__ buf_type_spec; } ;


 scalar_t__ CAMDD_BUF_DATA ;
 int STAILQ_INSERT_TAIL (int *,struct camdd_buf*,int ) ;
 int assert (int) ;
 scalar_t__ camdd_buf_get_len (struct camdd_buf*) ;
 int src_links ;

void
camdd_buf_add_child(struct camdd_buf *buf, struct camdd_buf *child_buf)
{
 struct camdd_buf_data *data;

 assert(buf->buf_type == CAMDD_BUF_DATA);

 data = &buf->buf_type_spec.data;

 STAILQ_INSERT_TAIL(&buf->src_list, child_buf, src_links);
 buf->src_count++;

 data->fill_len += camdd_buf_get_len(child_buf);
}
