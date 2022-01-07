
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct commit_dist {scalar_t__ distance; TYPE_2__* commit; } ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int oidcmp (int *,int *) ;

__attribute__((used)) static int compare_commit_dist(const void *a_, const void *b_)
{
 struct commit_dist *a, *b;

 a = (struct commit_dist *)a_;
 b = (struct commit_dist *)b_;
 if (a->distance != b->distance)
  return b->distance - a->distance;
 return oidcmp(&a->commit->object.oid, &b->commit->object.oid);
}
