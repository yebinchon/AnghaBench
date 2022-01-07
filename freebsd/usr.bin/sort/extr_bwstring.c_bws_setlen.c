
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* cstr; int* wstr; } ;
struct bwstring {size_t len; TYPE_1__ data; } ;


 int MB_CUR_MAX ;

void
bws_setlen(struct bwstring *bws, size_t newlen)
{

 if (bws && newlen != bws->len && newlen <= bws->len) {
  bws->len = newlen;
  if (MB_CUR_MAX == 1)
   bws->data.cstr[newlen] = '\0';
  else
   bws->data.wstr[newlen] = L'\0';
 }
}
