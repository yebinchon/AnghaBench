
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ddf_meta {TYPE_2__* vdr; } ;
struct TYPE_4__ {TYPE_1__* entry; } ;
struct TYPE_3__ {char* VD_Name; } ;


 int memcpy (char*,char const*,int) ;

__attribute__((used)) static void
ddf_meta_get_name(struct ddf_meta *meta, int num, char *buf)
{
 const char *b;
 int i;

 b = meta->vdr->entry[num].VD_Name;
 for (i = 15; i >= 0; i--)
  if (b[i] != 0x20)
   break;
 memcpy(buf, b, i + 1);
 buf[i + 1] = 0;
}
