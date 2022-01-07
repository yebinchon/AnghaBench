
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int tcode; } ;
struct TYPE_5__ {void** ld; TYPE_1__ common; } ;
struct fw_pkt {TYPE_2__ mode; } ;
struct TYPE_6__ {int hdr_len; } ;



 void* FWOHCI_DMA_READ (void*) ;
 scalar_t__ firewire_debug ;
 int printf (char*,...) ;
 TYPE_3__* tinfo ;

__attribute__((used)) static int
fwohci_arcv_swap(struct fw_pkt *fp, int len)
{
 struct fw_pkt *fp0;
 uint32_t ld0;
 int slen, hlen;

 int i;


 ld0 = FWOHCI_DMA_READ(fp->mode.ld[0]);



 fp0 = (struct fw_pkt *)&ld0;

 switch (fp0->mode.common.tcode) {
 case 133:
 case 128:
 case 129:
 case 131:
 case 137:
  slen = 12;
  break;
 case 134:
 case 130:
 case 136:
 case 132:
 case 135:
  slen = 16;
  break;
 default:
  printf("Unknown tcode %d\n", fp0->mode.common.tcode);
  return (0);
 }
 hlen = tinfo[fp0->mode.common.tcode].hdr_len;
 if (hlen > len) {
  if (firewire_debug)
   printf("splitted header\n");
  return (-hlen);
 }

 for (i = 0; i < slen/4; i++)
  fp->mode.ld[i] = FWOHCI_DMA_READ(fp->mode.ld[i]);

 return (hlen);
}
