
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct signature_check {int result; char* signer; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
typedef int signature_check ;


 int DEFAULT_ABBREV ;
 int GIT_MAX_HEXSZ ;
 char* _ (char*) ;
 int check_commit_signature (struct commit*,struct signature_check*) ;
 int die (char*,char*,...) ;
 int find_unique_abbrev_r (char*,int *,int ) ;
 int memset (struct signature_check*,int ,int) ;
 int printf (char*,char*,char*) ;
 int signature_check_clear (struct signature_check*) ;

void verify_merge_signature(struct commit *commit, int verbosity)
{
 char hex[GIT_MAX_HEXSZ + 1];
 struct signature_check signature_check;
 memset(&signature_check, 0, sizeof(signature_check));

 check_commit_signature(commit, &signature_check);

 find_unique_abbrev_r(hex, &commit->object.oid, DEFAULT_ABBREV);
 switch (signature_check.result) {
 case 'G':
  break;
 case 'U':
  die(_("Commit %s has an untrusted GPG signature, "
        "allegedly by %s."), hex, signature_check.signer);
 case 'B':
  die(_("Commit %s has a bad GPG signature "
        "allegedly by %s."), hex, signature_check.signer);
 default:
  die(_("Commit %s does not have a GPG signature."), hex);
 }
 if (verbosity >= 0 && signature_check.result == 'G')
  printf(_("Commit %s has a good GPG signature by %s\n"),
         hex, signature_check.signer);

 signature_check_clear(&signature_check);
}
