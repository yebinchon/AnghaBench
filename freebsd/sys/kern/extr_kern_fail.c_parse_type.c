
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fail_point_entry {int fe_type; } ;
typedef enum fail_point_t { ____Placeholder_fail_point_t } fail_point_t ;
struct TYPE_2__ {int nmlen; int name; } ;


 int FAIL_POINT_NUMTYPES ;
 int FAIL_POINT_OFF ;
 TYPE_1__* fail_type_strings ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static char *
parse_type(struct fail_point_entry *ent, char *beg)
{
 enum fail_point_t type;
 int len;

 for (type = FAIL_POINT_OFF; type < FAIL_POINT_NUMTYPES; type++) {
  len = fail_type_strings[type].nmlen;
  if (strncmp(fail_type_strings[type].name, beg, len) == 0) {
   ent->fe_type = type;
   return (beg + len);
  }
 }
 return (((void*)0));
}
