
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filecaps {int fc_nioctls; int fc_fcntls; int * fc_ioctls; int fc_rights; } ;


 int CAP_ALL (int *) ;
 int CAP_FCNTL_ALL ;

__attribute__((used)) static void
filecaps_fill(struct filecaps *fcaps)
{

 CAP_ALL(&fcaps->fc_rights);
 fcaps->fc_ioctls = ((void*)0);
 fcaps->fc_nioctls = -1;
 fcaps->fc_fcntls = CAP_FCNTL_ALL;
}
