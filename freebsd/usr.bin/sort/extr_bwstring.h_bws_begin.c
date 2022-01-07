
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwstring {int data; } ;
typedef int bwstring_iterator ;



__attribute__((used)) static inline bwstring_iterator
bws_begin(struct bwstring *bws)
{

 return (bwstring_iterator) (&(bws->data));
}
