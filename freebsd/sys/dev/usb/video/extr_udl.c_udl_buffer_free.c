
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct udl_buffer {int size; } ;


 int TAILQ_INSERT_TAIL (int *,struct udl_buffer*,int ) ;
 int entry ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int udl_buffer_head ;
 int udl_buffer_mtx ;

__attribute__((used)) static void
udl_buffer_free(void *_buf, uint32_t size)
{
 struct udl_buffer *buf;


 if (_buf == ((void*)0))
  return;

 buf = (struct udl_buffer *)(((uint8_t *)_buf) + size);





 mtx_lock(&udl_buffer_mtx);
 buf->size = size;
 TAILQ_INSERT_TAIL(&udl_buffer_head, buf, entry);
 mtx_unlock(&udl_buffer_mtx);
}
