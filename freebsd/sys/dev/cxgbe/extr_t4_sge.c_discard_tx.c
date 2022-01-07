
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_eq {int flags; } ;


 int EQ_ENABLED ;
 int EQ_QFLUSH ;

__attribute__((used)) static inline int
discard_tx(struct sge_eq *eq)
{

 return ((eq->flags & (EQ_ENABLED | EQ_QFLUSH)) != EQ_ENABLED);
}
