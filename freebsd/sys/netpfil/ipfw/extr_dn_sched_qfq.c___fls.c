
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long fls (unsigned long) ;

__attribute__((used)) static inline unsigned long __fls(unsigned long word)
{
 return fls(word) - 1;
}
