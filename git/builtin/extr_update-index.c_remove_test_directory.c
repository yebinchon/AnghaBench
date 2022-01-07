
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; } ;


 TYPE_1__ mtime_dir ;
 int remove_dir_recursively (TYPE_1__*,int ) ;

__attribute__((used)) static void remove_test_directory(void)
{
 if (mtime_dir.len)
  remove_dir_recursively(&mtime_dir, 0);
}
