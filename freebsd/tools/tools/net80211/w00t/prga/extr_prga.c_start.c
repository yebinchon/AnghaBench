
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int prga_len; int mtu; int data_len; int state; scalar_t__ frag; int seq; scalar_t__ data_try; int data; int data_ptr; } ;


 int S_SEND_FRAG ;
 int assert (int) ;
 int memcpy (int ,char*,int) ;
 int memset (int ,int ,int) ;

void start(struct params *p)
{
 int len;

 len = p->prga_len;
 len -= 4;
 assert(len > 0);

 len *= 4;
 if (len > p->mtu)
  len = p->mtu;

 p->data_len = len;
 memset(p->data, 0, p->data_len);
 memcpy(p->data, "\xaa\xaa\x03\x00\x00\x00\x08\x06", 8);
 p->data_ptr = p->data;
 p->data_try = 0;
 p->seq++;
 p->frag = 0;
 p->state = S_SEND_FRAG;
}
