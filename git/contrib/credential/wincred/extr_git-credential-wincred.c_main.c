
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int _O_BINARY ;
 int _fileno (int ) ;
 int _setmode (int ,int ) ;
 int die (char const*) ;
 int erase_credential () ;
 int get_credential () ;
 char* host ;
 int load_cred_funcs () ;
 char* path ;
 char* protocol ;
 int read_credential () ;
 int stdin ;
 int stdout ;
 int store_credential () ;
 int strcmp (char*,char*) ;
 int target ;
 int wcscpy (int ,char*) ;
 int wcsncat (int ,char*,int ) ;
 char* wusername ;

int main(int argc, char *argv[])
{
 const char *usage =
     "usage: git credential-wincred <get|store|erase>\n";

 if (!argv[1])
  die(usage);


 _setmode(_fileno(stdin), _O_BINARY);
 _setmode(_fileno(stdout), _O_BINARY);

 read_credential();

 load_cred_funcs();

 if (!protocol || !(host || path))
  return 0;


 wcscpy(target, L"git:");
 wcsncat(target, protocol, ARRAY_SIZE(target));
 wcsncat(target, L"://", ARRAY_SIZE(target));
 if (wusername) {
  wcsncat(target, wusername, ARRAY_SIZE(target));
  wcsncat(target, L"@", ARRAY_SIZE(target));
 }
 if (host)
  wcsncat(target, host, ARRAY_SIZE(target));
 if (path) {
  wcsncat(target, L"/", ARRAY_SIZE(target));
  wcsncat(target, path, ARRAY_SIZE(target));
 }

 if (!strcmp(argv[1], "get"))
  get_credential();
 else if (!strcmp(argv[1], "store"))
  store_credential();
 else if (!strcmp(argv[1], "erase"))
  erase_credential();

 return 0;
}
