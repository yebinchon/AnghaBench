
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hexa2int8 (char const*) ;

__attribute__((used)) static int
hexa2int16(const char *a)
{
 return ((hexa2int8(a) << 8) | hexa2int8(a + 2));
}
