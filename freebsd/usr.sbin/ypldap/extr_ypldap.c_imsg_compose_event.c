
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct imsgev {int ibuf; } ;
typedef int pid_t ;


 int imsg_compose (int *,int ,int ,int ,int,void*,int ) ;
 int imsg_event_add (struct imsgev*) ;

int
imsg_compose_event(struct imsgev *iev, u_int16_t type, u_int32_t peerid,
    pid_t pid, int fd, void *data, u_int16_t datalen)
{
 int ret;

 if ((ret = imsg_compose(&iev->ibuf, type, peerid,
     pid, fd, data, datalen)) != -1)
  imsg_event_add(iev);
 return (ret);
}
