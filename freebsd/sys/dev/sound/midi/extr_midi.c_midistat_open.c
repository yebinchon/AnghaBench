
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int EBUSY ;
 int ENOMEM ;
 int ENXIO ;
 int MIDI_DEBUG (int,int ) ;
 int SBUF_AUTOEXTEND ;
 int midistat_isopen ;
 int midistat_lock ;
 scalar_t__ midistat_prepare (int *) ;
 int midistat_sbuf ;
 int printf (char*) ;
 int * sbuf_new (int *,int *,int,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
midistat_open(struct cdev *i_dev, int flags, int mode, struct thread *td)
{
 int error;

 MIDI_DEBUG(1, printf("midistat_open\n"));

 sx_xlock(&midistat_lock);
 if (midistat_isopen) {
  sx_xunlock(&midistat_lock);
  return EBUSY;
 }
 midistat_isopen = 1;
 if (sbuf_new(&midistat_sbuf, ((void*)0), 4096, SBUF_AUTOEXTEND) == ((void*)0)) {
  error = ENXIO;
  goto out;
 }
 error = (midistat_prepare(&midistat_sbuf) > 0) ? 0 : ENOMEM;
out:
 if (error)
  midistat_isopen = 0;
 sx_xunlock(&midistat_lock);
 return error;
}
