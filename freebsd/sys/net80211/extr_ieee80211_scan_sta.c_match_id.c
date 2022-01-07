
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ memcmp (int const*,int const*,int) ;

__attribute__((used)) static __inline int
match_id(const uint8_t *ie, const uint8_t *val, int len)
{
 return (ie[1] == len && memcmp(ie+2, val, len) == 0);
}
