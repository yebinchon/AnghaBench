
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_eli_worker {int w_sid; } ;


 int crypto_freesession (int ) ;

__attribute__((used)) static void
g_eli_freesession(struct g_eli_worker *wr)
{

 crypto_freesession(wr->w_sid);
}
