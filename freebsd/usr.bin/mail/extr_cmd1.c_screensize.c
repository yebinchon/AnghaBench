
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int screenheight ;
 char* value (char*) ;

int
screensize(void)
{
 int s;
 char *cp;

 if ((cp = value("screen")) != ((void*)0) && (s = atoi(cp)) > 0)
  return (s);
 return (screenheight - 4);
}
