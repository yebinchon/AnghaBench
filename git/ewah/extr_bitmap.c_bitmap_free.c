
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {struct bitmap* words; } ;


 int free (struct bitmap*) ;

void bitmap_free(struct bitmap *bitmap)
{
 if (bitmap == ((void*)0))
  return;

 free(bitmap->words);
 free(bitmap);
}
