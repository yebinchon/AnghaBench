
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t* _index ;


 int fprintf (int ,char*,int) ;
 int get_color_number (char*) ;
 int stderr ;

__attribute__((used)) static void
set_reverse_colors(int argc, char **argv, int *_index)
{
 int color;

 if ((color = get_color_number(argv[*(_index)-1])) != -1) {
  fprintf(stderr, "\033[=%dH", color);
  if (*_index < argc
      && (color = get_color_number(argv[*_index])) != -1) {
   (*_index)++;
   fprintf(stderr, "\033[=%dI", color);
  }
 }
}
