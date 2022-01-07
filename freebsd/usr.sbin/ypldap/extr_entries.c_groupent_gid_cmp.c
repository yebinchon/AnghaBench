
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct groupent {int ge_gid; } ;



int
groupent_gid_cmp(struct groupent *ge1, struct groupent *ge2)
{
 return (ge1->ge_gid - ge2->ge_gid);
}
