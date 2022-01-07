
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ votes; } ;
typedef TYPE_1__ PTW_tableentry ;



__attribute__((used)) static int compare(const void * ina, const void * inb) {
        PTW_tableentry * a = (PTW_tableentry * )ina;
        PTW_tableentry * b = (PTW_tableentry * )inb;
        if (a->votes > b->votes) {
                return -1;
        } else if (a->votes == b->votes) {
                return 0;
        } else {
                return 1;
        }
}
