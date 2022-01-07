
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyinq_block {int dummy; } ;


 int CLRBIT (struct ttyinq_block*,size_t) ;
 int SETBIT (struct ttyinq_block*,size_t) ;

__attribute__((used)) static __inline void
ttyinq_set_quotes(struct ttyinq_block *tib, size_t offset,
    size_t length, int value)
{

 if (value) {

  for (; length > 0; length--, offset++)
   SETBIT(tib, offset);
 } else {

  for (; length > 0; length--, offset++)
   CLRBIT(tib, offset);
 }
}
