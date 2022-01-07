
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tabsize; scalar_t__ use_tabs; } ;


 TYPE_1__ opt ;
 int output ;
 int putc (char,int ) ;

__attribute__((used)) static int
pad_output(int current, int target)





{
    int curr;

    if (current >= target)
 return (current);
    curr = current;
    if (opt.use_tabs) {
 int tcur;

 while ((tcur = opt.tabsize * (1 + (curr - 1) / opt.tabsize) + 1) <= target) {
     putc('\t', output);
     curr = tcur;
 }
    }
    while (curr++ < target)
 putc(' ', output);

    return (target);
}
