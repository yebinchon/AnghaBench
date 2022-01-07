
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {int word_alloc; int words; } ;
typedef int eword_t ;


 int memset (int ,int,int) ;

void bitmap_reset(struct bitmap *bitmap)
{
 memset(bitmap->words, 0x0, bitmap->word_alloc * sizeof(eword_t));
}
