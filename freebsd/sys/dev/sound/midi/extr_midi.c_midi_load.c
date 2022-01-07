
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GID_WHEEL ;
 int MIDIMKMINOR (int ,int ,int ) ;
 int MIDI_DEV_MIDICTL ;
 int TAILQ_INIT (int *) ;
 int UID_ROOT ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int midi_devs ;
 int midistat_cdevsw ;
 int midistat_dev ;
 int midistat_lock ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
midi_load(void)
{
 sx_init(&midistat_lock, "midistat lock");
 TAILQ_INIT(&midi_devs);

 midistat_dev = make_dev(&midistat_cdevsw,
     MIDIMKMINOR(0, MIDI_DEV_MIDICTL, 0),
     UID_ROOT, GID_WHEEL, 0666, "midistat");

 return 0;
}
