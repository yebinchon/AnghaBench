
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nlm4_stats ;


 int EACCES ;
 int EAGAIN ;
 int EDEADLK ;
 int EFBIG ;
 int EINVAL ;
 int ENOLCK ;
 int EROFS ;
 int ESTALE ;
__attribute__((used)) static int
nlm_map_status(nlm4_stats stat)
{
 switch (stat) {
 case 130:
  return (0);

 case 134:
  return (EAGAIN);

 case 133:
  return (ENOLCK);

 case 135:
  return (EDEADLK);

 case 129:
  return (EROFS);

 case 128:
  return (ESTALE);

 case 131:
  return (EFBIG);

 case 132:
  return (EACCES);

 default:
  return (EINVAL);
 }
}
