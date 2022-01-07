
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int ECONNREFUSED ;
 int EHOSTUNREACH ;
 int EIO ;
 int ETIMEDOUT ;

__attribute__((used)) static inline int
act_open_rpl_status_to_errno(int status)
{

 switch (status) {
 case 130:
  return (ECONNREFUSED);
 case 132:
  return (EHOSTUNREACH);
 case 129:
  return (ETIMEDOUT);
 case 128:
  return (EAGAIN);
 case 131:
  return (EAGAIN);
 default:
  return (EIO);
 }
}
