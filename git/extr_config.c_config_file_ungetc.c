
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; } ;
struct config_source {TYPE_1__ u; } ;


 int ungetc (int,int ) ;

__attribute__((used)) static int config_file_ungetc(int c, struct config_source *conf)
{
 return ungetc(c, conf->u.file);
}
