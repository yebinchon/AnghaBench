
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cd9660_uppercase_characters (char*,int) ;
 int cd9660_valid_a_chars (char const*) ;
 int cd9660_valid_d_chars (char const*) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 int warnx (char*,char const*,...) ;

__attribute__((used)) static int
cd9660_arguments_set_string(const char *val, const char *fieldtitle, int length,
       char testmode, char * dest)
{
 int len, test;

 if (val == ((void*)0))
  warnx("error: The %s requires a string argument", fieldtitle);
 else if ((len = strlen(val)) <= length) {
  if (testmode == 'd')
   test = cd9660_valid_d_chars(val);
  else
   test = cd9660_valid_a_chars(val);
  if (test) {
   memcpy(dest, val, len);
   if (test == 2)
    cd9660_uppercase_characters(dest, len);
   return 1;
  } else
   warnx("error: The %s must be composed of "
         "%c-characters", fieldtitle, testmode);
 } else
  warnx("error: The %s must be at most 32 characters long",
      fieldtitle);
 return 0;
}
