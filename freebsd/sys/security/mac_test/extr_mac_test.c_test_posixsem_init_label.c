
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_INIT (struct label*,int ) ;
 int MAGIC_POSIX_SEM ;
 int posixsem_init_label ;

__attribute__((used)) static void
test_posixsem_init_label(struct label *label)
{

 LABEL_INIT(label, MAGIC_POSIX_SEM);
 COUNTER_INC(posixsem_init_label);
}
