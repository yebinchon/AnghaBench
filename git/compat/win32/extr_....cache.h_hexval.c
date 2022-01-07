
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* hexval_table ;

__attribute__((used)) static inline unsigned int hexval(unsigned char c)
{
 return hexval_table[c];
}
