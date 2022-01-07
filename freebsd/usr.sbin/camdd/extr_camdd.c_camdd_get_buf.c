
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct camdd_dev {int free_indirect_queue; int free_queue; } ;
struct camdd_buf_data {int alloc_len; int * buf; } ;
struct TYPE_2__ {struct camdd_buf_data data; } ;
struct camdd_buf {int buf_type; struct camdd_dev* dev; int src_list; TYPE_1__ buf_type_spec; } ;
typedef int camdd_buf_type ;




 struct camdd_buf* STAILQ_FIRST (int *) ;
 int STAILQ_INIT (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int bzero (struct camdd_buf*,int) ;
 struct camdd_buf* camdd_alloc_buf (struct camdd_dev*,int) ;
 int links ;
 int warnx (char*,int) ;

struct camdd_buf *
camdd_get_buf(struct camdd_dev *dev, camdd_buf_type buf_type)
{
 struct camdd_buf *buf = ((void*)0);

 switch (buf_type) {
 case 129:
  buf = STAILQ_FIRST(&dev->free_queue);
  if (buf != ((void*)0)) {
   struct camdd_buf_data *data;
   uint8_t *data_ptr;
   uint32_t alloc_len;

   STAILQ_REMOVE_HEAD(&dev->free_queue, links);
   data = &buf->buf_type_spec.data;
   data_ptr = data->buf;
   alloc_len = data->alloc_len;
   bzero(buf, sizeof(*buf));
   data->buf = data_ptr;
   data->alloc_len = alloc_len;
  }
  break;
 case 128:
  buf = STAILQ_FIRST(&dev->free_indirect_queue);
  if (buf != ((void*)0)) {
   STAILQ_REMOVE_HEAD(&dev->free_indirect_queue, links);

   bzero(buf, sizeof(*buf));
  }
  break;
 default:
  warnx("Unknown buffer type %d requested", buf_type);
  break;
 }


 if (buf == ((void*)0))
  return (camdd_alloc_buf(dev, buf_type));
 else {
  STAILQ_INIT(&buf->src_list);
  buf->dev = dev;
  buf->buf_type = buf_type;

  return (buf);
 }
}
