
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rebase_options {scalar_t__ type; } ;


 scalar_t__ REBASE_INTERACTIVE ;
 scalar_t__ REBASE_PRESERVE_MERGES ;

__attribute__((used)) static int is_interactive(struct rebase_options *opts)
{
 return opts->type == REBASE_INTERACTIVE ||
  opts->type == REBASE_PRESERVE_MERGES;
}
