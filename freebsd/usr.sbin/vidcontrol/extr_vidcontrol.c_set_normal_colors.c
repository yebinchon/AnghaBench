
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int) ;
 int get_color_number (char*) ;
 int stderr ;

__attribute__((used)) static void
set_normal_colors(int argc, char **argv, int *_index)
{
 int color;

 if (*_index < argc && (color = get_color_number(argv[*_index])) != -1) {
  (*_index)++;
  fprintf(stderr, "\033[=%dF", color);
  if (*_index < argc
      && (color = get_color_number(argv[*_index])) != -1) {
   (*_index)++;
   fprintf(stderr, "\033[=%dG", color);
  }
 }
}
