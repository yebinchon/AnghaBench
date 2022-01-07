
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int flags; int oid; } ;
struct commit {TYPE_1__ object; } ;


 unsigned int UNINTERESTING ;
 int oid_to_hex (int *) ;
 int puts (int ) ;

__attribute__((used)) static int show_independent(struct commit **rev,
       int num_rev,
       unsigned int *rev_mask)
{
 int i;

 for (i = 0; i < num_rev; i++) {
  struct commit *commit = rev[i];
  unsigned int flag = rev_mask[i];

  if (commit->object.flags == flag)
   puts(oid_to_hex(&commit->object.oid));
  commit->object.flags |= UNINTERESTING;
 }
 return 0;
}
