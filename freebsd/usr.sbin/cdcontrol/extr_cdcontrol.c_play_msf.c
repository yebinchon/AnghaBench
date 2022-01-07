
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc_play_msf {int start_m; int start_s; int start_f; int end_m; int end_s; int end_f; } ;


 int CDIOCPLAYMSF ;
 int fd ;
 int ioctl (int ,int ,char*) ;

__attribute__((used)) static int
play_msf(int start_m, int start_s, int start_f,
 int end_m, int end_s, int end_f)
{
 struct ioc_play_msf a;

 a.start_m = start_m;
 a.start_s = start_s;
 a.start_f = start_f;
 a.end_m = end_m;
 a.end_s = end_s;
 a.end_f = end_f;

 return ioctl (fd, CDIOCPLAYMSF, (char *) &a);
}
