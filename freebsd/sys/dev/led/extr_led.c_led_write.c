
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_resid; } ;
struct sbuf {int dummy; } ;
struct ledsc {int dummy; } ;
struct cdev {struct ledsc* si_drv1; } ;


 int EINVAL ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int free (char*,int ) ;
 int led_mtx ;
 int led_parse (char*,struct sbuf**,int*) ;
 int led_state (struct ledsc*,struct sbuf**,int) ;
 char* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sbuf_delete (struct sbuf*) ;
 int uiomove (char*,size_t,struct uio*) ;

__attribute__((used)) static int
led_write(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct ledsc *sc;
 char *s;
 struct sbuf *sb = ((void*)0);
 int error, state = 0;

 if (uio->uio_resid > 512)
  return (EINVAL);
 s = malloc(uio->uio_resid + 1, M_DEVBUF, M_WAITOK);
 s[uio->uio_resid] = '\0';
 error = uiomove(s, uio->uio_resid, uio);
 if (error) {
  free(s, M_DEVBUF);
  return (error);
 }
 error = led_parse(s, &sb, &state);
 free(s, M_DEVBUF);
 if (error)
  return (error);
 mtx_lock(&led_mtx);
 sc = dev->si_drv1;
 if (sc != ((void*)0))
  error = led_state(sc, &sb, state);
 mtx_unlock(&led_mtx);
 if (sb != ((void*)0))
  sbuf_delete(sb);
 return (error);
}
