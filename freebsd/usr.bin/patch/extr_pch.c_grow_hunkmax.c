
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*) ;
 int hunkmax ;
 int out_of_mem ;
 int * p_char ;
 int * p_len ;
 int * p_line ;
 int * reallocf (int *,int) ;
 int using_plan_a ;

__attribute__((used)) static void
grow_hunkmax(void)
{
 int new_hunkmax = hunkmax * 2;

 if (p_line == ((void*)0) || p_len == ((void*)0) || p_char == ((void*)0))
  fatal("Internal memory allocation error\n");

 p_line = reallocf(p_line, new_hunkmax * sizeof(char *));
 p_len = reallocf(p_len, new_hunkmax * sizeof(unsigned short));
 p_char = reallocf(p_char, new_hunkmax * sizeof(char));

 if (p_line != ((void*)0) && p_len != ((void*)0) && p_char != ((void*)0)) {
  hunkmax = new_hunkmax;
  return;
 }

 if (!using_plan_a)
  fatal("out of memory\n");
 out_of_mem = 1;

}
