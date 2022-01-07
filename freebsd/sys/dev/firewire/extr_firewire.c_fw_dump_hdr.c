
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dst; int tlrt; int tcode; int pri; int src; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
struct fw_pkt {TYPE_2__ mode; } ;


 int printf (char*,char*,int,int,int,int,int,int) ;

__attribute__((used)) static void
fw_dump_hdr(struct fw_pkt *fp, char *prefix)
{
 printf("%s: dst=0x%02x tl=0x%02x rt=%d tcode=0x%x pri=0x%x "
     "src=0x%03x\n", prefix,
     fp->mode.hdr.dst & 0x3f,
     fp->mode.hdr.tlrt >> 2, fp->mode.hdr.tlrt & 3,
     fp->mode.hdr.tcode, fp->mode.hdr.pri,
     fp->mode.hdr.src);
}
