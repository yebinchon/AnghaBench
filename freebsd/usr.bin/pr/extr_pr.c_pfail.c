
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 char* strerror (int ) ;

void
pfail(void)
{
 (void)fprintf(err, "pr: write failure, %s\n", strerror(errno));
}
