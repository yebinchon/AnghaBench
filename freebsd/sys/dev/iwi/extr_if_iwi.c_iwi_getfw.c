
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwi_fw {TYPE_1__* fp; } ;
struct TYPE_2__ {int version; } ;


 void* firmware_get (char const*) ;

__attribute__((used)) static void
iwi_getfw(struct iwi_fw *fw, const char *fwname,
   struct iwi_fw *uc, const char *ucname)
{
 if (fw->fp == ((void*)0))
  fw->fp = firmware_get(fwname);

 if (uc->fp == ((void*)0) && fw->fp != ((void*)0) && fw->fp->version < 300)
  uc->fp = firmware_get(ucname);
}
