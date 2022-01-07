
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uuid {int dummy; } ;
struct sbuf {int dummy; } ;
typedef int buf ;


 int sbuf_cat (struct sbuf*,char*) ;
 int snprintf_uuid (char*,int,struct uuid*) ;

int
sbuf_printf_uuid(struct sbuf *sb, struct uuid *uuid)
{
 char buf[38];

 snprintf_uuid(buf, sizeof(buf), uuid);
 return (sbuf_cat(sb, buf));
}
