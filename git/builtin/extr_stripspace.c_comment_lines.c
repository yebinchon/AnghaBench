
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int free (char*) ;
 int strbuf_add_commented_lines (struct strbuf*,char*,size_t) ;
 char* strbuf_detach (struct strbuf*,size_t*) ;

__attribute__((used)) static void comment_lines(struct strbuf *buf)
{
 char *msg;
 size_t len;

 msg = strbuf_detach(buf, &len);
 strbuf_add_commented_lines(buf, msg, len);
 free(msg);
}
