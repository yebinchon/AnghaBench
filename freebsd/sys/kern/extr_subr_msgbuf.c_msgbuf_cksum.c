
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef size_t u_char ;
struct msgbuf {size_t msg_size; scalar_t__* msg_ptr; } ;



__attribute__((used)) static u_int
msgbuf_cksum(struct msgbuf *mbp)
{
 u_int i, sum;

 sum = 0;
 for (i = 0; i < mbp->msg_size; i++)
  sum += (u_char)mbp->msg_ptr[i];
 return (sum);
}
