
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct am_state {int author_date; int author_email; int author_name; } ;


 struct strbuf STRBUF_INIT ;
 int sq_quote_buf (struct strbuf*,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int write_state_text (struct am_state const*,char*,int ) ;

__attribute__((used)) static void write_author_script(const struct am_state *state)
{
 struct strbuf sb = STRBUF_INIT;

 strbuf_addstr(&sb, "GIT_AUTHOR_NAME=");
 sq_quote_buf(&sb, state->author_name);
 strbuf_addch(&sb, '\n');

 strbuf_addstr(&sb, "GIT_AUTHOR_EMAIL=");
 sq_quote_buf(&sb, state->author_email);
 strbuf_addch(&sb, '\n');

 strbuf_addstr(&sb, "GIT_AUTHOR_DATE=");
 sq_quote_buf(&sb, state->author_date);
 strbuf_addch(&sb, '\n');

 write_state_text(state, "author-script", sb.buf);

 strbuf_release(&sb);
}
