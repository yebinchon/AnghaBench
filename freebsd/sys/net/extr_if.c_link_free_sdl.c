
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int M_TEMP ;
 int free (struct sockaddr*,int ) ;

void
link_free_sdl(struct sockaddr *sa)
{
 free(sa, M_TEMP);
}
