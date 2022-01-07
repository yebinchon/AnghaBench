
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfilioc_link {int pio_flags; int pio_ruleset; int pio_module; int pio_name; } ;
struct pfil_link_args {int pa_flags; int pa_rulname; int pa_modname; int pa_headname; int pa_version; } ;


 int EINVAL ;
 int PFIL_APPEND ;
 int PFIL_IN ;
 int PFIL_OUT ;
 int PFIL_UNLINK ;
 int PFIL_VERSION ;
 int pfil_link (struct pfil_link_args*) ;

__attribute__((used)) static int
pfilioc_link(struct pfilioc_link *req)
{
 struct pfil_link_args args;

 if (req->pio_flags & ~(PFIL_IN | PFIL_OUT | PFIL_UNLINK | PFIL_APPEND))
  return (EINVAL);

 args.pa_version = PFIL_VERSION;
 args.pa_flags = req->pio_flags;
 args.pa_headname = req->pio_name;
 args.pa_modname = req->pio_module;
 args.pa_rulname = req->pio_ruleset;

 return (pfil_link(&args));
}
