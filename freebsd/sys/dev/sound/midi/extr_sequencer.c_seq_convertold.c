
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int EAGAIN ;





 int MIDI_NOTEOFF ;
 int MIDI_NOTEON ;
 int MIDI_PGM_CHANGE ;
 int MORE ;
 int QUEUEFULL ;



 int SEQ_DEBUG (int,int ) ;
 int TMR_WAIT_REL ;
 int printf (char*,int,...) ;
 int ret ;
 int scp ;
 int seq_copytoinput (int ,int*,int) ;

__attribute__((used)) static int
seq_convertold(u_char *event, u_char *out)
{
 int used;
 u_char dev, chn, note, vel;

 out[0] = out[1] = out[2] = out[3] = out[4] = out[5] = out[6] =
     out[7] = 0;

 dev = 0;
 chn = event[1];
 note = event[2];
 vel = event[3];

 used = 0;

restart:



 switch (event[0]) {
 case 141:
 case 144:
 case 145:
 case 142:
 case 143:
  out[0] = event[0];
  out[1] = event[1];
  out[2] = event[2];
  out[3] = event[3];
  out[4] = event[4];
  out[5] = event[5];
  out[6] = event[6];
  out[7] = event[7];
  used += 8;
  break;
 case 134:
  out[0] = 144;
  out[1] = dev;
  out[2] = MIDI_NOTEOFF;
  out[3] = chn;
  out[4] = note;
  out[5] = 255;
  used += 4;
  break;

 case 133:
  out[0] = 144;
  out[1] = dev;
  out[2] = MIDI_NOTEON;
  out[3] = chn;
  out[4] = note;
  out[5] = vel;
  used += 4;
  break;





 case 132:
  out[0] = 145;
  out[1] = dev;
  out[2] = MIDI_PGM_CHANGE;
  out[3] = chn;
  out[4] = note;
  out[5] = vel;
  used += 4;
  break;
 case 135:
  SEQ_DEBUG(4,
      printf("seq_playevent: put data 0x%02x, unit %d.\n",
      event[1], event[2]));





  out[0] = 135;
  out[1] = dev;
  out[2] = chn;
  used += 4;
  break;
 case 136:
  switch (event[1]) {
  case 134:
  case 133:
  case 132:
   event++;
   used = 4;
   goto restart;
   break;
  case 140:



  case 139:



  case 138:



  case 129:



  default:
   SEQ_DEBUG(2,
       printf("seq_convertold: SEQ_EXTENDED type %d"
       "not handled\n", event[1]));
   break;
  }
  break;
 case 128:
  out[0] = 141;
  out[1] = TMR_WAIT_REL;
  out[4] = event[2];
  out[5] = event[3];
  out[6] = event[4];

  SEQ_DEBUG(5, printf("SEQ_WAIT %d",
      event[2] + (event[3] << 8) + (event[4] << 24)));

  used += 4;
  break;

 case 137:
 case 130:
 case 131:
 default:
  SEQ_DEBUG(2,
    printf("seq_convertold: event type %d not handled %d %d %d\n",
      event[0], event[1], event[2], event[3]));
  break;
 }
 return used;
}
