
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int * platform_data; } ;
struct ahd_platform_data {int dummy; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int * malloc (int,int ,int) ;

int
ahd_platform_alloc(struct ahd_softc *ahd, void *platform_arg)
{
 ahd->platform_data = malloc(sizeof(struct ahd_platform_data), M_DEVBUF,
     M_NOWAIT | M_ZERO);
 if (ahd->platform_data == ((void*)0))
  return (ENOMEM);
 return (0);
}
