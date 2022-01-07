
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 int MSGBUF_LEN ;
 int M_DEVBUF ;
 int M_WAITOK ;
 void* malloc (int,int ,int ) ;
 void* message ;
 void* messagep ;
 int update_msg () ;

__attribute__((used)) static int
snake_init(video_adapter_t *adp)
{
 message = malloc(MSGBUF_LEN, M_DEVBUF, M_WAITOK);
 messagep = malloc(MSGBUF_LEN * sizeof *messagep, M_DEVBUF, M_WAITOK);
 update_msg();
 return 0;
}
