
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int dummy; } ;



__attribute__((used)) static inline void
swap_modes(struct videomode *left, struct videomode *right)
{
 struct videomode temp;

 temp = *left;
 *left = *right;
 *right = temp;
}
