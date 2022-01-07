
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;




 int midi_load () ;
 int midi_unload () ;
 int seq_modevent (int ,int,void*) ;

__attribute__((used)) static int
midi_modevent(module_t mod, int type, void *data)
{
 int retval;

 retval = 0;

 switch (type) {
 case 129:
  retval = midi_load();
  if (retval == 0)
   retval = seq_modevent(mod, type, data);
  break;

 case 128:
  retval = midi_unload();
  if (retval == 0)
   retval = seq_modevent(mod, type, data);
  break;

 default:
  break;
 }

 return retval;
}
