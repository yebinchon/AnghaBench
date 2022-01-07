
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bhnd_nvram_io {int dummy; } ;
struct bcm_nvram_iocfe {size_t offset; size_t size; int fd; } ;
typedef size_t int64_t ;


 int ENXIO ;
 size_t INT64_MAX ;
 int INT_MAX ;
 int IOCFE_LOG (struct bcm_nvram_iocfe*,char*,int,...) ;
 int cfe_readblk (int ,size_t,void*,int) ;
 int ummin (int ,size_t) ;

__attribute__((used)) static int
bhnd_nvram_iocfe_read(struct bhnd_nvram_io *io, size_t offset, void *buffer,
    size_t nbytes)
{
 struct bcm_nvram_iocfe *iocfe;
 size_t remain;
 int64_t cfe_offset;
 int nr, nreq;

 iocfe = (struct bcm_nvram_iocfe *)io;







 if (INT64_MAX - offset < iocfe->offset)
  return (ENXIO);

 cfe_offset = iocfe->offset + offset;


 if (INT64_MAX - cfe_offset < nbytes)
  return (ENXIO);


 for (remain = nbytes; remain > 0;) {
  void *p;
  size_t nread;
  int64_t cfe_noff;

  nread = (nbytes - remain);
  cfe_noff = cfe_offset + nread;
  p = ((uint8_t *)buffer + nread);
  nreq = ummin(INT_MAX, remain);

  nr = cfe_readblk(iocfe->fd, cfe_noff, p, nreq);
  if (nr < 0) {
   IOCFE_LOG(iocfe, "cfe_readblk() failed: %d\n", nr);
   return (ENXIO);
  }


  if (nr == 0 && remain > 0) {


   if (remain < iocfe->size &&
       iocfe->size - remain > offset)
   {
    IOCFE_LOG(iocfe, "cfe_readblk() returned "
        "unexpected short read (%d/%d)\n", nr,
        nreq);
    return (ENXIO);
   }
  }

  if (nr == 0)
   break;

  remain -= nr;
 }


 if (remain > 0)
  return (ENXIO);

 return (0);
}
