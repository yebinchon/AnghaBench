
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txseginfo {int dummy; } ;


 int txseginfo_zone ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static int
ertt_mod_init(void)
{

 txseginfo_zone = uma_zcreate("ertt_txseginfo", sizeof(struct txseginfo),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, 0);

 return (0);
}
