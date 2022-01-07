
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int column ;
 int exit (int) ;
 int perror (char*) ;
 char* queue ;
 scalar_t__ queuelen ;
 scalar_t__ queuesize ;
 char* realloc (char*,scalar_t__) ;

__attribute__((used)) static void
savebyte(char c)
{

 if (queuelen >= queuesize) {
  queuesize += 128;
  queue = realloc(queue, queuesize);
  if (queue == ((void*)0)) {
   perror("malloc");
   exit(1);
  }
 }
 queue[queuelen++] = c;

 switch (c) {
 case '\n':
  column = 0;
  break;
 case ' ':
  column++;
  break;
 case '\t':
  column = (column / 8 + 1) * 8;
  break;
 }
}
