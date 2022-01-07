
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void
ehb(void)
{
 __asm __volatile(
 "	.set mips32r2	\n"
 "	ehb		\n"
 "	.set mips0	\n");
}
