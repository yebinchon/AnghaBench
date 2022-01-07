
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* gettokenname (int ,int) ;
 int rmodels ;

__attribute__((used)) static const char *
r_model(int model)
{

    return (gettokenname(rmodels, model));
}
