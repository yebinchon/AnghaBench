
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlx5_ipsec_response_syndrome { ____Placeholder_mlx5_ipsec_response_syndrome } mlx5_ipsec_response_syndrome ;


 int EEXIST ;
 int EINVAL ;
 int EIO ;





__attribute__((used)) static inline int syndrome_to_errno(enum mlx5_ipsec_response_syndrome syndrome)
{
 switch (syndrome) {
 case 129:
  return 0;
 case 130:
  return -EEXIST;
 case 131:
  return -EINVAL;
 case 128:
  return -EIO;
 }
 return -EIO;
}
