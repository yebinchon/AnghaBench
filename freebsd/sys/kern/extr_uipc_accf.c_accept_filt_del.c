
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct accept_filter {int * accf_callback; } ;


 int ENOENT ;
 struct accept_filter* accept_filt_get (char*) ;

int
accept_filt_del(char *name)
{
 struct accept_filter *p;

 p = accept_filt_get(name);
 if (p == ((void*)0))
  return (ENOENT);

 p->accf_callback = ((void*)0);
 return (0);
}
