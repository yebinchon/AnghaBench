
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int REV_SHIFT ;

__attribute__((used)) static int omit_in_dense(struct commit *commit, struct commit **rev, int n)
{





 int i, flag, count;
 for (i = 0; i < n; i++)
  if (rev[i] == commit)
   return 0;
 flag = commit->object.flags;
 for (i = count = 0; i < n; i++) {
  if (flag & (1u << (i + REV_SHIFT)))
   count++;
 }
 if (count == 1)
  return 1;
 return 0;
}
