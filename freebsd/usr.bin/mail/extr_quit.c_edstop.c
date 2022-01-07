
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tempname ;
struct stat {scalar_t__ st_size; } ;
struct message {int m_flag; } ;
typedef int FILE ;


 int EOF ;
 int Fclose (int *) ;
 int * Fdopen (int,char*) ;
 int * Fopen (char*,char*) ;
 int MDELETED ;
 int MNEW ;
 int MODIFY ;
 int MREAD ;
 int MSTATUS ;
 int PATHSIZE ;
 int SEEK_SET ;
 char* Tflag ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int fprintf (int *,char*,char*) ;
 int fseeko (int *,scalar_t__,int ) ;
 int getc (int *) ;
 char* hfield (char*,struct message*) ;
 int holdsigs () ;
 char* mailname ;
 scalar_t__ mailsize ;
 struct message* message ;
 int mkstemp (char*) ;
 size_t msgCount ;
 int printf (char*,...) ;
 int putc (int,int *) ;
 scalar_t__ readonly ;
 int relsesigs () ;
 int reset (int ) ;
 int rm (char*) ;
 scalar_t__ sendmessage (struct message*,int *,int *,int *) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int * stdout ;
 char* tmpdir ;
 int trunc (int *) ;
 int warn (char*,char*) ;
 int warnx (char*,char*) ;

void
edstop(void)
{
 int gotcha, c;
 struct message *mp;
 FILE *obuf, *ibuf, *readstat;
 struct stat statb;
 char tempname[PATHSIZE];

 if (readonly)
  return;
 holdsigs();
 if (Tflag != ((void*)0)) {
  if ((readstat = Fopen(Tflag, "w")) == ((void*)0))
   Tflag = ((void*)0);
 }
 for (mp = &message[0], gotcha = 0; mp < &message[msgCount]; mp++) {
  if (mp->m_flag & MNEW) {
   mp->m_flag &= ~MNEW;
   mp->m_flag |= MSTATUS;
  }
  if (mp->m_flag & (MODIFY|MDELETED|MSTATUS))
   gotcha++;
  if (Tflag != ((void*)0) && (mp->m_flag & (MREAD|MDELETED)) != 0) {
   char *id;

   if ((id = hfield("article-id", mp)) != ((void*)0))
    fprintf(readstat, "%s\n", id);
  }
 }
 if (Tflag != ((void*)0))
  (void)Fclose(readstat);
 if (!gotcha || Tflag != ((void*)0))
  goto done;
 ibuf = ((void*)0);
 if (stat(mailname, &statb) >= 0 && statb.st_size > mailsize) {
  int fd;

  (void)snprintf(tempname, sizeof(tempname),
      "%s/mbox.XXXXXXXXXX", tmpdir);
  if ((fd = mkstemp(tempname)) == -1 ||
      (obuf = Fdopen(fd, "w")) == ((void*)0)) {
   warn("%s", tempname);
   relsesigs();
   reset(0);
  }
  if ((ibuf = Fopen(mailname, "r")) == ((void*)0)) {
   warn("%s", mailname);
   (void)Fclose(obuf);
   (void)rm(tempname);
   relsesigs();
   reset(0);
  }
  (void)fseeko(ibuf, mailsize, SEEK_SET);
  while ((c = getc(ibuf)) != EOF)
   (void)putc(c, obuf);
  (void)Fclose(ibuf);
  (void)Fclose(obuf);
  if ((ibuf = Fopen(tempname, "r")) == ((void*)0)) {
   warn("%s", tempname);
   (void)rm(tempname);
   relsesigs();
   reset(0);
  }
  (void)rm(tempname);
 }
 printf("\"%s\" ", mailname);
 (void)fflush(stdout);
 if ((obuf = Fopen(mailname, "r+")) == ((void*)0)) {
  warn("%s", mailname);
  relsesigs();
  reset(0);
 }
 trunc(obuf);
 c = 0;
 for (mp = &message[0]; mp < &message[msgCount]; mp++) {
  if ((mp->m_flag & MDELETED) != 0)
   continue;
  c++;
  if (sendmessage(mp, obuf, ((void*)0), ((void*)0)) < 0) {
   warnx("%s", mailname);
   relsesigs();
   reset(0);
  }
 }
 gotcha = (c == 0 && ibuf == ((void*)0));
 if (ibuf != ((void*)0)) {
  while ((c = getc(ibuf)) != EOF)
   (void)putc(c, obuf);
  (void)Fclose(ibuf);
 }
 (void)fflush(obuf);
 if (ferror(obuf)) {
  warn("%s", mailname);
  relsesigs();
  reset(0);
 }
 (void)Fclose(obuf);
 if (gotcha) {
  (void)rm(mailname);
  printf("removed\n");
 } else
  printf("complete\n");
 (void)fflush(stdout);

done:
 relsesigs();
}
