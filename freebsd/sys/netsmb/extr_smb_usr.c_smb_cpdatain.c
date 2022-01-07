
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbchain {int dummy; } ;
typedef int caddr_t ;


 int MB_MUSER ;
 int mb_init (struct mbchain*) ;
 int mb_put_mem (struct mbchain*,int ,int,int ) ;

__attribute__((used)) static int
smb_cpdatain(struct mbchain *mbp, int len, caddr_t data)
{
 int error;

 if (len == 0)
  return 0;
 error = mb_init(mbp);
 if (error)
  return error;
 return mb_put_mem(mbp, data, len, MB_MUSER);
}
