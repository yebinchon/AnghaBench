
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ wstr; scalar_t__ cstr; } ;
struct bwstring {scalar_t__ len; TYPE_1__ data; } ;
typedef int bwstring_iterator ;


 int MB_CUR_MAX ;

__attribute__((used)) static inline bwstring_iterator
bws_end(struct bwstring *bws)
{

 return ((MB_CUR_MAX == 1) ?
     (bwstring_iterator) (bws->data.cstr + bws->len) :
     (bwstring_iterator) (bws->data.wstr + bws->len));
}
