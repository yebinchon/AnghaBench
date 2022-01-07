
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_fw {int * name; scalar_t__ size; int * data; int * fp; } ;


 int FIRMWARE_UNLOAD ;
 int firmware_put (int *,int ) ;

__attribute__((used)) static void
iwi_put_fw(struct iwi_fw *fw)
{
 if (fw->fp != ((void*)0)) {
  firmware_put(fw->fp, FIRMWARE_UNLOAD);
  fw->fp = ((void*)0);
 }
 fw->data = ((void*)0);
 fw->size = 0;
 fw->name = ((void*)0);
}
