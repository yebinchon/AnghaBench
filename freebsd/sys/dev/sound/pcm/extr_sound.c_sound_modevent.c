
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int ENOTSUP ;
 int INT_MAX ;



 int delete_unrhdr (int *) ;
 int midi_modevent (int ,int,void*) ;
 int * new_unrhdr (int,int ,int *) ;
 int * pcmsg_unrhdr ;

__attribute__((used)) static int
sound_modevent(module_t mod, int type, void *data)
{
 int ret;



 ret = 0;

 switch(type) {
  case 130:
   pcmsg_unrhdr = new_unrhdr(1, INT_MAX, ((void*)0));
   break;
  case 128:
   if (pcmsg_unrhdr != ((void*)0)) {
    delete_unrhdr(pcmsg_unrhdr);
    pcmsg_unrhdr = ((void*)0);
   }
   break;
  case 129:
   break;
  default:
   ret = ENOTSUP;
 }

 return ret;

}
