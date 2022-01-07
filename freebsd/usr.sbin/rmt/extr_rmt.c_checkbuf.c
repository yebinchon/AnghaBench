
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int size ;


 int DEBUG (char*) ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int exit (int) ;
 int free (char*) ;
 char* malloc (int) ;
 int maxrecsize ;
 scalar_t__ setsockopt (int ,int ,int ,int*,int) ;

__attribute__((used)) static char *
checkbuf(char *rec, int size)
{

 if (size <= maxrecsize)
  return (rec);
 if (rec != ((void*)0))
  free(rec);
 rec = malloc(size);
 if (rec == ((void*)0)) {
  DEBUG("rmtd: cannot allocate buffer space\n");
  exit(4);
 }
 maxrecsize = size;
 while (size > 1024 &&
        setsockopt(0, SOL_SOCKET, SO_RCVBUF, &size, sizeof (size)) < 0)
  size -= 1024;
 return (rec);
}
