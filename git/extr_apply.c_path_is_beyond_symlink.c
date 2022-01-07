
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct apply_state {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int assert (int) ;
 int path_is_beyond_symlink_1 (struct apply_state*,struct strbuf*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int path_is_beyond_symlink(struct apply_state *state, const char *name_)
{
 int ret;
 struct strbuf name = STRBUF_INIT;

 assert(*name_ != '\0');
 strbuf_addstr(&name, name_);
 ret = path_is_beyond_symlink_1(state, &name);
 strbuf_release(&name);

 return ret;
}
