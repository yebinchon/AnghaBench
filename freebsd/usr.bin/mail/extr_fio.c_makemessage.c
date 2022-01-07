
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {scalar_t__ m_lines; scalar_t__ m_size; } ;
typedef int off_t ;
typedef int FILE ;


 int Fclose (int *) ;
 struct message* dot ;
 int errx (int,char*,...) ;
 int fflush (int *) ;
 int fileno (int *) ;
 int lseek (int ,int ,int ) ;
 struct message* message ;
 int msgCount ;
 size_t read (int ,void*,size_t) ;
 scalar_t__ realloc (struct message*,size_t) ;

void
makemessage(FILE *f, int omsgCount)
{
 size_t size;
 struct message *nmessage;

 size = (msgCount + 1) * sizeof(struct message);
 nmessage = (struct message *)realloc(message, size);
 if (nmessage == ((void*)0))
  errx(1, "Insufficient memory for %d messages\n",
      msgCount);
 if (omsgCount == 0 || message == ((void*)0))
  dot = nmessage;
 else
  dot = nmessage + (dot - message);
 message = nmessage;
 size -= (omsgCount + 1) * sizeof(struct message);
 (void)fflush(f);
 (void)lseek(fileno(f), (off_t)sizeof(*message), 0);
 if (read(fileno(f), (void *)&message[omsgCount], size) != size)
  errx(1, "Message temporary file corrupted");
 message[msgCount].m_size = 0;
 message[msgCount].m_lines = 0;
 (void)Fclose(f);
}
