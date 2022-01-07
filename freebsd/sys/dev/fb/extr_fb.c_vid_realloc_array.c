
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdevsw {int dummy; } ;
typedef struct cdevsw video_switch_t ;
typedef struct cdevsw video_adapter_t ;


 scalar_t__ ARRAY_DELTA ;
 int ENOMEM ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 struct cdevsw** adapter ;
 int adapters ;
 int bcopy (struct cdevsw**,struct cdevsw**,int) ;
 scalar_t__ bootverbose ;
 int free (struct cdevsw**,int ) ;
 struct cdevsw** malloc (int,int ,int) ;
 int printf (char*,int) ;
 int rounddown (scalar_t__,scalar_t__) ;
 int spltty () ;
 int splx (int) ;
 int vid_malloc ;
 struct cdevsw** vidcdevsw ;
 struct cdevsw** vidsw ;

__attribute__((used)) static int
vid_realloc_array(void)
{
 video_adapter_t **new_adp;
 video_switch_t **new_vidsw;



 int newsize;
 int s;

 if (!vid_malloc)
  return ENOMEM;

 s = spltty();
 newsize = rounddown(adapters + ARRAY_DELTA, ARRAY_DELTA);
 new_adp = malloc(sizeof(*new_adp)*newsize, M_DEVBUF, M_WAITOK | M_ZERO);
 new_vidsw = malloc(sizeof(*new_vidsw)*newsize, M_DEVBUF,
     M_WAITOK | M_ZERO);




 bcopy(adapter, new_adp, sizeof(*adapter)*adapters);
 bcopy(vidsw, new_vidsw, sizeof(*vidsw)*adapters);



 if (adapters > 1) {
  free(adapter, M_DEVBUF);
  free(vidsw, M_DEVBUF);



 }
 adapter = new_adp;
 vidsw = new_vidsw;



 adapters = newsize;
 splx(s);

 if (bootverbose)
  printf("fb: new array size %d\n", adapters);

 return 0;
}
