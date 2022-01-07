
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long readU16(const unsigned char *ptr)
{
 return ptr[0]+(ptr[1]<<8);
}
