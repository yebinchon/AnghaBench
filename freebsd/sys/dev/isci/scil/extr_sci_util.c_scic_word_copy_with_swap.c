
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int SCIC_SWAP_DWORD (int ) ;

void scic_word_copy_with_swap(
   U32 *destination,
   U32 *source,
   U32 word_count
)
{
   while (word_count--)
   {
      *destination = SCIC_SWAP_DWORD(*source);

      source++;
      destination++;
   }
}
