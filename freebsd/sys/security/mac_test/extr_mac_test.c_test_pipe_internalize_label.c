
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (struct label*,int ) ;
 int MAGIC_PIPE ;
 int pipe_internalize_label ;

__attribute__((used)) static int
test_pipe_internalize_label(struct label *label, char *element_name,
    char *element_data, int *claimed)
{

 LABEL_CHECK(label, MAGIC_PIPE);
 COUNTER_INC(pipe_internalize_label);

 return (0);
}
