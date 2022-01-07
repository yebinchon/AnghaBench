
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct uuid {int * node; int clock_seq_low; int clock_seq_hi_and_reserved; int time_hi_and_version; int time_mid; int time_low; } ;


 int _UUID_NODE_LEN ;
 int le16enc (int *,int ) ;
 int le32enc (int *,int ) ;

void
le_uuid_enc(void *buf, struct uuid const *uuid)
{
 u_char *p;
 int i;

 p = buf;
 le32enc(p, uuid->time_low);
 le16enc(p + 4, uuid->time_mid);
 le16enc(p + 6, uuid->time_hi_and_version);
 p[8] = uuid->clock_seq_hi_and_reserved;
 p[9] = uuid->clock_seq_low;
 for (i = 0; i < _UUID_NODE_LEN; i++)
  p[10 + i] = uuid->node[i];
}
