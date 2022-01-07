
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct cm_id_private {scalar_t__ private_data_len; void* private_data; } ;


 int kfree (void*) ;

__attribute__((used)) static void cm_set_private_data(struct cm_id_private *cm_id_priv,
     void *private_data, u8 private_data_len)
{
 if (cm_id_priv->private_data && cm_id_priv->private_data_len)
  kfree(cm_id_priv->private_data);

 cm_id_priv->private_data = private_data;
 cm_id_priv->private_data_len = private_data_len;
}
