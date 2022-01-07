
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int commits; } ;


 int SIGALRM ;
 int SIG_IGN ;
 int estimate_commit_count (int ) ;
 int show_early_header (struct rev_info*,char*,int) ;
 int signal (int ,int ) ;

__attribute__((used)) static void finish_early_output(struct rev_info *rev)
{
 int n = estimate_commit_count(rev->commits);
 signal(SIGALRM, SIG_IGN);
 show_early_header(rev, "done", n);
}
