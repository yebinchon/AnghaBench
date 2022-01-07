
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ W_MAX ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ idx ;
 int stderr ;
 scalar_t__ strlen (char const*) ;
 char const** words ;

void
push_word (const char *w)
{

 if (idx == W_MAX) {
  fprintf(stderr, "too many words; try bumping W_MAX in inf.h\n");
  exit(1);
 }

 if (w && strlen(w))
  words[idx++] = w;
 else
  words[idx++] = ((void*)0);
 return;
}
