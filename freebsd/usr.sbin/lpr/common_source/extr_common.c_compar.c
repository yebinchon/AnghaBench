
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jobqueue {scalar_t__ job_time; char* job_cfname; } ;


 int strcmp (char*,char*) ;

__attribute__((used)) static int
compar(const void *p1, const void *p2)
{
 const struct jobqueue *qe1, *qe2;

 qe1 = *(const struct jobqueue * const *)p1;
 qe2 = *(const struct jobqueue * const *)p2;

 if (qe1->job_time < qe2->job_time)
  return (-1);
 if (qe1->job_time > qe2->job_time)
  return (1);







 if ((qe1->job_cfname[3] == '9') && (qe2->job_cfname[3] == '0'))
  return (-1);
 if ((qe1->job_cfname[3] == '0') && (qe2->job_cfname[3] == '9'))
  return (1);
 return (strcmp(qe1->job_cfname, qe2->job_cfname));
}
