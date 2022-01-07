
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct dirlist {TYPE_1__ stab; } ;



__attribute__((used)) static int
equal(const struct dirlist *a, const struct dirlist *b)
{
 return ((a->stab.st_dev == b->stab.st_dev)
  && (a->stab.st_ino == b->stab.st_ino));
}
