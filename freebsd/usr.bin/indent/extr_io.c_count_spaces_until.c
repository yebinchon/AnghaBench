
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tabsize; } ;


 TYPE_1__ opt ;

int
count_spaces_until(int cur, char *buffer, char *end)




{
    char *buf;

    for (buf = buffer; *buf != '\0' && buf != end; ++buf) {
 switch (*buf) {

 case '\n':
 case 014:
     cur = 1;
     break;

 case '\t':
     cur = opt.tabsize * (1 + (cur - 1) / opt.tabsize) + 1;
     break;

 case 010:
     --cur;
     break;

 default:
     ++cur;
     break;
 }
    }
    return (cur);
}
