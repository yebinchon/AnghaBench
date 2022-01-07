
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userent {int ue_uid; } ;



int
userent_uid_cmp(struct userent *ue1, struct userent *ue2)
{
 return (ue1->ue_uid - ue2->ue_uid);
}
