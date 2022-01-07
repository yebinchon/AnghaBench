
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
struct TYPE_3__ {int * node; int clock_seq_low; int clock_seq_hi_and_reserved; int time_hi_and_version; int time_mid; int time_low; } ;
typedef TYPE_1__ mkimg_uuid_t ;


 int le16enc (int *,int ) ;
 int le32enc (int *,int ) ;

void
mkimg_uuid_enc(void *buf, const mkimg_uuid_t *uuid)
{
 uint8_t *p = buf;
 u_int i;

 le32enc(p, uuid->time_low);
 le16enc(p + 4, uuid->time_mid);
 le16enc(p + 6, uuid->time_hi_and_version);
 p[8] = uuid->clock_seq_hi_and_reserved;
 p[9] = uuid->clock_seq_low;
 for (i = 0; i < 6; i++)
  p[10 + i] = uuid->node[i];
}
