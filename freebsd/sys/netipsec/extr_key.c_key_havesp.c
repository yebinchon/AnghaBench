
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;


 size_t IPSEC_DIR_INBOUND ;
 size_t IPSEC_DIR_OUTBOUND ;
 int * TAILQ_FIRST (int *) ;
 int * V_sptree ;

int
key_havesp(u_int dir)
{

 return (dir == IPSEC_DIR_INBOUND || dir == IPSEC_DIR_OUTBOUND ?
  TAILQ_FIRST(&V_sptree[dir]) != ((void*)0) : 1);
}
