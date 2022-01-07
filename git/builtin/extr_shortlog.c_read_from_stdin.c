
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; scalar_t__ len; } ;
struct shortlog {scalar_t__ committer; } ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 int insert_one_record (struct shortlog*,int ,int ) ;
 scalar_t__ parse_stdin_author (struct shortlog*,struct strbuf*,char const*) ;
 int skip_prefix (int ,char const*,char const**) ;
 int stdin ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void read_from_stdin(struct shortlog *log)
{
 struct strbuf author = STRBUF_INIT;
 struct strbuf mapped_author = STRBUF_INIT;
 struct strbuf oneline = STRBUF_INIT;
 static const char *author_match[2] = { "Author: ", "author " };
 static const char *committer_match[2] = { "Commit: ", "committer " };
 const char **match;

 match = log->committer ? committer_match : author_match;
 while (strbuf_getline_lf(&author, stdin) != EOF) {
  const char *v;
  if (!skip_prefix(author.buf, match[0], &v) &&
      !skip_prefix(author.buf, match[1], &v))
   continue;
  while (strbuf_getline_lf(&oneline, stdin) != EOF &&
         oneline.len)
   ;
  while (strbuf_getline_lf(&oneline, stdin) != EOF &&
         !oneline.len)
   ;

  strbuf_reset(&mapped_author);
  if (parse_stdin_author(log, &mapped_author, v) < 0)
   continue;

  insert_one_record(log, mapped_author.buf, oneline.buf);
 }
 strbuf_release(&author);
 strbuf_release(&mapped_author);
 strbuf_release(&oneline);
}
