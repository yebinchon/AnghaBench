
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_pcminfo {int dev; } ;
struct sc_chinfo {int format; struct sc_pcminfo* parent; } ;
typedef int kobj_t ;


 int device_printf (int ,char*,int ) ;

__attribute__((used)) static int
hdspechan_setformat(kobj_t obj, void *data, uint32_t format)
{
 struct sc_chinfo *ch;

 ch = data;






 ch->format = format;

 return (0);
}
