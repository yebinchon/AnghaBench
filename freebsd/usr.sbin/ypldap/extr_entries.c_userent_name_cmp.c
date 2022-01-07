
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userent {int ue_line; } ;


 int strcmp (int ,int ) ;

int
userent_name_cmp(struct userent *ue1, struct userent *ue2)
{
 return (strcmp(ue1->ue_line, ue2->ue_line));
}
