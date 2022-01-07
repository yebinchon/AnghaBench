
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int * platform_data; } ;
struct ahc_platform_data {int dummy; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int * malloc (int,int ,int) ;

int
ahc_platform_alloc(struct ahc_softc *ahc, void *platform_arg)
{
 ahc->platform_data = malloc(sizeof(struct ahc_platform_data), M_DEVBUF,
     M_NOWAIT | M_ZERO);
 if (ahc->platform_data == ((void*)0))
  return (ENOMEM);
 return (0);
}
