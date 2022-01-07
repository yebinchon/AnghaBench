
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct netmap_ring {TYPE_1__* slot; } ;
typedef int buf ;
struct TYPE_2__ {int buf_idx; int flags; } ;


 scalar_t__ isprint (unsigned char const) ;
 int memset (char*,char,int) ;
 int printf (char*,...) ;
 int sprintf (char*,char*,unsigned char const) ;

__attribute__((used)) static void
dump_payload(const char *_p, int len, struct netmap_ring *ring, int cur)
{
 char buf[128];
 int i, j, i0;
 const unsigned char *p = (const unsigned char *)_p;



 printf("ring %p cur %5d [buf %6d flags 0x%04x len %5d]\n",
  ring, cur, ring->slot[cur].buf_idx,
  ring->slot[cur].flags, len);

 for (i = 0; i < len; ) {
  memset(buf, ' ', sizeof(buf));
  sprintf(buf, "%5d: ", i);
  i0 = i;
  for (j=0; j < 16 && i < len; i++, j++)
   sprintf(buf+7+j*3, "%02x ", (uint8_t)(p[i]));
  i = i0;
  for (j=0; j < 16 && i < len; i++, j++)
   sprintf(buf+7+j + 48, "%c",
    isprint(p[i]) ? p[i] : '.');
  printf("%s\n", buf);
 }
}
