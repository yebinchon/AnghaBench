
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_flag; } ;
typedef int FILE ;


 int EOF ;
 int Fclose (int *) ;
 int * Fopen (char*,char*) ;
 int MPRESERVE ;
 int MTOUCH ;
 int alter (char*) ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int getc (int *) ;
 char* mailname ;
 struct message* message ;
 size_t msgCount ;
 int printf (char*,...) ;
 int putc (int,int *) ;
 scalar_t__ sendmessage (struct message*,int *,int *,int *) ;
 int trunc (int *) ;
 int warn (char*,char*) ;
 int warnx (char*,char*) ;

int
writeback(FILE *res)
{
 struct message *mp;
 int p, c;
 FILE *obuf;

 p = 0;
 if ((obuf = Fopen(mailname, "r+")) == ((void*)0)) {
  warn("%s", mailname);
  return (-1);
 }

 if (res != ((void*)0))
  while ((c = getc(res)) != EOF)
   (void)putc(c, obuf);

 for (mp = &message[0]; mp < &message[msgCount]; mp++)
  if ((mp->m_flag&MPRESERVE)||(mp->m_flag&MTOUCH)==0) {
   p++;
   if (sendmessage(mp, obuf, ((void*)0), ((void*)0)) < 0) {
    warnx("%s", mailname);
    (void)Fclose(obuf);
    return (-1);
   }
  }





 (void)fflush(obuf);
 trunc(obuf);
 if (ferror(obuf)) {
  warn("%s", mailname);
  (void)Fclose(obuf);
  return (-1);
 }
 if (res != ((void*)0))
  (void)Fclose(res);
 (void)Fclose(obuf);
 alter(mailname);
 if (p == 1)
  printf("Held 1 message in %s\n", mailname);
 else
  printf("Held %d messages in %s\n", p, mailname);
 return (0);
}
