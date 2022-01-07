
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
in_job_list(long job, long *joblist, int len)
{
    int i;

    for (i = 0; i < len; i++)
 if (job == joblist[i])
     return 1;

    return 0;
}
