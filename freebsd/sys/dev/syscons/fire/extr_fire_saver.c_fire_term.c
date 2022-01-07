
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 int M_DEVBUF ;
 int buf ;
 int free (int ,int ) ;

__attribute__((used)) static int
fire_term(video_adapter_t *adp)
{
 free(buf, M_DEVBUF);
 return (0);
}
