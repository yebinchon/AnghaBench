
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int clamp_max (int ,int,int*) ;
 int copy_le32 (unsigned char*,int ) ;

__attribute__((used)) static void copy_le32_clamp(unsigned char *dest, uint64_t n, int *clamped)
{
 copy_le32(dest, clamp_max(n, 0xffffffff, clamped));
}
