
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shared_info {int tag; scalar_t__ failed; } ;


 int exit (int ) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
cok(struct shared_info *info, const char *descr)
{

 info->failed = 0;
 strlcpy(info->tag, descr, sizeof(info->tag));
 exit(0);
}
