
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ ssize_t ;


 int KASSERT (int,char*) ;

__attribute__((used)) static void
g_shsec_xor1(uint32_t *src, uint32_t *dst, ssize_t len)
{

 for (; len > 0; len -= sizeof(uint32_t), dst++)
  *dst = *dst ^ *src++;
 KASSERT(len == 0, ("len != 0 (len=%zd)", len));
}
