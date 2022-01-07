
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct remote {int name; } ;
struct branch {int refname; } ;


 struct strbuf STRBUF_INIT ;
 int _ (int ) ;
 int die (int ,int ) ;
 int message_detached_head_die ;
 int refspec_append (int *,int ) ;
 int rs ;
 int strbuf_addf (struct strbuf*,char*,int ,int ) ;

__attribute__((used)) static void setup_push_current(struct remote *remote, struct branch *branch)
{
 struct strbuf refspec = STRBUF_INIT;

 if (!branch)
  die(_(message_detached_head_die), remote->name);
 strbuf_addf(&refspec, "%s:%s", branch->refname, branch->refname);
 refspec_append(&rs, refspec.buf);
}
