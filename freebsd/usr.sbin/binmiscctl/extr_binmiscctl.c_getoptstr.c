
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int optarg ;
 int strlcpy (char*,int ,size_t) ;
 size_t strlen (int ) ;
 int usage (char*,char const*) ;

__attribute__((used)) static void
getoptstr(char *str, size_t size, const char *argname)
{
 if (strlen(optarg) > size)
  usage("'%s' too large", argname);
 strlcpy(str, optarg, size);
}
