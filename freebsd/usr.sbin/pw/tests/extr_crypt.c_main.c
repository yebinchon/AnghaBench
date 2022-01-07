
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* crypt (char*,char*) ;
 int errx (int,char*) ;
 int printf (char*,char*) ;

int main(int argc, char** argv)
{
 char *salt, *pass, *hash;

 if (argc < 3)
  errx(1, "Usage: crypt <salt> <password>");
 salt = argv[1];
 pass = argv[2];

 hash = crypt(pass, salt);
 printf("%s", hash);
 return (hash == ((void*)0) ? 1 : 0);
}
