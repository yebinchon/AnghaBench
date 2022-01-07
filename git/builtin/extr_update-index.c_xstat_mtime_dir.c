
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_2__ {int buf; } ;


 int _ (char*) ;
 int die_errno (int ,int ) ;
 TYPE_1__ mtime_dir ;
 scalar_t__ stat (int ,struct stat*) ;

__attribute__((used)) static int xstat_mtime_dir(struct stat *st)
{
 if (stat(mtime_dir.buf, st))
  die_errno(_("failed to stat %s"), mtime_dir.buf);
 return 0;
}
