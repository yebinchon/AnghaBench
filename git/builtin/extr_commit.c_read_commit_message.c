
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {int dummy; } ;


 int _ (char*) ;
 int die (int ,char const*) ;
 char* get_commit_output_encoding () ;
 char const* logmsg_reencode (struct commit*,int *,char const*) ;
 struct commit* lookup_commit_reference_by_name (char const*) ;

__attribute__((used)) static const char *read_commit_message(const char *name)
{
 const char *out_enc;
 struct commit *commit;

 commit = lookup_commit_reference_by_name(name);
 if (!commit)
  die(_("could not lookup commit %s"), name);
 out_enc = get_commit_output_encoding();
 return logmsg_reencode(commit, ((void*)0), out_enc);
}
