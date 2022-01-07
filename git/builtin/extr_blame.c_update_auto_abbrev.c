
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct blame_origin {TYPE_2__* commit; } ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 char* find_unique_abbrev (int *,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int update_auto_abbrev(int auto_abbrev, struct blame_origin *suspect)
{
 const char *uniq = find_unique_abbrev(&suspect->commit->object.oid,
           auto_abbrev);
 int len = strlen(uniq);
 if (auto_abbrev < len)
  return len;
 return auto_abbrev;
}
