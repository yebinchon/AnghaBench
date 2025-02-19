
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_info {int dummy; } ;
typedef int kobj_t ;


 int VIA_AC97_CODEC00_VALID ;
 int VIA_AC97_CONTROL ;
 int VIA_AC97_INDEX (int) ;
 int VIA_AC97_READ ;
 int via_rd (struct via_info*,int ,int) ;
 scalar_t__ via_waitready_codec (struct via_info*) ;
 scalar_t__ via_waitvalid_codec (struct via_info*) ;
 int via_wr (struct via_info*,int ,int,int) ;

__attribute__((used)) static int
via_read_codec(kobj_t obj, void *addr, int reg)
{
 struct via_info *via = addr;

 if (via_waitready_codec(via))
  return (-1);

 via_wr(via, VIA_AC97_CONTROL, VIA_AC97_CODEC00_VALID |
     VIA_AC97_READ | VIA_AC97_INDEX(reg), 4);

 if (via_waitready_codec(via))
  return (-1);

 if (via_waitvalid_codec(via))
  return (-1);

 return (via_rd(via, VIA_AC97_CONTROL, 2));
}
