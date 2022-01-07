
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dummy; } ;


 int CHANGE ;
 int M3_DEBUG (int ,char*) ;

__attribute__((used)) static int
m3_uninit(struct sc_info *sc)
{
        M3_DEBUG(CHANGE, ("m3_uninit\n"));
 return 0;
}
