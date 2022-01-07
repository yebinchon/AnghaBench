
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ bhnd_nvram_val_fmt ;



const char *
bhnd_nvram_val_fmt_name(const bhnd_nvram_val_fmt *fmt)
{
 return (fmt->name);
}
