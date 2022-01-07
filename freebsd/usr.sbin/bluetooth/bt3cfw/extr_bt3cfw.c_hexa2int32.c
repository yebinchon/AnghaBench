
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hexa2int16 (char const*) ;

__attribute__((used)) static int
hexa2int32(const char *a)
{
 return ((hexa2int16(a) << 16) | hexa2int16(a + 4));
}
