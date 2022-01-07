
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; } ;
struct config_source {TYPE_1__ u; } ;


 long ftell (int ) ;

__attribute__((used)) static long config_file_ftell(struct config_source *conf)
{
 return ftell(conf->u.file);
}
