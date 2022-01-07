
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keymap {int desc; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
compare_keymap(const void *a, const void *b)
{


 const struct keymap *km1 = *((const struct keymap * const *) a);
 const struct keymap *km2 = *((const struct keymap * const *) b);

 return strcmp(km1->desc, km2->desc);
}
