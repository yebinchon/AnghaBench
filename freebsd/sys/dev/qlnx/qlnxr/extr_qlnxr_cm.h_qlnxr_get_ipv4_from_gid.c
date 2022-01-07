
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline u32 qlnxr_get_ipv4_from_gid(u8 *gid)
{
 return *(u32 *)(void *)&gid[12];
}
