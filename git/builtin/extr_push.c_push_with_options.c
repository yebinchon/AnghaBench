
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transport {char* url; TYPE_1__* smart_options; int family; } ;
struct refspec {int dummy; } ;
struct TYPE_2__ {int * cas; } ;


 int CAS_OPT_NAME ;
 int PUSH_COLOR_ERROR ;
 int PUSH_COLOR_RESET ;
 unsigned int REJECT_ALREADY_EXISTS ;
 unsigned int REJECT_FETCH_FIRST ;
 unsigned int REJECT_NEEDS_FORCE ;
 unsigned int REJECT_NON_FF_HEAD ;
 unsigned int REJECT_NON_FF_OTHER ;
 int TRANS_OPT_RECEIVEPACK ;
 int TRANS_OPT_THIN ;
 char* _ (char*) ;
 int advise_checkout_pull_push () ;
 int advise_pull_before_push () ;
 int advise_ref_already_exists () ;
 int advise_ref_fetch_first () ;
 int advise_ref_needs_force () ;
 int cas ;
 int die (char*,int ) ;
 int error (char*,char*) ;
 int family ;
 int fprintf (int ,char*,char*) ;
 int is_empty_cas (int *) ;
 int progress ;
 char* push_get_color (int ) ;
 char* receivepack ;
 int stderr ;
 int the_repository ;
 scalar_t__ thin ;
 int trace2_region_enter (char*,char*,int ) ;
 int trace2_region_leave (char*,char*,int ) ;
 int transport_disconnect (struct transport*) ;
 int transport_push (int ,struct transport*,struct refspec*,int,unsigned int*) ;
 int transport_set_option (struct transport*,int ,char*) ;
 int transport_set_verbosity (struct transport*,scalar_t__,int ) ;
 scalar_t__ verbosity ;

__attribute__((used)) static int push_with_options(struct transport *transport, struct refspec *rs,
        int flags)
{
 int err;
 unsigned int reject_reasons;

 transport_set_verbosity(transport, verbosity, progress);
 transport->family = family;

 if (receivepack)
  transport_set_option(transport,
         TRANS_OPT_RECEIVEPACK, receivepack);
 transport_set_option(transport, TRANS_OPT_THIN, thin ? "yes" : ((void*)0));

 if (!is_empty_cas(&cas)) {
  if (!transport->smart_options)
   die("underlying transport does not support --%s option",
       CAS_OPT_NAME);
  transport->smart_options->cas = &cas;
 }

 if (verbosity > 0)
  fprintf(stderr, _("Pushing to %s\n"), transport->url);
 trace2_region_enter("push", "transport_push", the_repository);
 err = transport_push(the_repository, transport,
        rs, flags, &reject_reasons);
 trace2_region_leave("push", "transport_push", the_repository);
 if (err != 0) {
  fprintf(stderr, "%s", push_get_color(PUSH_COLOR_ERROR));
  error(_("failed to push some refs to '%s'"), transport->url);
  fprintf(stderr, "%s", push_get_color(PUSH_COLOR_RESET));
 }

 err |= transport_disconnect(transport);
 if (!err)
  return 0;

 if (reject_reasons & REJECT_NON_FF_HEAD) {
  advise_pull_before_push();
 } else if (reject_reasons & REJECT_NON_FF_OTHER) {
  advise_checkout_pull_push();
 } else if (reject_reasons & REJECT_ALREADY_EXISTS) {
  advise_ref_already_exists();
 } else if (reject_reasons & REJECT_FETCH_FIRST) {
  advise_ref_fetch_first();
 } else if (reject_reasons & REJECT_NEEDS_FORCE) {
  advise_ref_needs_force();
 }

 return 1;
}
