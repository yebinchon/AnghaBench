
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;


 int SLOT_SET (int ,int ) ;

__attribute__((used)) static void
partition_cred_create_init(struct ucred *cred)
{

 SLOT_SET(cred->cr_label, 0);
}
