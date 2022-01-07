
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * name; } ;
struct priv_fw {TYPE_1__ fw; } ;


 int FIRMWARE_MAX ;
 int FW_INUSE (struct priv_fw*) ;
 struct priv_fw* firmware_table ;
 scalar_t__ strcasecmp (char const*,int *) ;

__attribute__((used)) static struct priv_fw *
lookup(const char *name, struct priv_fw **empty_slot)
{
 struct priv_fw *fp = ((void*)0);
 struct priv_fw *dummy;
 int i;

 if (empty_slot == ((void*)0))
  empty_slot = &dummy;
 *empty_slot = ((void*)0);
 for (i = 0; i < FIRMWARE_MAX; i++) {
  fp = &firmware_table[i];
  if (fp->fw.name != ((void*)0) && strcasecmp(name, fp->fw.name) == 0)
   break;
  else if (!FW_INUSE(fp))
   *empty_slot = fp;
 }
 return (i < FIRMWARE_MAX ) ? fp : ((void*)0);
}
