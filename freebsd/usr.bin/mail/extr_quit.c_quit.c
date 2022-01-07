
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
 int LOCK_EX ;
 int MBOX ;
 int MDELETED ;
 int MNEW ;
 int MODIFY ;
 int MPRESERVE ;
 int MREAD ;
 int MSAVED ;
 int MSTATUS ;
 int MTOUCH ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int PATHSIZE ;
 int SEEK_SET ;
 char* Tflag ;
 int alter (char*) ;
 int close (int) ;
 int demail () ;
 scalar_t__ edit ;
 int edstop () ;
 char* expand (char*) ;
 int fchmod (int ,int) ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int fileno (int *) ;
 int flock (int ,int ) ;
 int fprintf (int *,char*,char*) ;
 int fseeko (int *,scalar_t__,int ) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int getc (int *) ;
 char* hfield (char*,struct message*) ;
 char* mailname ;
 scalar_t__ mailsize ;
 struct message* message ;
 int mkstemp (char*) ;
 size_t msgCount ;
 int open (char*,int,int) ;
 int printf (char*,...) ;
 int putc (int,int *) ;
 scalar_t__ readonly ;
 int rewind (int *) ;
 int rm (char*) ;
 int saveignore ;
 scalar_t__ sendmessage (struct message*,int *,int ,int *) ;
 int snprintf (char*,int,char*,char*) ;
 char* tmpdir ;
 int trunc (int *) ;
 int * value (char*) ;
 int warn (char*,char*) ;
 int warnx (char*,char*) ;
 int writeback (int *) ;

void
quit(void)
{
 int mcount, p, modify, autohold, anystat, holdbit, nohold;
 FILE *ibuf, *obuf, *fbuf, *rbuf, *readstat, *abuf;
 struct message *mp;
 int c, fd;
 struct stat minfo;
 char *mbox, tempname[PATHSIZE];





 if (readonly)
  return;




 if (edit) {
  edstop();
  return;
 }
 fbuf = Fopen(mailname, "r");
 if (fbuf == ((void*)0))
  goto newmail;
 (void)flock(fileno(fbuf), LOCK_EX);
 rbuf = ((void*)0);
 if (fstat(fileno(fbuf), &minfo) >= 0 && minfo.st_size > mailsize) {
  printf("New mail has arrived.\n");
  (void)snprintf(tempname, sizeof(tempname),
      "%s/mail.RqXXXXXXXXXX", tmpdir);
  if ((fd = mkstemp(tempname)) == -1 ||
      (rbuf = Fdopen(fd, "w")) == ((void*)0))
   goto newmail;





  p = minfo.st_size - mailsize;
  while (p-- > 0) {
   c = getc(fbuf);
   if (c == EOF)
    goto newmail;
   (void)putc(c, rbuf);
  }

  (void)Fclose(rbuf);
  if ((rbuf = Fopen(tempname, "r")) == ((void*)0))
   goto newmail;
  (void)rm(tempname);
 }





 anystat = 0;
 autohold = value("hold") != ((void*)0);
 holdbit = autohold ? MPRESERVE : MBOX;
 nohold = MBOX|MSAVED|MDELETED|MPRESERVE;
 if (value("keepsave") != ((void*)0))
  nohold &= ~MSAVED;
 for (mp = &message[0]; mp < &message[msgCount]; mp++) {
  if (mp->m_flag & MNEW) {
   mp->m_flag &= ~MNEW;
   mp->m_flag |= MSTATUS;
  }
  if (mp->m_flag & MSTATUS)
   anystat++;
  if ((mp->m_flag & MTOUCH) == 0)
   mp->m_flag |= MPRESERVE;
  if ((mp->m_flag & nohold) == 0)
   mp->m_flag |= holdbit;
 }
 modify = 0;
 if (Tflag != ((void*)0)) {
  if ((readstat = Fopen(Tflag, "w")) == ((void*)0))
   Tflag = ((void*)0);
 }
 for (c = 0, p = 0, mp = &message[0]; mp < &message[msgCount]; mp++) {
  if (mp->m_flag & MBOX)
   c++;
  if (mp->m_flag & MPRESERVE)
   p++;
  if (mp->m_flag & MODIFY)
   modify++;
  if (Tflag != ((void*)0) && (mp->m_flag & (MREAD|MDELETED)) != 0) {
   char *id;

   if ((id = hfield("article-id", mp)) != ((void*)0))
    fprintf(readstat, "%s\n", id);
  }
 }
 if (Tflag != ((void*)0))
  (void)Fclose(readstat);
 if (p == msgCount && !modify && !anystat) {
  printf("Held %d message%s in %s\n",
   p, p == 1 ? "" : "s", mailname);
  (void)Fclose(fbuf);
  return;
 }
 if (c == 0) {
  if (p != 0) {
   writeback(rbuf);
   (void)Fclose(fbuf);
   return;
  }
  goto cream;
 }
 mbox = expand("&");
 mcount = c;
 if (value("append") == ((void*)0)) {
  (void)snprintf(tempname, sizeof(tempname),
      "%s/mail.RmXXXXXXXXXX", tmpdir);
  if ((fd = mkstemp(tempname)) == -1 ||
      (obuf = Fdopen(fd, "w")) == ((void*)0)) {
   warn("%s", tempname);
   (void)Fclose(fbuf);
   return;
  }
  if ((ibuf = Fopen(tempname, "r")) == ((void*)0)) {
   warn("%s", tempname);
   (void)rm(tempname);
   (void)Fclose(obuf);
   (void)Fclose(fbuf);
   return;
  }
  (void)rm(tempname);
  if ((abuf = Fopen(mbox, "r")) != ((void*)0)) {
   while ((c = getc(abuf)) != EOF)
    (void)putc(c, obuf);
   (void)Fclose(abuf);
  }
  if (ferror(obuf)) {
   warnx("%s", tempname);
   (void)Fclose(ibuf);
   (void)Fclose(obuf);
   (void)Fclose(fbuf);
   return;
  }
  (void)Fclose(obuf);
  if ((fd = open(mbox, O_CREAT | O_TRUNC | O_WRONLY, 0600)) >= 0)
   (void)close(fd);
  if ((obuf = Fopen(mbox, "r+")) == ((void*)0)) {
   warn("%s", mbox);
   (void)Fclose(ibuf);
   (void)Fclose(fbuf);
   return;
  }
 }
 if (value("append") != ((void*)0)) {
  if ((obuf = Fopen(mbox, "a")) == ((void*)0)) {
   warn("%s", mbox);
   (void)Fclose(fbuf);
   return;
  }
  (void)fchmod(fileno(obuf), 0600);
 }
 for (mp = &message[0]; mp < &message[msgCount]; mp++)
  if (mp->m_flag & MBOX)
   if (sendmessage(mp, obuf, saveignore, ((void*)0)) < 0) {
    warnx("%s", mbox);
    (void)Fclose(ibuf);
    (void)Fclose(obuf);
    (void)Fclose(fbuf);
    return;
   }







 if (value("append") == ((void*)0)) {
  rewind(ibuf);
  c = getc(ibuf);
  while (c != EOF) {
   (void)putc(c, obuf);
   if (ferror(obuf))
    break;
   c = getc(ibuf);
  }
  (void)Fclose(ibuf);
 }
 (void)fflush(obuf);
 trunc(obuf);
 if (ferror(obuf)) {
  warn("%s", mbox);
  (void)Fclose(obuf);
  (void)Fclose(fbuf);
  return;
 }
 (void)Fclose(obuf);
 if (mcount == 1)
  printf("Saved 1 message in mbox\n");
 else
  printf("Saved %d messages in mbox\n", mcount);






 if (p != 0) {
  writeback(rbuf);
  (void)Fclose(fbuf);
  return;
 }






cream:
 if (rbuf != ((void*)0)) {
  abuf = Fopen(mailname, "r+");
  if (abuf == ((void*)0))
   goto newmail;
  while ((c = getc(rbuf)) != EOF)
   (void)putc(c, abuf);
  (void)Fclose(rbuf);
  trunc(abuf);
  (void)Fclose(abuf);
  alter(mailname);
  (void)Fclose(fbuf);
  return;
 }
 demail();
 (void)Fclose(fbuf);
 return;

newmail:
 printf("Thou hast new mail.\n");
 if (fbuf != ((void*)0))
  (void)Fclose(fbuf);
}
