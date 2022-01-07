
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GID_OPERATOR ;
 int UID_ROOT ;
 int * make_dev (int *,int ,int ,int ,int,char*) ;
 int nsmb_cdevsw ;
 int * nsmb_dev ;

__attribute__((used)) static int
nsmb_dev_init(void)
{

 nsmb_dev = make_dev(&nsmb_cdevsw, 0, UID_ROOT, GID_OPERATOR,
     0600, "nsmb");
 if (nsmb_dev == ((void*)0))
  return (ENOMEM);
 return (0);
}
