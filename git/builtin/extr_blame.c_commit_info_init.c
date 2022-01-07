
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_info {int summary; int committer_tz; int committer_mail; int committer; int author_tz; int author_mail; int author; } ;


 int strbuf_init (int *,int ) ;

__attribute__((used)) static void commit_info_init(struct commit_info *ci)
{

 strbuf_init(&ci->author, 0);
 strbuf_init(&ci->author_mail, 0);
 strbuf_init(&ci->author_tz, 0);
 strbuf_init(&ci->committer, 0);
 strbuf_init(&ci->committer_mail, 0);
 strbuf_init(&ci->committer_tz, 0);
 strbuf_init(&ci->summary, 0);
}
