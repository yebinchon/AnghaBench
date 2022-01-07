
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hunkmax ;
 void* malloc (int) ;
 int * p_char ;
 int * p_len ;
 int * p_line ;

void
set_hunkmax(void)
{
 if (p_line == ((void*)0))
  p_line = malloc(hunkmax * sizeof(char *));
 if (p_len == ((void*)0))
  p_len = malloc(hunkmax * sizeof(unsigned short));
 if (p_char == ((void*)0))
  p_char = malloc(hunkmax * sizeof(char));
}
