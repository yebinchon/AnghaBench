
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_journal_desc {int jd_fstype; } ;


 struct g_journal_desc** g_journal_filesystems ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static const struct g_journal_desc *
g_journal_find_desc(const char *fstype)
{
 const struct g_journal_desc *desc;
 int i;

 for (desc = g_journal_filesystems[i = 0]; desc != ((void*)0);
      desc = g_journal_filesystems[++i]) {
  if (strcmp(desc->jd_fstype, fstype) == 0)
   break;
 }
 return (desc);
}
