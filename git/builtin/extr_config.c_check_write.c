
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ blob; scalar_t__ use_stdin; int file; } ;
struct TYPE_3__ {int have_repository; } ;


 int _ (char*) ;
 int die (int ) ;
 TYPE_2__ given_config_source ;
 TYPE_1__* startup_info ;

__attribute__((used)) static void check_write(void)
{
 if (!given_config_source.file && !startup_info->have_repository)
  die(_("not in a git directory"));

 if (given_config_source.use_stdin)
  die(_("writing to stdin is not supported"));

 if (given_config_source.blob)
  die(_("writing config blobs is not supported"));
}
