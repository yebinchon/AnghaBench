
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct csrhdr {int info_len; } ;
struct csrdirectory {scalar_t__ crc_len; } ;
struct crom_context {int depth; TYPE_1__* stack; } ;
struct TYPE_2__ {scalar_t__ index; struct csrdirectory* dir; } ;



void
crom_init_context(struct crom_context *cc, uint32_t *p)
{
 struct csrhdr *hdr;

 hdr = (struct csrhdr *)p;
 if (hdr->info_len <= 1) {

  cc->depth = -1;
  return;
 }
 p += 1 + hdr->info_len;


 if (((struct csrdirectory *)p)->crc_len == 0) {
  cc->depth = -1;
  return;
 }
 cc->depth = 0;
 cc->stack[0].dir = (struct csrdirectory *)p;
 cc->stack[0].index = 0;
}
