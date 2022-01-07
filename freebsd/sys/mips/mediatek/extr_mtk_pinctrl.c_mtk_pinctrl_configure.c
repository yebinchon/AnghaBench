
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mtk_pin_group {int dummy; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENOENT ;
 int OF_child (int) ;
 int OF_node_from_xref (int) ;
 int OF_peer (int) ;
 struct mtk_pin_group* mt7620_pintable ;
 struct mtk_pin_group* mt7621_pintable ;
 struct mtk_pin_group* mt7628_pintable ;
 int mtk_pinctrl_process_node (int ,struct mtk_pin_group*,int) ;
 int mtk_soc_get_socid () ;
 struct mtk_pin_group* rt2880_pintable ;
 struct mtk_pin_group* rt3050_pintable ;
 struct mtk_pin_group* rt3352_pintable ;
 struct mtk_pin_group* rt3883_pintable ;
 struct mtk_pin_group* rt5350_pintable ;

__attribute__((used)) static int
mtk_pinctrl_configure(device_t dev, phandle_t cfgxref)
{
 struct mtk_pin_group *pintable;
 phandle_t node, child;
 uint32_t socid;
 int ret;

 node = OF_node_from_xref(cfgxref);
 ret = 0;


 socid = mtk_soc_get_socid();

 switch (socid) {
 case 135:
  pintable = rt2880_pintable;
  break;
 case 134:
 case 133:
 case 132:
  pintable = rt3050_pintable;
  break;
 case 131:
  pintable = rt3352_pintable;
  break;
 case 130:
 case 129:
  pintable = rt3883_pintable;
  break;
 case 128:
  pintable = rt5350_pintable;
  break;
 case 140:
 case 139:
  pintable = mt7620_pintable;
  break;
 case 137:
 case 136:
  pintable = mt7628_pintable;
  break;
 case 138:
  pintable = mt7621_pintable;
  break;
 default:
  ret = ENOENT;
  goto out;
 }





 for (child = OF_child(node); child != 0 && child != -1;
     child = OF_peer(child)) {
  if ((ret = mtk_pinctrl_process_node(dev, pintable, child)) != 0)
   return (ret);
 }

out:
 return (ret);
}
