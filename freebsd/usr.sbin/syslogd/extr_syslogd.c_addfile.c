
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filed {int dummy; } ;


 int STAILQ_INSERT_TAIL (int *,struct filed*,int ) ;
 struct filed* calloc (int,int) ;
 int err (int,char*) ;
 int fhead ;
 int next ;

__attribute__((used)) static int
addfile(struct filed *f0)
{
 struct filed *f;

 f = calloc(1, sizeof(*f));
 if (f == ((void*)0))
  err(1, "malloc failed");
 *f = *f0;
 STAILQ_INSERT_TAIL(&fhead, f, next);

 return (0);
}
