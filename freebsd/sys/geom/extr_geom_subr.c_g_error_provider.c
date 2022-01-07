
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int error; } ;



void
g_error_provider(struct g_provider *pp, int error)
{


 pp->error = error;
}
