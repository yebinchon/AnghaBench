
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int u_path; } ;


 int PATH_MAX ;
 size_t UNWIND_MAX ;
 int err (int,char*,char const*) ;
 int strlcpy (int ,char const*,int ) ;
 size_t unwind_len ;
 TYPE_1__* unwind_list ;

__attribute__((used)) static void
push_path(const char *path)
{

 if (unwind_len >= UNWIND_MAX)
  err(-1, "push_path: one path too many (%s)", path);

 strlcpy(unwind_list[unwind_len].u_path, path, PATH_MAX);
 unwind_len++;
}
