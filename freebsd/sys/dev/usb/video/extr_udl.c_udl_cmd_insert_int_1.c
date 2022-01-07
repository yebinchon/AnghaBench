
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct udl_cmd_buf {size_t off; int * buf; } ;



__attribute__((used)) static void
udl_cmd_insert_int_1(struct udl_cmd_buf *cb, uint8_t value)
{

 cb->buf[cb->off] = value;
 cb->off += 1;
}
