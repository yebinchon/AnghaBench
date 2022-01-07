
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {int word_alloc; int words; } ;
typedef int eword_t ;


 int xcalloc (int,int) ;
 struct bitmap* xmalloc (int) ;

struct bitmap *bitmap_new(void)
{
 struct bitmap *bitmap = xmalloc(sizeof(struct bitmap));
 bitmap->words = xcalloc(32, sizeof(eword_t));
 bitmap->word_alloc = 32;
 return bitmap;
}
