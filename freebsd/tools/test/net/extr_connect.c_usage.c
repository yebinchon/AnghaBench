
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int err (int ,char*) ;

void usage()
{
 err(EX_USAGE, "connect [-p port]\n");
}
