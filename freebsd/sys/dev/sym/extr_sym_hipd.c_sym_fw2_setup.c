
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sym_fw2a_scr {int data_out; int data_in; } ;
struct sym_fw {int dummy; } ;
typedef TYPE_1__* hcb_p ;
struct TYPE_4__ {scalar_t__ scripta0; } ;


 int sym_fw_fill_data (int ,int ) ;
 int sym_fw_setup_bus_addresses (TYPE_1__*,struct sym_fw const*) ;

__attribute__((used)) static void
sym_fw2_setup(hcb_p np, const struct sym_fw *fw)
{
 struct sym_fw2a_scr *scripta0;

 scripta0 = (struct sym_fw2a_scr *) np->scripta0;




 sym_fw_fill_data(scripta0->data_in, scripta0->data_out);




 sym_fw_setup_bus_addresses(np, fw);
}
