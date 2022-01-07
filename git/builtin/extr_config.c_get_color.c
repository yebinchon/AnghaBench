
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 scalar_t__ color_parse (char const*,char*) ;
 int config_options ;
 int config_with_options (int ,int *,int *,int *) ;
 int die (int ) ;
 int fputs (char*,int ) ;
 scalar_t__ get_color_found ;
 char const* get_color_slot ;
 int git_get_color_config ;
 int given_config_source ;
 char* parsed_color ;
 int stdout ;

__attribute__((used)) static void get_color(const char *var, const char *def_color)
{
 get_color_slot = var;
 get_color_found = 0;
 parsed_color[0] = '\0';
 config_with_options(git_get_color_config, ((void*)0),
       &given_config_source, &config_options);

 if (!get_color_found && def_color) {
  if (color_parse(def_color, parsed_color) < 0)
   die(_("unable to parse default color value"));
 }

 fputs(parsed_color, stdout);
}
