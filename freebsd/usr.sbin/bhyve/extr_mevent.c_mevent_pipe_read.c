
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ev_type { ____Placeholder_ev_type } ev_type ;
typedef int buf ;


 int MEVENT_MAX ;
 int read (int,char*,int) ;

__attribute__((used)) static void
mevent_pipe_read(int fd, enum ev_type type, void *param)
{
 char buf[MEVENT_MAX];
 int status;





 do {
  status = read(fd, buf, sizeof(buf));
 } while (status == MEVENT_MAX);
}
