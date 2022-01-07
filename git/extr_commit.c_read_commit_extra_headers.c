
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_extra_header {int dummy; } ;
struct commit {int dummy; } ;


 char* get_commit_buffer (struct commit*,unsigned long*) ;
 struct commit_extra_header* read_commit_extra_header_lines (char const*,unsigned long,char const**) ;
 int unuse_commit_buffer (struct commit*,char const*) ;

struct commit_extra_header *read_commit_extra_headers(struct commit *commit,
            const char **exclude)
{
 struct commit_extra_header *extra = ((void*)0);
 unsigned long size;
 const char *buffer = get_commit_buffer(commit, &size);
 extra = read_commit_extra_header_lines(buffer, size, exclude);
 unuse_commit_buffer(commit, buffer);
 return extra;
}
