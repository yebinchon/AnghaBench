
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct thread {int dummy; } ;
struct synth_info {int device; float* name; int dev_type; int capabilities; int synth_type; } ;
struct TYPE_4__ {int fl; } ;
struct TYPE_3__ {int rl; } ;
struct seq_softc {int unit; int timerbase; int midi_number; int out_water; int pre_event_timeout; int seq_lock; TYPE_2__ out_q; int * midi_flags; int music; TYPE_1__ in_q; } ;
struct midi_info {int device; float* name; int dev_type; int capabilities; int synth_type; } ;
struct cdev {struct seq_softc* si_drv1; } ;
typedef int kobj_t ;
typedef int * caddr_t ;


 int EINVAL ;
 int ENXIO ;
 int EV_SZ ;
 int EV_TIMING ;
 int LOOKUP_OPEN ;
 int MIDIMKDEV (int ,int,int ) ;
 int MIDIQ_SIZE (TYPE_2__) ;
 int O_RDONLY ;
 int O_WRONLY ;
 int RANGE (int,int,int ) ;
 int SEQ_DEBUG (int,...) ;
 int SND_DEV_MIDIN ;
 int SYNTH_TYPE_MIDI ;
 int TMR_CONTINUE ;
 int TMR_START ;
 int TMR_STOP ;
 int TMR_TEMPO ;
 int TMR_TIMERBASE ;
 int bzero (struct synth_info*,int) ;
 int cmdtab_seqioctl ;
 int hz ;
 int lookup_mididev (struct seq_softc*,int,int ,int *) ;
 int major (struct cdev*) ;
 char* midi_cmdname (int,int ) ;
 int midi_ioctl (int ,int,int *,int,struct thread*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,...) ;
 int seq_convertold (int*,int*) ;
 int seq_fetch_mid (struct seq_softc*,int,int *) ;
 int seq_processevent (struct seq_softc*,int*) ;
 int seq_reset (struct seq_softc*) ;
 int seq_sync (struct seq_softc*) ;
 int timer_now (struct seq_softc*) ;

int
mseq_ioctl(struct cdev *i_dev, u_long cmd, caddr_t arg, int mode,
    struct thread *td)
{
 int midiunit, ret, tmp;
 struct seq_softc *scp = i_dev->si_drv1;
 struct synth_info *synthinfo;
 struct midi_info *midiinfo;
 u_char event[EV_SZ];
 u_char newevent[EV_SZ];

 kobj_t md;





 if (scp == ((void*)0))
  return ENXIO;

 SEQ_DEBUG(6, printf("seq_ioctl: unit %d, cmd %s.\n",
     scp->unit, midi_cmdname(cmd, cmdtab_seqioctl)));

 ret = 0;

 switch (cmd) {
 case 147:



  mtx_lock(&scp->seq_lock);
  *(int *)arg = timer_now(scp);
  mtx_unlock(&scp->seq_lock);
  SEQ_DEBUG(6, printf("seq_ioctl: gettime %d.\n", *(int *)arg));
  ret = 0;
  break;
 case 134:

 case 132:



  ret = 0;
  break;
 case 129:
  event[1] = TMR_TEMPO;
  event[4] = *(int *)arg & 0xFF;
  event[5] = (*(int *)arg >> 8) & 0xFF;
  event[6] = (*(int *)arg >> 16) & 0xFF;
  event[7] = (*(int *)arg >> 24) & 0xFF;
  goto timerevent;
 case 128:
  event[1] = TMR_TIMERBASE;
  event[4] = *(int *)arg & 0xFF;
  event[5] = (*(int *)arg >> 8) & 0xFF;
  event[6] = (*(int *)arg >> 16) & 0xFF;
  event[7] = (*(int *)arg >> 24) & 0xFF;
  goto timerevent;
 case 131:
  event[1] = TMR_START;
  goto timerevent;
 case 130:
  event[1] = TMR_STOP;
  goto timerevent;
 case 135:
  event[1] = TMR_CONTINUE;
timerevent:
  event[0] = EV_TIMING;
  mtx_lock(&scp->seq_lock);
  if (!scp->music) {
   ret = EINVAL;
   mtx_unlock(&scp->seq_lock);
   break;
  }
  seq_processevent(scp, event);
  mtx_unlock(&scp->seq_lock);
  break;
 case 133:
  SEQ_DEBUG(2,
      printf("seq_ioctl: SNDCTL_TMR_SELECT not supported\n"));
  ret = EINVAL;
  break;
 case 140:
  if (mode == O_RDONLY) {
   ret = 0;
   break;
  }
  mtx_lock(&scp->seq_lock);
  ret = seq_sync(scp);
  mtx_unlock(&scp->seq_lock);
  break;
 case 143:

 case 142:



  mtx_lock(&scp->seq_lock);
  seq_reset(scp);
  mtx_unlock(&scp->seq_lock);
  ret = 0;
  break;
 case 139:
  mtx_lock(&scp->seq_lock);




  mtx_unlock(&scp->seq_lock);
  break;
 case 150:
  if (*(int *)arg != 0) {
   ret = EINVAL;
   break;
  }
  mtx_lock(&scp->seq_lock);
  *(int *)arg = scp->timerbase;
  mtx_unlock(&scp->seq_lock);
  SEQ_DEBUG(3, printf("seq_ioctl: ctrlrate %d.\n", *(int *)arg));
  ret = 0;
  break;
 case 145:
  mtx_lock(&scp->seq_lock);
  *(int *)arg = scp->midi_number;
  mtx_unlock(&scp->seq_lock);
  SEQ_DEBUG(3, printf("seq_ioctl: synths %d.\n", *(int *)arg));
  ret = 0;
  break;
 case 146:
  mtx_lock(&scp->seq_lock);
  if (scp->music)
   *(int *)arg = 0;
  else {



   *(int *)arg = scp->midi_number;
  }
  mtx_unlock(&scp->seq_lock);
  SEQ_DEBUG(3, printf("seq_ioctl: midis %d.\n", *(int *)arg));
  ret = 0;
  break;
 case 144:
  for (ret = 0; ret < EV_SZ; ret++)
   event[ret] = (u_char)arg[0];

  mtx_lock(&scp->seq_lock);
  if (scp->music)
   ret = seq_processevent(scp, event);
  else {
   if (seq_convertold(event, newevent) > 0)
    ret = seq_processevent(scp, newevent);
   else
    ret = EINVAL;
  }
  mtx_unlock(&scp->seq_lock);
  break;
 case 137:
  synthinfo = (struct synth_info *)arg;
  midiunit = synthinfo->device;
  mtx_lock(&scp->seq_lock);
  if (seq_fetch_mid(scp, midiunit, &md) == 0) {
   bzero(synthinfo, sizeof(*synthinfo));
   synthinfo->name[0] = 'f';
   synthinfo->name[1] = 'a';
   synthinfo->name[2] = 'k';
   synthinfo->name[3] = 'e';
   synthinfo->name[4] = 's';
   synthinfo->name[5] = 'y';
   synthinfo->name[6] = 'n';
   synthinfo->name[7] = 't';
   synthinfo->name[8] = 'h';
   synthinfo->device = midiunit;
   synthinfo->synth_type = SYNTH_TYPE_MIDI;
   synthinfo->capabilities = scp->midi_flags[midiunit];
   ret = 0;
  } else
   ret = EINVAL;
  mtx_unlock(&scp->seq_lock);
  break;
 case 154:
  midiinfo = (struct midi_info *)arg;
  midiunit = midiinfo->device;
  mtx_lock(&scp->seq_lock);
  if (seq_fetch_mid(scp, midiunit, &md) == 0) {
   bzero(midiinfo, sizeof(*midiinfo));
   midiinfo->name[0] = 'f';
   midiinfo->name[1] = 'a';
   midiinfo->name[2] = 'k';
   midiinfo->name[3] = 'e';
   midiinfo->name[4] = 'm';
   midiinfo->name[5] = 'i';
   midiinfo->name[6] = 'd';
   midiinfo->name[7] = 'i';
   midiinfo->device = midiunit;
   midiinfo->capabilities = scp->midi_flags[midiunit];



   midiinfo->dev_type = 0x01;
   ret = 0;
  } else
   ret = EINVAL;
  mtx_unlock(&scp->seq_lock);
  break;
 case 138:
  mtx_lock(&scp->seq_lock);
  RANGE(*(int *)arg, 1, MIDIQ_SIZE(scp->out_q) - 1);
  scp->out_water = *(int *)arg;
  mtx_unlock(&scp->seq_lock);
  SEQ_DEBUG(3, printf("seq_ioctl: water %d.\n", *(int *)arg));
  ret = 0;
  break;
 case 153:
  tmp = *(int *)arg;
  if (tmp < 0)
   tmp = 0;
  mtx_lock(&scp->seq_lock);
  scp->pre_event_timeout = (hz * tmp) / 10;
  *(int *)arg = scp->pre_event_timeout;
  mtx_unlock(&scp->seq_lock);
  SEQ_DEBUG(3, printf("seq_ioctl: pretime %d.\n", *(int *)arg));
  ret = 0;
  break;
 case 155:
 case 151:
 case 152:




 default:
  SEQ_DEBUG(2,
      printf("seq_ioctl: unsupported IOCTL %ld.\n", cmd));
  ret = EINVAL;
  break;
 }

 return ret;
}
