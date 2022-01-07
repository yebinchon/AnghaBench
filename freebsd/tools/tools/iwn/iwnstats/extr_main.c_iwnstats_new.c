
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwnstats {scalar_t__ s; } ;
typedef int buf ;


 int O_RDWR ;
 struct iwnstats* calloc (int,int) ;
 int err (int,char*) ;
 scalar_t__ open (char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static struct iwnstats *
iwnstats_new(const char *ifname)
{
 struct iwnstats *is;
 char buf[128];

 is = calloc(1, sizeof(struct iwnstats));
 if (is == ((void*)0))
  return (((void*)0));

 snprintf(buf, sizeof(buf), "/dev/%s", ifname);
 is->s = open(buf, O_RDWR);
 if (is->s < 0)
  err(1, "open");

 return (is);
}
