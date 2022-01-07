
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_offset; int uio_resid; } ;
struct cdev {int dummy; } ;


 int EBADF ;
 int EINVAL ;
 int MIDI_DEBUG (int,int ) ;
 long lmin (int ,scalar_t__) ;
 int midistat_isopen ;
 int midistat_lock ;
 int midistat_sbuf ;
 int printf (char*) ;
 scalar_t__ sbuf_data (int *) ;
 scalar_t__ sbuf_len (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int uiomove (scalar_t__,long,struct uio*) ;

__attribute__((used)) static int
midistat_read(struct cdev *i_dev, struct uio *uio, int flag)
{
 long l;
 int err;

 MIDI_DEBUG(4, printf("midistat_read\n"));
 sx_xlock(&midistat_lock);
 if (!midistat_isopen) {
  sx_xunlock(&midistat_lock);
  return EBADF;
 }
 if (uio->uio_offset < 0 || uio->uio_offset > sbuf_len(&midistat_sbuf)) {
  sx_xunlock(&midistat_lock);
  return EINVAL;
 }
 err = 0;
 l = lmin(uio->uio_resid, sbuf_len(&midistat_sbuf) - uio->uio_offset);
 if (l > 0) {
  err = uiomove(sbuf_data(&midistat_sbuf) + uio->uio_offset, l,
      uio);
 }
 sx_xunlock(&midistat_lock);
 return err;
}
