
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signature_check {int dummy; } ;
struct commit {int dummy; } ;
typedef int signature_check ;


 int check_commit_signature (struct commit*,struct signature_check*) ;
 int memset (struct signature_check*,int ,int) ;
 int print_signature_buffer (struct signature_check*,unsigned int) ;
 int signature_check_clear (struct signature_check*) ;

__attribute__((used)) static int run_gpg_verify(struct commit *commit, unsigned flags)
{
 struct signature_check signature_check;
 int ret;

 memset(&signature_check, 0, sizeof(signature_check));

 ret = check_commit_signature(commit, &signature_check);
 print_signature_buffer(&signature_check, flags);

 signature_check_clear(&signature_check);
 return ret;
}
