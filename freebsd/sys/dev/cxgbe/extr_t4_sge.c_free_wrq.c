
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_wrq {int eq; } ;
struct adapter {int dummy; } ;


 int bzero (struct sge_wrq*,int) ;
 int free_eq (struct adapter*,int *) ;

__attribute__((used)) static int
free_wrq(struct adapter *sc, struct sge_wrq *wrq)
{
 int rc;

 rc = free_eq(sc, &wrq->eq);
 if (rc)
  return (rc);

 bzero(wrq, sizeof(*wrq));
 return (0);
}
