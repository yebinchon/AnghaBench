
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct ucred {int cr_svuid; } ;



void
change_svuid(struct ucred *newcred, uid_t svuid)
{

 newcred->cr_svuid = svuid;
}
