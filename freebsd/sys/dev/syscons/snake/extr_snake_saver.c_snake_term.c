
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 int M_DEVBUF ;
 int free (int ,int ) ;
 int message ;
 int messagep ;

__attribute__((used)) static int
snake_term(video_adapter_t *adp)
{
 free(message, M_DEVBUF);
 free(messagep, M_DEVBUF);
 return 0;
}
