
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 double HUGE_VAL ;
 double HUGE_VALF ;
 double HUGE_VALL ;

__attribute__((used)) static inline bool
huge_plus(double d, int err1)
{

 if (err1 == ERANGE)
  if (d == HUGE_VAL || d == HUGE_VALF || d == HUGE_VALL)
   return (+1);

 return (0);
}
