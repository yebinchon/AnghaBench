
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uuid {int dummy; } ;
typedef int buf ;


 int printf (char*,char*) ;
 int snprintf_uuid (char*,int,struct uuid*) ;

int
printf_uuid(struct uuid *uuid)
{
 char buf[38];

 snprintf_uuid(buf, sizeof(buf), uuid);
 return (printf("%s", buf));
}
