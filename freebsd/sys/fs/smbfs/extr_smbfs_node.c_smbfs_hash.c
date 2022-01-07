
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;


 int FNV1_32_INIT ;
 int fnv_32_buf (int const*,int,int ) ;

u_int32_t __inline
smbfs_hash(const u_char *name, int nmlen)
{
 return (fnv_32_buf(name, nmlen, FNV1_32_INIT));
}
