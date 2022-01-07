
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int argc; int * argv; } ;


 int _ (char*) ;
 int die (int ,char const*) ;
 scalar_t__ parse_feature_request (char const*,char const*) ;
 TYPE_1__ server_capabilities_v2 ;
 scalar_t__ skip_prefix (int ,char const*,char const**) ;

int server_supports_feature(const char *c, const char *feature,
       int die_on_error)
{
 int i;

 for (i = 0; i < server_capabilities_v2.argc; i++) {
  const char *out;
  if (skip_prefix(server_capabilities_v2.argv[i], c, &out) &&
      (!*out || *(out++) == '=')) {
   if (parse_feature_request(out, feature))
    return 1;
   else
    break;
  }
 }

 if (die_on_error)
  die(_("server doesn't support feature '%s'"), feature);

 return 0;
}
