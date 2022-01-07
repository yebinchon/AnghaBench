
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int append_string (char*) ;
 int finish_packet () ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,int const*,size_t) ;
 int start_packet () ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void
check_features(const uint8_t *data, size_t len)
{
 char *feature, *next_feature, *str, *value;
 bool supported;

 str = malloc(len + 1);
 memcpy(str, data, len);
 str[len] = '\0';
 next_feature = str;

 while ((feature = strsep(&next_feature, ";")) != ((void*)0)) {




  if (strcmp(feature, "") == 0)
   continue;





  value = strchr(feature, '=');
  if (value != ((void*)0)) {
   *value = '\0';
   value++;
   supported = 1;
  } else {
   value = feature + strlen(feature) - 1;
   switch (*value) {
   case '+':
    supported = 1;
    break;
   case '-':
    supported = 0;
    break;
   default:






    continue;
   }
   value = ((void*)0);
  }


 }
 free(str);

 start_packet();


 append_string("PacketSize=4096");
 finish_packet();
}
