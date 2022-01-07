
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct camdd_dev {int blocksize; } ;
struct camdd_buf_data {int alloc_len; int * buf; } ;
struct TYPE_2__ {struct camdd_buf_data data; } ;
struct camdd_buf {int buf_type; int src_list; TYPE_1__ buf_type_spec; struct camdd_dev* dev; } ;
typedef int camdd_buf_type ;




 int STAILQ_INIT (int *) ;
 struct camdd_buf* calloc (int,int) ;
 int free (int *) ;
 int * malloc (int) ;
 int warn (char*,int) ;

__attribute__((used)) static struct camdd_buf *
camdd_alloc_buf(struct camdd_dev *dev, camdd_buf_type buf_type)
{
 struct camdd_buf *buf = ((void*)0);
 uint8_t *data_ptr = ((void*)0);




 switch (buf_type) {
 case 129:
  data_ptr = malloc(dev->blocksize);
  if (data_ptr == ((void*)0)) {
   warn("unable to allocate %u bytes", dev->blocksize);
   goto bailout_error;
  }
  break;
 default:
  break;
 }

 buf = calloc(1, sizeof(*buf));
 if (buf == ((void*)0)) {
  warn("unable to allocate %zu bytes", sizeof(*buf));
  goto bailout_error;
 }

 buf->buf_type = buf_type;
 buf->dev = dev;
 switch (buf_type) {
 case 129: {
  struct camdd_buf_data *data;

  data = &buf->buf_type_spec.data;

  data->alloc_len = dev->blocksize;
  data->buf = data_ptr;
  break;
 }
 case 128:
  break;
 default:
  break;
 }
 STAILQ_INIT(&buf->src_list);

 return (buf);

bailout_error:
 free(data_ptr);

 return (((void*)0));
}
