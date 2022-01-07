
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OK ;
 int get_statistics (char*) ;

int
main(int argc, char **argv)
{
 get_statistics((argc > 1) ? argv[1] : "iwi0");

 return EX_OK;
}
