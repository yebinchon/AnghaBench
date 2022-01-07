
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vaddr_t ;
typedef int uint32_t ;


 int htole32 (int ) ;
 int mips_iowrite_uint32 (int ,int ) ;

__attribute__((used)) static inline void
mips_iowrite_uint32le(vaddr_t vaddr, uint32_t v)
{

 mips_iowrite_uint32(vaddr, htole32(v));
}
