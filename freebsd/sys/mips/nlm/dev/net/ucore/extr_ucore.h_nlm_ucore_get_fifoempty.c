
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline__ int
nlm_ucore_get_fifoempty(unsigned int fifoempty)
{
 return (fifoempty & 0xfffff);
}
