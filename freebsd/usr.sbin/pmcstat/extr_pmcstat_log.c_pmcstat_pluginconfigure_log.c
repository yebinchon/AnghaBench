
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t pa_plugin; } ;
struct TYPE_3__ {int (* pl_configure ) (char*) ;} ;


 int EX_USAGE ;
 TYPE_2__ args ;
 int atof (char*) ;
 int err (int ,char*,char*) ;
 TYPE_1__* plugins ;
 int pmcstat_threshold ;
 scalar_t__ strncmp (char*,char*,int) ;
 int stub1 (char*) ;

void
pmcstat_pluginconfigure_log(char *opt)
{

 if (strncmp(opt, "threshold=", 10) == 0) {
  pmcstat_threshold = atof(opt+10);
 } else {
  if (plugins[args.pa_plugin].pl_configure != ((void*)0)) {
   if (!plugins[args.pa_plugin].pl_configure(opt))
    err(EX_USAGE,
        "ERROR: unknown option <%s>.", opt);
  }
 }
}
