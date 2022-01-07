
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int temp ;
struct uio {int uio_resid; } ;
struct sndstat_file {scalar_t__ in_offset; scalar_t__ out_offset; int sbuf; } ;
struct cdev {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int SNDSTAT_LOCK () ;
 int SNDSTAT_UNLOCK () ;
 int devfs_get_cdevpriv (void**) ;
 scalar_t__ sbuf_bcat (int *,int *,int) ;
 int sbuf_clear (int *) ;
 int sbuf_finish (int *) ;
 scalar_t__ sbuf_len (int *) ;
 int uiomove (int *,int,struct uio*) ;

__attribute__((used)) static int
sndstat_write(struct cdev *i_dev, struct uio *buf, int flag)
{
 struct sndstat_file *pf;
 uint8_t temp[64];
 int err;
 int len;

 err = devfs_get_cdevpriv((void **)&pf);
 if (err != 0)
  return (err);


 if (buf->uio_resid == 0)
  return (0);


 if (buf->uio_resid > 65536)
  return (ENOMEM);

 SNDSTAT_LOCK();
 if (pf->in_offset != 0) {

  err = EINVAL;
 } else {

  sbuf_clear(&pf->sbuf);
  while (1) {
   len = sizeof(temp);
   if (len > buf->uio_resid)
    len = buf->uio_resid;
   if (len > 0) {
    err = uiomove(temp, len, buf);
    if (err)
     break;
   } else {
    break;
   }
   if (sbuf_bcat(&pf->sbuf, temp, len) < 0) {
    err = ENOMEM;
    break;
   }
  }
  sbuf_finish(&pf->sbuf);
  if (err == 0)
   pf->out_offset = sbuf_len(&pf->sbuf);
  else
   pf->out_offset = 0;
 }
 SNDSTAT_UNLOCK();
 return (err);
}
