
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct color {int value; void* type; int blue; int green; int red; } ;


 int ARRAY_SIZE (char const* const*) ;
 void* COLOR_256 ;
 void* COLOR_ANSI ;
 void* COLOR_NORMAL ;
 void* COLOR_RGB ;
 int get_hex_color (char const*,int *) ;
 scalar_t__ match_word (char const*,int,char const* const) ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static int parse_color(struct color *out, const char *name, int len)
{

 static const char * const color_names[] = {
  "black", "red", "green", "yellow",
  "blue", "magenta", "cyan", "white"
 };
 char *end;
 int i;
 long val;


 if (match_word(name, len, "normal")) {
  out->type = COLOR_NORMAL;
  return 0;
 }


 if (len == 7 && name[0] == '#') {
  if (!get_hex_color(name + 1, &out->red) &&
      !get_hex_color(name + 3, &out->green) &&
      !get_hex_color(name + 5, &out->blue)) {
   out->type = COLOR_RGB;
   return 0;
  }
 }


 for (i = 0; i < ARRAY_SIZE(color_names); i++) {
  if (match_word(name, len, color_names[i])) {
   out->type = COLOR_ANSI;
   out->value = i;
   return 0;
  }
 }


 val = strtol(name, &end, 10);
 if (end - name == len) {




  if (val < -1)
   ;
  else if (val < 0) {
   out->type = COLOR_NORMAL;
   return 0;

  } else if (val < 8) {
   out->type = COLOR_ANSI;
   out->value = val;
   return 0;
  } else if (val < 256) {
   out->type = COLOR_256;
   out->value = val;
   return 0;
  }
 }

 return -1;
}
