
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ber {int * br_rend; void* br_rptr; void* br_rbuf; } ;



void
ber_set_readbuf(struct ber *b, void *buf, size_t len)
{
 b->br_rbuf = b->br_rptr = buf;
 b->br_rend = (u_int8_t *)buf + len;
}
