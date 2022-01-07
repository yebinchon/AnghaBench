
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ksi_flags; } ;
typedef TYPE_1__ ksiginfo_t ;


 int KSI_EXT ;
 int ksiginfo_zone ;
 int uma_zfree (int ,TYPE_1__*) ;

__attribute__((used)) static __inline int
ksiginfo_tryfree(ksiginfo_t *ksi)
{
 if (!(ksi->ksi_flags & KSI_EXT)) {
  uma_zfree(ksiginfo_zone, ksi);
  return (1);
 }
 return (0);
}
