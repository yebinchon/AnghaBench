
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shortlog {int dummy; } ;
struct rev_info {int dummy; } ;
struct commit {int dummy; } ;


 int _ (char*) ;
 int die (int ) ;
 struct commit* get_revision (struct rev_info*) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int shortlog_add_commit (struct shortlog*,struct commit*) ;

__attribute__((used)) static void get_from_rev(struct rev_info *rev, struct shortlog *log)
{
 struct commit *commit;

 if (prepare_revision_walk(rev))
  die(_("revision walk setup failed"));
 while ((commit = get_revision(rev)) != ((void*)0))
  shortlog_add_commit(log, commit);
}
