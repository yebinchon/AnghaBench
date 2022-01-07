
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct am_state {int dir; } ;


 struct strbuf STRBUF_INIT ;
 int remove_dir_recursively (struct strbuf*,int ) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void am_destroy(const struct am_state *state)
{
 struct strbuf sb = STRBUF_INIT;

 strbuf_addstr(&sb, state->dir);
 remove_dir_recursively(&sb, 0);
 strbuf_release(&sb);
}
