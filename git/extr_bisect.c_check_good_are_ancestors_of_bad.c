
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct repository {int dummy; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr; } ;


 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 scalar_t__ S_ISREG (int ) ;
 int _ (char*) ;
 scalar_t__ check_ancestors (struct repository*,int,struct commit**,char const*) ;
 int check_merge_bases (int,struct commit**,int) ;
 int close (int) ;
 int current_bad_oid ;
 int die (int ,int ) ;
 int free (char*) ;
 struct commit** get_bad_and_good_commits (struct repository*,int*) ;
 char* git_pathdup (char*) ;
 TYPE_1__ good_revs ;
 int open (char*,int,int) ;
 int stat (char*,struct stat*) ;
 int term_bad ;
 int warning_errno (int ,char*) ;

__attribute__((used)) static void check_good_are_ancestors_of_bad(struct repository *r,
         const char *prefix,
         int no_checkout)
{
 char *filename = git_pathdup("BISECT_ANCESTORS_OK");
 struct stat st;
 int fd, rev_nr;
 struct commit **rev;

 if (!current_bad_oid)
  die(_("a %s revision is needed"), term_bad);


 if (!stat(filename, &st) && S_ISREG(st.st_mode))
  goto done;


 if (good_revs.nr == 0)
  goto done;


 rev = get_bad_and_good_commits(r, &rev_nr);
 if (check_ancestors(r, rev_nr, rev, prefix))
  check_merge_bases(rev_nr, rev, no_checkout);
 free(rev);


 fd = open(filename, O_CREAT | O_TRUNC | O_WRONLY, 0600);
 if (fd < 0)
  warning_errno(_("could not create file '%s'"),
         filename);
 else
  close(fd);
 done:
 free(filename);
}
