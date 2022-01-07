
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int clamp_max (int ,int,int*) ;
 int copy_le16 (unsigned char*,int ) ;

__attribute__((used)) static void copy_le16_clamp(unsigned char *dest, uint64_t n, int *clamped)
{
 copy_le16(dest, clamp_max(n, 0xffff, clamped));
}
