
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ distance; } ;
typedef TYPE_1__ sorthelper ;



__attribute__((used)) static int comparesorthelper(const void * ina, const void * inb) {
 sorthelper * a = (sorthelper * ) ina;
 sorthelper * b = (sorthelper * ) inb;
 if (a->distance > b->distance) {
  return 1;
 } else if (a->distance == b->distance) {
  return 0;
 } else {
  return -1;
 }
}
