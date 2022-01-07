
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ddf_vol_meta {TYPE_1__* vde; } ;
struct TYPE_2__ {int VD_Name; } ;


 int memcpy (int ,char*,int) ;
 int memset (int ,int,int) ;
 int min (int ,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
ddf_meta_put_name(struct ddf_vol_meta *meta, char *buf)
{
 int len;

 len = min(strlen(buf), 16);
 memset(meta->vde->VD_Name, 0x20, 16);
 memcpy(meta->vde->VD_Name, buf, len);
}
