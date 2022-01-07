
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct groupent {int ge_line; } ;


 int strcmp (int ,int ) ;

int
groupent_name_cmp(struct groupent *ge1, struct groupent *ge2)
{
 return (strcmp(ge1->ge_line, ge2->ge_line));
}
