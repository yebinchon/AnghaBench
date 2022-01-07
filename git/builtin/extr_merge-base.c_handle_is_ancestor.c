
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {int dummy; } ;


 int die (char*) ;
 struct commit* get_commit_reference (char const*) ;
 scalar_t__ in_merge_bases (struct commit*,struct commit*) ;

__attribute__((used)) static int handle_is_ancestor(int argc, const char **argv)
{
 struct commit *one, *two;

 if (argc != 2)
  die("--is-ancestor takes exactly two commits");
 one = get_commit_reference(argv[0]);
 two = get_commit_reference(argv[1]);
 if (in_merge_bases(one, two))
  return 0;
 else
  return 1;
}
