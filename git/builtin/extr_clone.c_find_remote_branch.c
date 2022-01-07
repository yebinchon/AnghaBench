
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 struct ref* find_ref_by_name (struct ref const*,int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static struct ref *find_remote_branch(const struct ref *refs, const char *branch)
{
 struct ref *ref;
 struct strbuf head = STRBUF_INIT;
 strbuf_addstr(&head, "refs/heads/");
 strbuf_addstr(&head, branch);
 ref = find_ref_by_name(refs, head.buf);
 strbuf_release(&head);

 if (ref)
  return ref;

 strbuf_addstr(&head, "refs/tags/");
 strbuf_addstr(&head, branch);
 ref = find_ref_by_name(refs, head.buf);
 strbuf_release(&head);

 return ref;
}
