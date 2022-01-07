
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc_play_track {int start_track; int start_index; int end_track; int end_index; } ;


 int CDIOCPLAYTRACKS ;
 int fd ;
 int ioctl (int ,int ,struct ioc_play_track*) ;

__attribute__((used)) static int
play_track(int tstart, int istart, int tend, int iend)
{
 struct ioc_play_track t;

 t.start_track = tstart;
 t.start_index = istart;
 t.end_track = tend;
 t.end_index = iend;

 return ioctl (fd, CDIOCPLAYTRACKS, &t);
}
