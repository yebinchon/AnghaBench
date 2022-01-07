
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partedit_item {int indentation; char* name; char* type; char* mountpoint; int size; } ;
typedef int chtype ;
typedef int WINDOW ;


 int A_NORMAL ;
 int HN_AUTOSCALE ;
 int HN_DECIMAL ;
 int MARGIN ;
 int dlg_print_text (int *,char*,int,int *) ;
 int humanize_number (char*,int,int ,char*,int ,int ) ;
 int item_attr ;
 int item_selected_attr ;
 int wattrset (int *,int ) ;
 int wmove (int *,int,int) ;

__attribute__((used)) static void
print_partedit_item(WINDOW *partitions, struct partedit_item *items,
    int item, int nscroll, int selected)
{
 chtype attr = A_NORMAL;
 char sizetext[16];
 int y = item - nscroll + 1;

 wattrset(partitions, selected ? item_selected_attr : item_attr);
 wmove(partitions, y, MARGIN + items[item].indentation*2);
 dlg_print_text(partitions, items[item].name, 10, &attr);
 wmove(partitions, y, 17);
 wattrset(partitions, item_attr);

 humanize_number(sizetext, 7, items[item].size, "B", HN_AUTOSCALE,
     HN_DECIMAL);
 dlg_print_text(partitions, sizetext, 8, &attr);
 wmove(partitions, y, 25);
 dlg_print_text(partitions, items[item].type, 15, &attr);
 wmove(partitions, y, 40);
 if (items[item].mountpoint != ((void*)0))
  dlg_print_text(partitions, items[item].mountpoint, 8, &attr);
}
