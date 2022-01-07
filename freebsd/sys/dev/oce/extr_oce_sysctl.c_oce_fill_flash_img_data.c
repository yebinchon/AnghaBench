
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flash_sec_info {TYPE_1__* fsec_entry; } ;
struct flash_img_attri {int img_offset; int img_size; int img_type; int optype; void* skip_image; } ;
struct firmware {int data; } ;
struct TYPE_2__ {int type; int pad_size; int offset; } ;
typedef int POCE_SOFTC ;


 void* FALSE ;
 void* HOST_32 (int ) ;
 int IS_BE3 (int ) ;
 scalar_t__ IS_SH (int ) ;
 void* TRUE ;
 int oce_img_flashing_required (int ,int ,int,int,int,int) ;
 int oce_phy_flashing_required (int ) ;

__attribute__((used)) static void oce_fill_flash_img_data(POCE_SOFTC sc, const struct flash_sec_info * fsec,
    struct flash_img_attri *pimg, int i,
    const struct firmware *fw, int bin_offset)
{
 if (IS_SH(sc)) {
  pimg->img_offset = HOST_32(fsec->fsec_entry[i].offset);
  pimg->img_size = HOST_32(fsec->fsec_entry[i].pad_size);
 }

 pimg->img_type = HOST_32(fsec->fsec_entry[i].type);
 pimg->skip_image = FALSE;
 switch (pimg->img_type) {
  case 133:
   pimg->optype = 0;
   if (IS_BE3(sc)) {
    pimg->img_offset = 2097152;
    pimg->img_size = 2097152;
   }
   break;
  case 128:
   pimg->optype = 1;
   if (IS_BE3(sc)) {
    pimg->img_offset = 262144;
    pimg->img_size = 1048576;
   }
   if (!oce_img_flashing_required(sc, fw->data,
      pimg->optype,
      pimg->img_offset,
      pimg->img_size,
      bin_offset))
    pimg->skip_image = TRUE;
   break;
  case 137:
   pimg->optype = 2;
   if (IS_BE3(sc)) {
    pimg->img_offset = 12582912;
    pimg->img_size = 524288;
   }
   break;
  case 129:
   pimg->optype = 3;
   if (IS_BE3(sc)) {
    pimg->img_offset = 13107200;
    pimg->img_size = 524288;
   }
   break;
  case 135:
   pimg->optype = 8;
   if (IS_BE3(sc)) {
    pimg->img_offset = 13631488;
    pimg->img_size = 524288;
   }
   break;
  case 132:
   pimg->optype = 9;
   if (IS_BE3(sc)) {
    pimg->img_offset = 4194304;
    pimg->img_size = 2097152;
   }
   break;
  case 136:
   pimg->optype = 10;
   if (IS_BE3(sc)) {
    pimg->img_offset = 6291456;
    pimg->img_size = 2097152;
   }
   break;
  case 134:
   pimg->optype = 11;
   if (IS_BE3(sc)) {
    pimg->img_offset = 8388608;
    pimg->img_size = 2097152;
   }
   break;
  case 131:
   pimg->optype = 13;
   if (IS_BE3(sc)) {
    pimg->img_offset = 15990784;
    pimg->img_size = 262144;
   }
   break;
  case 130:
   pimg->optype = 99;
   if (IS_BE3(sc)) {
    pimg->img_offset = 1310720;
    pimg->img_size = 262144;
   }
   if (!oce_phy_flashing_required(sc))
    pimg->skip_image = TRUE;
   break;
  default:
   pimg->skip_image = TRUE;
   break;
 }

}
