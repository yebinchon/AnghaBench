
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; } ;
struct config_source {TYPE_1__ u; } ;


 int getc_unlocked (int ) ;

__attribute__((used)) static int config_file_fgetc(struct config_source *conf)
{
 return getc_unlocked(conf->u.file);
}
