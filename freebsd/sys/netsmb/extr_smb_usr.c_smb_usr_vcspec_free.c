
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vcspec {scalar_t__ lap; scalar_t__ sap; } ;


 int smb_memfree (scalar_t__) ;

__attribute__((used)) static void
smb_usr_vcspec_free(struct smb_vcspec *spec)
{
 if (spec->sap)
  smb_memfree(spec->sap);
 if (spec->lap)
  smb_memfree(spec->lap);
}
