
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_file {int kf_fd; } ;


 int INT_MIN ;
 int fail_err (char*) ;
 int free (struct kinfo_file*) ;
 int getpid () ;
 struct kinfo_file* kinfo_getfile (int ,int*) ;

__attribute__((used)) static int
highest_fd(void)
{
 struct kinfo_file *kif;
 int cnt, i, highest;

 kif = kinfo_getfile(getpid(), &cnt);
 if (kif == ((void*)0))
  fail_err("kinfo_getfile");
 highest = INT_MIN;
 for (i = 0; i < cnt; i++)
  if (kif[i].kf_fd > highest)
   highest = kif[i].kf_fd;
 free(kif);
 return (highest);
}
