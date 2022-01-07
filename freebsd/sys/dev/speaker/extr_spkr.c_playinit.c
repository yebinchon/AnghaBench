
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DFLT_OCTAVE ;
 int DFLT_TEMPO ;
 int DFLT_VALUE ;
 int FALSE ;
 int NORMAL ;
 int SECS_PER_MIN ;
 int TRUE ;
 int WHOLE_NOTE ;
 int fill ;
 int octave ;
 int octprefix ;
 int octtrack ;
 int value ;
 int whole ;

__attribute__((used)) static void
playinit()
{
    octave = DFLT_OCTAVE;
    whole = (100 * SECS_PER_MIN * WHOLE_NOTE) / DFLT_TEMPO;
    fill = NORMAL;
    value = DFLT_VALUE;
    octtrack = FALSE;
    octprefix = TRUE;
}
