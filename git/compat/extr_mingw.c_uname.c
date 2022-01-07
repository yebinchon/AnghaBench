
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int version; int release; int sysname; } ;


 int GetVersion () ;
 int memset (struct utsname*,int ,int) ;
 int xsnprintf (int ,int,char*,...) ;

int uname(struct utsname *buf)
{
 unsigned v = (unsigned)GetVersion();
 memset(buf, 0, sizeof(*buf));
 xsnprintf(buf->sysname, sizeof(buf->sysname), "Windows");
 xsnprintf(buf->release, sizeof(buf->release),
   "%u.%u", v & 0xff, (v >> 8) & 0xff);

 xsnprintf(buf->version, sizeof(buf->version),
    "%u", (v >> 16) & 0x7fff);
 return 0;
}
