
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;
struct label {int dummy; } ;


 scalar_t__ SLOT (struct label*) ;
 int SLOT_SET (int ,scalar_t__) ;

__attribute__((used)) static void
partition_cred_relabel(struct ucred *cred, struct label *newlabel)
{

 if (newlabel != ((void*)0) && SLOT(newlabel) != 0)
  SLOT_SET(cred->cr_label, SLOT(newlabel));
}
