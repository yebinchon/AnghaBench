
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; } ;
struct fmt_merge_msg_opts {int add_title; int credit_people; int shortlog_len; } ;
typedef int opts ;


 int fmt_merge_msg (struct strbuf*,struct strbuf*,struct fmt_merge_msg_opts*) ;
 int have_message ;
 int memset (struct fmt_merge_msg_opts*,int ,int) ;
 scalar_t__ option_edit ;
 int shortlog_len ;
 int strbuf_setlen (struct strbuf*,scalar_t__) ;

__attribute__((used)) static void prepare_merge_message(struct strbuf *merge_names, struct strbuf *merge_msg)
{
 struct fmt_merge_msg_opts opts;

 memset(&opts, 0, sizeof(opts));
 opts.add_title = !have_message;
 opts.shortlog_len = shortlog_len;
 opts.credit_people = (0 < option_edit);

 fmt_merge_msg(merge_names, merge_msg, &opts);
 if (merge_msg->len)
  strbuf_setlen(merge_msg, merge_msg->len - 1);
}
