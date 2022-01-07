
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int MLX5_PERM_ATOMIC ;
 int MLX5_PERM_LOCAL_READ ;
 int MLX5_PERM_LOCAL_WRITE ;
 int MLX5_PERM_REMOTE_READ ;
 int MLX5_PERM_REMOTE_WRITE ;

__attribute__((used)) static inline u8 convert_access(int acc)
{
 return (acc & IB_ACCESS_REMOTE_ATOMIC ? MLX5_PERM_ATOMIC : 0) |
        (acc & IB_ACCESS_REMOTE_WRITE ? MLX5_PERM_REMOTE_WRITE : 0) |
        (acc & IB_ACCESS_REMOTE_READ ? MLX5_PERM_REMOTE_READ : 0) |
        (acc & IB_ACCESS_LOCAL_WRITE ? MLX5_PERM_LOCAL_WRITE : 0) |
        MLX5_PERM_LOCAL_READ;
}
