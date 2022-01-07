
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int EBADF ;
 int MIDI_DEBUG (int,int ) ;
 scalar_t__ midistat_isopen ;
 int midistat_lock ;
 int midistat_sbuf ;
 int printf (char*) ;
 int sbuf_delete (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
midistat_close(struct cdev *i_dev, int flags, int mode, struct thread *td)
{
 MIDI_DEBUG(1, printf("midistat_close\n"));
 sx_xlock(&midistat_lock);
 if (!midistat_isopen) {
  sx_xunlock(&midistat_lock);
  return EBADF;
 }
 sbuf_delete(&midistat_sbuf);
 midistat_isopen = 0;
 sx_xunlock(&midistat_lock);
 return 0;
}
