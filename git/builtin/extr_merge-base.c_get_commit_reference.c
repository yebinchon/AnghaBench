
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct commit {int dummy; } ;


 int die (char*,char const*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 struct commit* lookup_commit_reference (int ,struct object_id*) ;
 int the_repository ;

__attribute__((used)) static struct commit *get_commit_reference(const char *arg)
{
 struct object_id revkey;
 struct commit *r;

 if (get_oid(arg, &revkey))
  die("Not a valid object name %s", arg);
 r = lookup_commit_reference(the_repository, &revkey);
 if (!r)
  die("Not a valid commit name %s", arg);

 return r;
}
