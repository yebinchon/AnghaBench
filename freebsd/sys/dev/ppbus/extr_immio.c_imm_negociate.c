
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpoio_data {int vpo_dev; } ;
typedef int device_t ;


 int DECLARE_NEGOCIATE_MICROSEQ ;
 int NEGOCIATED_MODE ;
 scalar_t__ PPB_IN_NIBBLE_MODE (int ) ;
 scalar_t__ PPB_IN_PS2_MODE (int ) ;
 int VP0_ENEGOCIATE ;
 int device_get_parent (int ) ;
 int negociate_microseq ;
 int ppb_1284_negociate (int ,int) ;
 int ppb_MS_init_msq (int ,int,int ,int) ;
 int ppb_MS_microseq (int ,int ,int ,int*) ;

__attribute__((used)) static int
imm_negociate(struct vpoio_data *vpo)
{
 DECLARE_NEGOCIATE_MICROSEQ;
 device_t ppbus = device_get_parent(vpo->vpo_dev);
 int negociate_mode;
 int ret;

 if (PPB_IN_NIBBLE_MODE(ppbus))
  negociate_mode = 0;
 else if (PPB_IN_PS2_MODE(ppbus))
  negociate_mode = 1;
 else
  return (0);
 ppb_MS_init_msq(negociate_microseq, 1,
   NEGOCIATED_MODE, negociate_mode);

 ppb_MS_microseq(ppbus, vpo->vpo_dev, negociate_microseq, &ret);

 return (ret);
}
