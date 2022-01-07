
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef int FILE ;


 int Fclose (int *) ;
 int * Fopen (int ,char*) ;
 scalar_t__ fsize (int *) ;
 scalar_t__ ftello (int *) ;
 int holdsigs () ;
 int mailname ;
 scalar_t__ mailsize ;
 int msgCount ;
 int relsesigs () ;
 int setmsize (int) ;
 int setptr (int *,scalar_t__) ;

int
incfile(void)
{
 off_t newsize;
 int omsgCount = msgCount;
 FILE *ibuf;

 ibuf = Fopen(mailname, "r");
 if (ibuf == ((void*)0))
  return (-1);
 holdsigs();
 newsize = fsize(ibuf);
 if (newsize == 0)
  return (-1);
 if (newsize < mailsize)
  return (-1);
 if (newsize == mailsize)
  return (0);
 setptr(ibuf, mailsize);
 setmsize(msgCount);
 mailsize = ftello(ibuf);
 (void)Fclose(ibuf);
 relsesigs();
 return (msgCount - omsgCount);
}
