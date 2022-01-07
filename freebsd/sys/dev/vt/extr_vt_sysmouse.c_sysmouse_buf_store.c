
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MOUSE_SYS_PACKETSIZE ;
 int SIGIO ;
 int SM_ASYNC ;
 unsigned int SYSMOUSE_MAXFRAMES ;
 int cv_broadcast (int *) ;
 int memcpy (int *,unsigned char const*,unsigned int) ;
 int pgsigio (int **,int ,int ) ;
 int selwakeup (int *) ;
 int * sysmouse_buffer ;
 int sysmouse_bufpoll ;
 int sysmouse_flags ;
 unsigned int sysmouse_length ;
 int * sysmouse_sigio ;
 int sysmouse_sleep ;
 unsigned int sysmouse_start ;

__attribute__((used)) static void
sysmouse_buf_store(const unsigned char buf[MOUSE_SYS_PACKETSIZE])
{
 unsigned int idx;

 if (sysmouse_buffer == ((void*)0) || sysmouse_length == SYSMOUSE_MAXFRAMES)
  return;

 idx = (sysmouse_start + sysmouse_length) % SYSMOUSE_MAXFRAMES;
 memcpy(sysmouse_buffer + idx * MOUSE_SYS_PACKETSIZE, buf,
     MOUSE_SYS_PACKETSIZE);
 sysmouse_length++;
 cv_broadcast(&sysmouse_sleep);
 selwakeup(&sysmouse_bufpoll);
 if (sysmouse_flags & SM_ASYNC && sysmouse_sigio != ((void*)0))
  pgsigio(&sysmouse_sigio, SIGIO, 0);
}
