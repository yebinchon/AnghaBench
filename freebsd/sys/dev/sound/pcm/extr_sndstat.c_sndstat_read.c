
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_resid; } ;
struct sndstat_file {scalar_t__ out_offset; scalar_t__ in_offset; int sbuf; } ;
struct cdev {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int SNDSTAT_LOCK () ;
 int SNDSTAT_UNLOCK () ;
 int devfs_get_cdevpriv (void**) ;
 int sbuf_data (int *) ;
 int sbuf_len (int *) ;
 int sndstat_prepare (struct sndstat_file*) ;
 int uiomove (int,int,struct uio*) ;

__attribute__((used)) static int
sndstat_read(struct cdev *i_dev, struct uio *buf, int flag)
{
 struct sndstat_file *pf;
 int err;
 int len;

 err = devfs_get_cdevpriv((void **)&pf);
 if (err != 0)
  return (err);


 if (buf->uio_resid == 0)
  return (0);

 SNDSTAT_LOCK();
 if (pf->out_offset != 0) {

  err = EINVAL;
  goto done;
 } else if (pf->in_offset == 0) {
  err = sndstat_prepare(pf);
  if (err <= 0) {
   err = ENOMEM;
   goto done;
  }
 }
 len = sbuf_len(&pf->sbuf) - pf->in_offset;
 if (len > buf->uio_resid)
  len = buf->uio_resid;
 if (len > 0)
  err = uiomove(sbuf_data(&pf->sbuf) + pf->in_offset, len, buf);
 pf->in_offset += len;
done:
 SNDSTAT_UNLOCK();
 return (err);
}
