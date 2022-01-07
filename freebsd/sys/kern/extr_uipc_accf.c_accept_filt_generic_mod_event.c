
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct accept_filter {int accf_name; } ;
typedef int module_t ;


 int EOPNOTSUPP ;



 int M_ACCF ;
 int M_WAITOK ;
 int accept_filt_add (struct accept_filter*) ;
 int accept_filt_del (int ) ;
 int bcopy (struct accept_filter*,struct accept_filter*,int) ;
 struct accept_filter* malloc (int,int ,int ) ;
 int unloadable ;

int
accept_filt_generic_mod_event(module_t mod, int event, void *data)
{
 struct accept_filter *p;
 struct accept_filter *accfp = (struct accept_filter *) data;
 int error;

 switch (event) {
 case 130:
  p = malloc(sizeof(*p), M_ACCF, M_WAITOK);
  bcopy(accfp, p, sizeof(*p));
  error = accept_filt_add(p);
  break;

 case 128:






  if (unloadable != 0) {
   error = accept_filt_del(accfp->accf_name);
  } else
   error = EOPNOTSUPP;
  break;

 case 129:
  error = 0;
  break;

 default:
  error = EOPNOTSUPP;
  break;
 }

 return (error);
}
