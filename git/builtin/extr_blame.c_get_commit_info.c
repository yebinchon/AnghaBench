
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_info {int summary; int committer_tz; int committer_time; int committer_mail; int committer; int author_tz; int author_time; int author_mail; int author; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int commit_info_init (struct commit_info*) ;
 int find_commit_subject (char const*,char const**) ;
 int get_ac_line (char const*,char*,int *,int *,int *,int *) ;
 char* get_log_output_encoding () ;
 char* logmsg_reencode (struct commit*,int *,char const*) ;
 int oid_to_hex (int *) ;
 int strbuf_add (int *,char const*,int) ;
 int strbuf_addf (int *,char*,int ) ;
 int unuse_commit_buffer (struct commit*,char const*) ;

__attribute__((used)) static void get_commit_info(struct commit *commit,
       struct commit_info *ret,
       int detailed)
{
 int len;
 const char *subject, *encoding;
 const char *message;

 commit_info_init(ret);

 encoding = get_log_output_encoding();
 message = logmsg_reencode(commit, ((void*)0), encoding);
 get_ac_line(message, "\nauthor ",
      &ret->author, &ret->author_mail,
      &ret->author_time, &ret->author_tz);

 if (!detailed) {
  unuse_commit_buffer(commit, message);
  return;
 }

 get_ac_line(message, "\ncommitter ",
      &ret->committer, &ret->committer_mail,
      &ret->committer_time, &ret->committer_tz);

 len = find_commit_subject(message, &subject);
 if (len)
  strbuf_add(&ret->summary, subject, len);
 else
  strbuf_addf(&ret->summary, "(%s)", oid_to_hex(&commit->object.oid));

 unuse_commit_buffer(commit, message);
}
