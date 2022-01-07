
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filecaps {int fc_fcntls; int fc_nioctls; int fc_rights; int * fc_ioctls; } ;


 int CAP_FCNTL ;
 int CAP_FCNTL_ALL ;
 int CAP_IOCTL ;
 int KASSERT (int,char*) ;
 scalar_t__ cap_rights_is_set (int *,int ) ;
 int cap_rights_is_valid (int *) ;

__attribute__((used)) static void
filecaps_validate(const struct filecaps *fcaps, const char *func)
{

 KASSERT(cap_rights_is_valid(&fcaps->fc_rights),
     ("%s: invalid rights", func));
 KASSERT((fcaps->fc_fcntls & ~CAP_FCNTL_ALL) == 0,
     ("%s: invalid fcntls", func));
 KASSERT(fcaps->fc_fcntls == 0 ||
     cap_rights_is_set(&fcaps->fc_rights, CAP_FCNTL),
     ("%s: fcntls without CAP_FCNTL", func));
 KASSERT(fcaps->fc_ioctls != ((void*)0) ? fcaps->fc_nioctls > 0 :
     (fcaps->fc_nioctls == -1 || fcaps->fc_nioctls == 0),
     ("%s: invalid ioctls", func));
 KASSERT(fcaps->fc_nioctls == 0 ||
     cap_rights_is_set(&fcaps->fc_rights, CAP_IOCTL),
     ("%s: ioctls without CAP_IOCTL", func));
}
