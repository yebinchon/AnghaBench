
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
struct sigaction {int sa_handler; int sa_flags; int sa_mask; } ;
typedef scalar_t__ off_t ;
typedef int cap_rights_t ;


 int CAP_MMAP_R ;
 int DIFF_EXIT ;
 int ERR_EXIT ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int MMAP_CHUNK ;
 scalar_t__ ROUNDPAGE (scalar_t__) ;
 int SA_NODEFER ;
 int SIGSEGV ;
 int c_special (int,char const*,scalar_t__,int,char const*,scalar_t__) ;
 int cap_rights_init (int *,int ) ;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_rights_limit (int,int ) ;
 int diffmsg (char const*,char const*,scalar_t__,scalar_t__) ;
 int eofmsg (char const*) ;
 int err (int,char*,...) ;
 int exit (int ) ;
 size_t getpagesize () ;
 scalar_t__ lflag ;
 int munmap (char*,int) ;
 int printf (char*,long long,char,char) ;
 char* remmap (char*,int,scalar_t__) ;
 int segv_handler ;
 scalar_t__ sflag ;
 scalar_t__ sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;
 scalar_t__ xflag ;

void
c_regular(int fd1, const char *file1, off_t skip1, off_t len1,
    int fd2, const char *file2, off_t skip2, off_t len2)
{
 struct sigaction act, oact;
 cap_rights_t rights;
 u_char ch, *p1, *p2, *m1, *m2, *e1, *e2;
 off_t byte, length, line;
 off_t pagemask, off1, off2;
 size_t pagesize;
 int dfound;

 if (skip1 > len1)
  eofmsg(file1);
 len1 -= skip1;
 if (skip2 > len2)
  eofmsg(file2);
 len2 -= skip2;

 if (sflag && len1 != len2)
  exit(DIFF_EXIT);

 pagesize = getpagesize();
 pagemask = (off_t)pagesize - 1;
 off1 = ROUNDPAGE(skip1);
 off2 = ROUNDPAGE(skip2);

 length = MIN(len1, len2);

 if ((m1 = remmap(((void*)0), fd1, off1)) == ((void*)0)) {
  c_special(fd1, file1, skip1, fd2, file2, skip2);
  return;
 }

 if ((m2 = remmap(((void*)0), fd2, off2)) == ((void*)0)) {
  munmap(m1, MMAP_CHUNK);
  c_special(fd1, file1, skip1, fd2, file2, skip2);
  return;
 }

 if (caph_rights_limit(fd1, cap_rights_init(&rights, CAP_MMAP_R)) < 0)
  err(1, "unable to limit rights for %s", file1);
 if (caph_rights_limit(fd2, cap_rights_init(&rights, CAP_MMAP_R)) < 0)
  err(1, "unable to limit rights for %s", file2);
 if (caph_enter() < 0)
  err(ERR_EXIT, "unable to enter capability mode");

 sigemptyset(&act.sa_mask);
 act.sa_flags = SA_NODEFER;
 act.sa_handler = segv_handler;
 if (sigaction(SIGSEGV, &act, &oact))
  err(ERR_EXIT, "sigaction()");

 dfound = 0;
 e1 = m1 + MMAP_CHUNK;
 e2 = m2 + MMAP_CHUNK;
 p1 = m1 + (skip1 - off1);
 p2 = m2 + (skip2 - off2);

 for (byte = line = 1; length--; ++byte) {
  if ((ch = *p1) != *p2) {
   if (xflag) {
    dfound = 1;
    (void)printf("%08llx %02x %02x\n",
        (long long)byte - 1, ch, *p2);
   } else if (lflag) {
    dfound = 1;
    (void)printf("%6lld %3o %3o\n",
        (long long)byte, ch, *p2);
   } else
    diffmsg(file1, file2, byte, line);

  }
  if (ch == '\n')
   ++line;
  if (++p1 == e1) {
   off1 += MMAP_CHUNK;
   if ((p1 = m1 = remmap(m1, fd1, off1)) == ((void*)0)) {
    munmap(m2, MMAP_CHUNK);
    err(ERR_EXIT, "remmap %s", file1);
   }
   e1 = m1 + MMAP_CHUNK;
  }
  if (++p2 == e2) {
   off2 += MMAP_CHUNK;
   if ((p2 = m2 = remmap(m2, fd2, off2)) == ((void*)0)) {
    munmap(m1, MMAP_CHUNK);
    err(ERR_EXIT, "remmap %s", file2);
   }
   e2 = m2 + MMAP_CHUNK;
  }
 }
 munmap(m1, MMAP_CHUNK);
 munmap(m2, MMAP_CHUNK);

 if (sigaction(SIGSEGV, &oact, ((void*)0)))
  err(ERR_EXIT, "sigaction()");

 if (len1 != len2)
  eofmsg (len1 > len2 ? file2 : file1);
 if (dfound)
  exit(DIFF_EXIT);
}
