
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transport {int progress; } ;
struct strbuf {int buf; } ;
struct ref {TYPE_1__* peer_ref; } ;
struct check_connected_options {int check_refs_only; int progress; struct transport* transport; } ;
struct TYPE_2__ {int name; } ;


 struct check_connected_options CHECK_CONNECTED_INIT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ check_connected (int ,struct ref const**,struct check_connected_options*) ;
 scalar_t__ create_symref (int ,int ,char const*) ;
 int die (int ,...) ;
 int iterate_ref_map ;
 int option_bare ;
 int option_no_tags ;
 scalar_t__ option_single_branch ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int write_followtags (struct ref const*,char const*) ;
 int write_remote_refs (struct ref const*) ;

__attribute__((used)) static void update_remote_refs(const struct ref *refs,
          const struct ref *mapped_refs,
          const struct ref *remote_head_points_at,
          const char *branch_top,
          const char *msg,
          struct transport *transport,
          int check_connectivity,
          int check_refs_only)
{
 const struct ref *rm = mapped_refs;

 if (check_connectivity) {
  struct check_connected_options opt = CHECK_CONNECTED_INIT;

  opt.transport = transport;
  opt.progress = transport->progress;
  opt.check_refs_only = !!check_refs_only;

  if (check_connected(iterate_ref_map, &rm, &opt))
   die(_("remote did not send all necessary objects"));
 }

 if (refs) {
  write_remote_refs(mapped_refs);
  if (option_single_branch && !option_no_tags)
   write_followtags(refs, msg);
 }

 if (remote_head_points_at && !option_bare) {
  struct strbuf head_ref = STRBUF_INIT;
  strbuf_addstr(&head_ref, branch_top);
  strbuf_addstr(&head_ref, "HEAD");
  if (create_symref(head_ref.buf,
      remote_head_points_at->peer_ref->name,
      msg) < 0)
   die(_("unable to update %s"), head_ref.buf);
  strbuf_release(&head_ref);
 }
}
