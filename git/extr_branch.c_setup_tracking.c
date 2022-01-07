
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tracking ;
struct TYPE_2__ {char* dst; } ;
struct tracking {int matches; char const* src; int remote; TYPE_1__ spec; } ;
typedef enum branch_track { ____Placeholder_branch_track } branch_track ;


 int BRANCH_CONFIG_VERBOSE ;



 int _ (char*) ;
 int die (int ,char const*) ;
 int exit (int) ;
 int find_tracked_branch ;
 scalar_t__ for_each_remote (int ,struct tracking*) ;
 int free (char const*) ;
 scalar_t__ install_branch_config (int,char const*,int ,char const*) ;
 int memset (struct tracking*,int ,int) ;

__attribute__((used)) static void setup_tracking(const char *new_ref, const char *orig_ref,
      enum branch_track track, int quiet)
{
 struct tracking tracking;
 int config_flags = quiet ? 0 : BRANCH_CONFIG_VERBOSE;

 memset(&tracking, 0, sizeof(tracking));
 tracking.spec.dst = (char *)orig_ref;
 if (for_each_remote(find_tracked_branch, &tracking))
  return;

 if (!tracking.matches)
  switch (track) {
  case 130:
  case 129:
  case 128:
   break;
  default:
   return;
  }

 if (tracking.matches > 1)
  die(_("Not tracking: ambiguous information for ref %s"),
      orig_ref);

 if (install_branch_config(config_flags, new_ref, tracking.remote,
         tracking.src ? tracking.src : orig_ref) < 0)
  exit(-1);

 free(tracking.src);
}
