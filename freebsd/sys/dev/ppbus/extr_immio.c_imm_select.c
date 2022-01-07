
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpoio_data {int vpo_dev; } ;
typedef int device_t ;


 int DECLARE_SELECT_MICROSEQUENCE ;
 int SELECT_TARGET ;
 int device_get_parent (int ) ;
 int ppb_MS_init_msq (int ,int,int ,int) ;
 int ppb_MS_microseq (int ,int ,int ,int*) ;
 int select_microseq ;

__attribute__((used)) static char
imm_select(struct vpoio_data *vpo, int initiator, int target)
{
 DECLARE_SELECT_MICROSEQUENCE;
 device_t ppbus = device_get_parent(vpo->vpo_dev);
 int ret;


 ppb_MS_init_msq(select_microseq, 1,
   SELECT_TARGET, 1 << initiator | 1 << target);

 ppb_MS_microseq(ppbus, vpo->vpo_dev, select_microseq, &ret);

 return (ret);
}
