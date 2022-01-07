
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct camdd_buf_indirect {int len; } ;
struct camdd_buf_data {int fill_len; } ;
struct TYPE_2__ {struct camdd_buf_data data; struct camdd_buf_indirect indirect; } ;
struct camdd_buf {scalar_t__ buf_type; TYPE_1__ buf_type_spec; } ;


 scalar_t__ CAMDD_BUF_DATA ;

uint32_t
camdd_buf_get_len(struct camdd_buf *buf)
{
 uint32_t len = 0;

 if (buf->buf_type != CAMDD_BUF_DATA) {
  struct camdd_buf_indirect *indirect;

  indirect = &buf->buf_type_spec.indirect;
  len = indirect->len;
 } else {
  struct camdd_buf_data *data;

  data = &buf->buf_type_spec.data;
  len = data->fill_len;
 }

 return (len);
}
