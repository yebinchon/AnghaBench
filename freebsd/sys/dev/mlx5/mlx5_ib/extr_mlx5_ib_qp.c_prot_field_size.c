
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum ib_signature_type { ____Placeholder_ib_signature_type } ib_signature_type ;



 int MLX5_DIF_SIZE ;

__attribute__((used)) static u16 prot_field_size(enum ib_signature_type type)
{
 switch (type) {
 case 128:
  return MLX5_DIF_SIZE;
 default:
  return 0;
 }
}
