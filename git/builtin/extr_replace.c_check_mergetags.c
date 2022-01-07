
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {int dummy; } ;
struct check_mergetag_data {int argc; char const** argv; } ;


 int check_one_mergetag ;
 int for_each_mergetag (int ,struct commit*,struct check_mergetag_data*) ;

__attribute__((used)) static int check_mergetags(struct commit *commit, int argc, const char **argv)
{
 struct check_mergetag_data mergetag_data;

 mergetag_data.argc = argc;
 mergetag_data.argv = argv;
 return for_each_mergetag(check_one_mergetag, commit, &mergetag_data);
}
