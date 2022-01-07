
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ iconv_t ;


 scalar_t__ has_non_ascii (char const*,size_t,size_t*) ;
 int iconv_close (scalar_t__) ;
 scalar_t__ iconv_open (int ,int ) ;
 int path_encoding ;
 int precomposed_unicode ;
 char* reencode_string_iconv (char const*,size_t,scalar_t__,int ,int *) ;
 int repo_encoding ;

void precompose_argv(int argc, const char **argv)
{
 int i = 0;
 const char *oldarg;
 char *newarg;
 iconv_t ic_precompose;

 if (precomposed_unicode != 1)
  return;

 ic_precompose = iconv_open(repo_encoding, path_encoding);
 if (ic_precompose == (iconv_t) -1)
  return;

 while (i < argc) {
  size_t namelen;
  oldarg = argv[i];
  if (has_non_ascii(oldarg, (size_t)-1, &namelen)) {
   newarg = reencode_string_iconv(oldarg, namelen, ic_precompose, 0, ((void*)0));
   if (newarg)
    argv[i] = newarg;
  }
  i++;
 }
 iconv_close(ic_precompose);
}
