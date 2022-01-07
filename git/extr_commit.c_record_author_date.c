
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct ident_split {char* date_end; int date_begin; } ;
struct commit {int dummy; } ;
struct author_date_slab {int dummy; } ;


 int * author_date_slab_at (struct author_date_slab*,struct commit*) ;
 char* find_commit_header (char const*,char*,size_t*) ;
 char* get_commit_buffer (struct commit*,int *) ;
 int parse_timestamp (int ,char**,int) ;
 scalar_t__ split_ident_line (struct ident_split*,char const*,size_t) ;
 int unuse_commit_buffer (struct commit*,char const*) ;

void record_author_date(struct author_date_slab *author_date,
   struct commit *commit)
{
 const char *buffer = get_commit_buffer(commit, ((void*)0));
 struct ident_split ident;
 const char *ident_line;
 size_t ident_len;
 char *date_end;
 timestamp_t date;

 ident_line = find_commit_header(buffer, "author", &ident_len);
 if (!ident_line)
  goto fail_exit;
 if (split_ident_line(&ident, ident_line, ident_len) ||
     !ident.date_begin || !ident.date_end)
  goto fail_exit;

 date = parse_timestamp(ident.date_begin, &date_end, 10);
 if (date_end != ident.date_end)
  goto fail_exit;
 *(author_date_slab_at(author_date, commit)) = date;

fail_exit:
 unuse_commit_buffer(commit, buffer);
}
