
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 char* absolute_pathdup (char const*) ;
 char* get_repo_path_1 (struct strbuf*,int*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static char *get_repo_path(const char *repo, int *is_bundle)
{
 struct strbuf path = STRBUF_INIT;
 const char *raw;
 char *canon;

 strbuf_addstr(&path, repo);
 raw = get_repo_path_1(&path, is_bundle);
 canon = raw ? absolute_pathdup(raw) : ((void*)0);
 strbuf_release(&path);
 return canon;
}
