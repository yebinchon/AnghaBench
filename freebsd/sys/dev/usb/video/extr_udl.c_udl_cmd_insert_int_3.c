
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct udl_cmd_buf {scalar_t__ off; scalar_t__ buf; } ;


 int bcopy (int*,scalar_t__,int) ;
 int htobe32 (int) ;

__attribute__((used)) static void
udl_cmd_insert_int_3(struct udl_cmd_buf *cb, uint32_t value)
{
 uint32_t lvalue;


 lvalue = htobe32(value) << 8;



 bcopy(&lvalue, cb->buf + cb->off, 3);

 cb->off += 3;
}
