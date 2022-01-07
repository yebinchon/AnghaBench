
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct uuid {int clock_seq_hi_and_reserved; int clock_seq_low; int* node; void* time_hi_and_version; void* time_mid; int time_low; } ;


 int _UUID_NODE_LEN ;
 void* le16dec (int const*) ;
 int le32dec (int const*) ;

void
le_uuid_dec(void const *buf, struct uuid *uuid)
{
 u_char const *p;
 int i;

 p = buf;
 uuid->time_low = le32dec(p);
 uuid->time_mid = le16dec(p + 4);
 uuid->time_hi_and_version = le16dec(p + 6);
 uuid->clock_seq_hi_and_reserved = p[8];
 uuid->clock_seq_low = p[9];
 for (i = 0; i < _UUID_NODE_LEN; i++)
  uuid->node[i] = p[10 + i];
}
