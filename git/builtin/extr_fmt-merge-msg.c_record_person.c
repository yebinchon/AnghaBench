
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct commit {int dummy; } ;


 char* get_commit_buffer (struct commit*,int *) ;
 int record_person_from_buf (int,struct string_list*,char const*) ;
 int unuse_commit_buffer (struct commit*,char const*) ;

__attribute__((used)) static void record_person(int which, struct string_list *people,
     struct commit *commit)
{
 const char *buffer = get_commit_buffer(commit, ((void*)0));
 record_person_from_buf(which, people, buffer);
 unuse_commit_buffer(commit, buffer);
}
