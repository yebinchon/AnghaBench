
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DFLT_OCTAVE ;
 int DFLT_TEMPO ;
 int DFLT_VALUE ;
 void* FALSE ;
 int GETNUM (char*,int) ;
 int LEGATO ;
 int MAX_TEMPO ;
 int MIN_TEMPO ;
 int MIN_VALUE ;
 int NORMAL ;
 int OCTAVE_NOTES ;
 int SECS_PER_MIN ;
 int STACCATO ;
 void* TRUE ;
 int WHOLE_NOTE ;
 int abs (int) ;
 int fill ;
 int nitems (int ) ;
 int* notetab ;
 int octave ;
 void* octprefix ;
 void* octtrack ;
 int pitchtab ;
 int playtone (int,int,int) ;
 int printf (char*,char,char) ;
 char toupper (char) ;
 int value ;
 int whole ;

__attribute__((used)) static void
playstring(char *cp, size_t slen)
{
 int pitch, oldfill, lastpitch = OCTAVE_NOTES * DFLT_OCTAVE;



 for (; slen--; cp++) {
  int sustain, timeval, tempo;
  char c = toupper(*cp);





  switch (c) {
  case 'A':
  case 'B':
  case 'C':
  case 'D':
  case 'E':
  case 'F':
  case 'G':

   pitch = notetab[c - 'A'] + octave * OCTAVE_NOTES;


   if (cp[1] == '#' || cp[1] == '+') {
    ++pitch;
    ++cp;
    slen--;
   } else if (cp[1] == '-') {
    --pitch;
    ++cp;
    slen--;
   }






   if (octtrack && !octprefix) {
    if (abs(pitch-lastpitch) > abs(pitch+OCTAVE_NOTES -
     lastpitch)) {
     ++octave;
     pitch += OCTAVE_NOTES;
    }

    if (abs(pitch-lastpitch) > abs((pitch-OCTAVE_NOTES) -
     lastpitch)) {
     --octave;
     pitch -= OCTAVE_NOTES;
    }
   }
   octprefix = FALSE;
   lastpitch = pitch;


   for(timeval=0; isdigit(cp[1]) && slen > 0; ) {timeval = timeval * 10 + (*++cp - '0'); slen--;};
   if (timeval <= 0 || timeval > MIN_VALUE)
    timeval = value;


   for (sustain = 0; cp[1] == '.'; cp++) {
    slen--;
    sustain++;
   }


   oldfill = fill;
   if (cp[1] == '_') {
    fill = LEGATO;
    ++cp;
    slen--;
   }


   playtone(pitch, timeval, sustain);

   fill = oldfill;
   break;
  case 'O':
   if (cp[1] == 'N' || cp[1] == 'n') {
    octprefix = octtrack = FALSE;
    ++cp;
    slen--;
   } else if (cp[1] == 'L' || cp[1] == 'l') {
    octtrack = TRUE;
    ++cp;
    slen--;
   } else {
    for(octave=0; isdigit(cp[1]) && slen > 0; ) {octave = octave * 10 + (*++cp - '0'); slen--;};
    if (octave >= nitems(pitchtab) / OCTAVE_NOTES)
     octave = DFLT_OCTAVE;
    octprefix = TRUE;
   }
   break;
  case '>':
   if (octave < nitems(pitchtab) / OCTAVE_NOTES - 1)
    octave++;
   octprefix = TRUE;
   break;
  case '<':
   if (octave > 0)
    octave--;
   octprefix = TRUE;
   break;
  case 'N':
   for(pitch=0; isdigit(cp[1]) && slen > 0; ) {pitch = pitch * 10 + (*++cp - '0'); slen--;};
   for (sustain = 0; cp[1] == '.'; cp++) {
    slen--;
    sustain++;
   }
   oldfill = fill;
   if (cp[1] == '_') {
    fill = LEGATO;
    ++cp;
    slen--;
   }
   playtone(pitch - 1, value, sustain);
   fill = oldfill;
   break;
  case 'L':
   for(value=0; isdigit(cp[1]) && slen > 0; ) {value = value * 10 + (*++cp - '0'); slen--;};
   if (value <= 0 || value > MIN_VALUE)
    value = DFLT_VALUE;
   break;
  case 'P':
  case '~':

   for(timeval=0; isdigit(cp[1]) && slen > 0; ) {timeval = timeval * 10 + (*++cp - '0'); slen--;};
   if (timeval <= 0 || timeval > MIN_VALUE)
    timeval = value;
   for (sustain = 0; cp[1] == '.'; cp++) {
    slen--;
    sustain++;
   }
   playtone(-1, timeval, sustain);
   break;
  case 'T':
   for(tempo=0; isdigit(cp[1]) && slen > 0; ) {tempo = tempo * 10 + (*++cp - '0'); slen--;};
   if (tempo < MIN_TEMPO || tempo > MAX_TEMPO)
    tempo = DFLT_TEMPO;
   whole = (100 * SECS_PER_MIN * WHOLE_NOTE) / tempo;
   break;
  case 'M':
   if (cp[1] == 'N' || cp[1] == 'n') {
    fill = NORMAL;
    ++cp;
    slen--;
   } else if (cp[1] == 'L' || cp[1] == 'l') {
    fill = LEGATO;
    ++cp;
    slen--;
   } else if (cp[1] == 'S' || cp[1] == 's') {
    fill = STACCATO;
    ++cp;
    slen--;
   }
   break;
  }
 }
}
