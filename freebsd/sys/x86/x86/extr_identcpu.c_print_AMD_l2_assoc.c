
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void
print_AMD_l2_assoc(int i)
{
 switch (i & 0x0f) {
 case 0: printf(", disabled/not present\n"); break;
 case 1: printf(", direct mapped\n"); break;
 case 2: printf(", 2-way associative\n"); break;
 case 4: printf(", 4-way associative\n"); break;
 case 6: printf(", 8-way associative\n"); break;
 case 8: printf(", 16-way associative\n"); break;
 case 15: printf(", fully associative\n"); break;
 default: printf(", reserved configuration\n"); break;
 }
}
