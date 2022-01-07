
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int compare_commits_by_commit_date (void const*,void const*,void*) ;

__attribute__((used)) static int compare_commits_by_reverse_commit_date(const void *a,
        const void *b,
        void *c)
{
 return -compare_commits_by_commit_date(a, b, c);
}
