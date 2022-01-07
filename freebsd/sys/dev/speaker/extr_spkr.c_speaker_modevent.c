
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;
 int GID_WHEEL ;



 int UID_ROOT ;
 int destroy_dev (int ) ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int speaker_dev ;
 int spkr_cdevsw ;

__attribute__((used)) static int
speaker_modevent(module_t mod, int type, void *data)
{
 int error = 0;

 switch(type) {
 case 130:
  speaker_dev = make_dev(&spkr_cdevsw, 0,
      UID_ROOT, GID_WHEEL, 0600, "speaker");
  break;
 case 129:
 case 128:
  destroy_dev(speaker_dev);
  break;
 default:
  error = EOPNOTSUPP;
 }
 return (error);
}
