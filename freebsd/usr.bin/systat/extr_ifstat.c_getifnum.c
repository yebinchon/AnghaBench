
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int ;
typedef int data ;





 int IFSTAT_ERR (int,char*) ;


 scalar_t__ sysctl (int*,int,void*,size_t*,void*,size_t) ;

__attribute__((used)) static
unsigned int
getifnum(void)
{
 u_int data = 0;
 size_t datalen = 0;
 static int name[] = { 132,
          128,
          129,
          130,
          131 };

 datalen = sizeof(data);
 if (sysctl(name, 5, (void *)&data, (size_t *)&datalen, (void *)((void*)0),
     (size_t)0) != 0)
  IFSTAT_ERR(1, "sysctl error");
 return (data);
}
