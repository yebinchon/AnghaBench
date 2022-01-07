
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct udl_cmd_buf {int off; int * buf; } ;



__attribute__((used)) static void
udl_cmd_insert_buf_le16(struct udl_cmd_buf *cb, const uint8_t *buf, uint32_t len)
{
 uint32_t x;

 for (x = 0; x != len; x += 2) {

  cb->buf[cb->off + x + 0] = buf[x + 1];
  cb->buf[cb->off + x + 1] = buf[x + 0];
 }
 cb->off += len;
}
