
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_info {int summary; int committer_tz; int committer_mail; int committer; int author_tz; int author_mail; int author; } ;


 int strbuf_release (int *) ;

__attribute__((used)) static void commit_info_destroy(struct commit_info *ci)
{

 strbuf_release(&ci->author);
 strbuf_release(&ci->author_mail);
 strbuf_release(&ci->author_tz);
 strbuf_release(&ci->committer);
 strbuf_release(&ci->committer_mail);
 strbuf_release(&ci->committer_tz);
 strbuf_release(&ci->summary);
}
