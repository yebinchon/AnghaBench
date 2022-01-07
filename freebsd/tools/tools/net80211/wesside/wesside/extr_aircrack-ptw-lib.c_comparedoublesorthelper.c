
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ difference; } ;
typedef TYPE_1__ doublesorthelper ;



__attribute__((used)) static int comparedoublesorthelper(const void * ina, const void * inb) {
        doublesorthelper * a = (doublesorthelper * )ina;
        doublesorthelper * b = (doublesorthelper * )inb;
        if (a->difference > b->difference) {
                return 1;
        } else if (a->difference == b->difference) {
                return 0;
        } else {
                return -1;
        }
}
