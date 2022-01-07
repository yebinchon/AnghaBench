
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct remote {char* name; int mirror; } ;


 struct strbuf STRBUF_INIT ;
 int add_branch (char const*,char const*,char const*,int,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void add_branches(struct remote *remote, const char **branches,
    const char *key)
{
 const char *remotename = remote->name;
 int mirror = remote->mirror;
 struct strbuf refspec = STRBUF_INIT;

 for (; *branches; branches++)
  add_branch(key, *branches, remotename, mirror, &refspec);

 strbuf_release(&refspec);
}
