
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static inline void *mark_to_ptr(uint32_t mark)
{
 return (void *)(uintptr_t)mark;
}
