
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int strdup_strings; } ;
struct shortlog {int in2; int in1; int wrap; TYPE_1__ list; int common_repo_prefix; int mailmap; } ;


 int DEFAULT_INDENT1 ;
 int DEFAULT_INDENT2 ;
 int DEFAULT_WRAPLEN ;
 int memset (struct shortlog*,int ,int) ;
 int read_mailmap (int *,int *) ;

void shortlog_init(struct shortlog *log)
{
 memset(log, 0, sizeof(*log));

 read_mailmap(&log->mailmap, &log->common_repo_prefix);

 log->list.strdup_strings = 1;
 log->wrap = DEFAULT_WRAPLEN;
 log->in1 = DEFAULT_INDENT1;
 log->in2 = DEFAULT_INDENT2;
}
