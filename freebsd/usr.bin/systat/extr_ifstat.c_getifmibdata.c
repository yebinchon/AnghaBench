
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmibdata {int dummy; } ;



 scalar_t__ ENOENT ;


 int IFSTAT_ERR (int,char*) ;


 scalar_t__ errno ;
 scalar_t__ sysctl (int*,int,void*,size_t*,void*,size_t) ;

__attribute__((used)) static void
getifmibdata(int row, struct ifmibdata *data)
{
 size_t datalen = 0;
 static int name[] = { 132,
          128,
          129,
          130,
          0,
          131 };
 datalen = sizeof(*data);
 name[4] = row;

 if ((sysctl(name, 6, (void *)data, (size_t *)&datalen, (void *)((void*)0),
     (size_t)0) != 0) && (errno != ENOENT))
  IFSTAT_ERR(2, "sysctl error getting interface data");
}
