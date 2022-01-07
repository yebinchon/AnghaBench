
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlxfw_mfa2_file {TYPE_1__* fw; } ;
struct TYPE_2__ {int datasize; int * data; } ;



__attribute__((used)) static inline bool mlxfw_mfa2_valid_ptr(const struct mlxfw_mfa2_file *mfa2_file,
     const u8 *ptr)
{
 const u8 *valid_to = (const u8 *) mfa2_file->fw->data + mfa2_file->fw->datasize;
 const u8 *valid_from = mfa2_file->fw->data;

 return ptr > valid_from && ptr < valid_to;
}
