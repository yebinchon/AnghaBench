
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int COL_ENABLED ;
 unsigned int COL_ENABLE_MASK ;

__attribute__((used)) static inline int column_active(unsigned int colopts)
{
 return (colopts & COL_ENABLE_MASK) == COL_ENABLED;
}
