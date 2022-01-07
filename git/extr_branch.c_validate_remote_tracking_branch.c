
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_tracking_branch ;
 int for_each_remote (int ,char*) ;

__attribute__((used)) static int validate_remote_tracking_branch(char *ref)
{
 return !for_each_remote(check_tracking_branch, ref);
}
