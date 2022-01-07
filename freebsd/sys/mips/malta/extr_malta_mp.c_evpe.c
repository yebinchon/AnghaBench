
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void
evpe(void)
{
 __asm __volatile(
 "	.set push			\n"
 "	.set noreorder			\n"
 "	.set noat			\n"
 "	.set mips32r2			\n"
 "	.word	0x41600021	# evpe	\n"
 "	ehb				\n"
 "	.set pop			\n");
}
