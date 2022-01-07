; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2005_setup_twinax_edc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2005_setup_twinax_edc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val = type { i32, i32, i32, i32 }
%struct.cphy = type { i32 }

@ael2005_setup_twinax_edc.regs = internal global [2 x %struct.reg_val] [%struct.reg_val { i32 128, i32 49226, i32 65535, i32 23040 }, %struct.reg_val zeroinitializer], align 16
@ael2005_setup_twinax_edc.preemphasis = internal global [3 x %struct.reg_val] [%struct.reg_val { i32 128, i32 49172, i32 65535, i32 65046 }, %struct.reg_val { i32 128, i32 49173, i32 65535, i32 40960 }, %struct.reg_val zeroinitializer], align 16
@ael2005_setup_twinax_edc.twinax_edc = internal global [732 x i32] [i32 52224, i32 16393, i32 52225, i32 10239, i32 52226, i32 12303, i32 52227, i32 16554, i32 52228, i32 16412, i32 52229, i32 16414, i32 52230, i32 12276, i32 52231, i32 15572, i32 52232, i32 8245, i32 52233, i32 12613, i32 52234, i32 25892, i32 52235, i32 9890, i32 52236, i32 12306, i32 52237, i32 4098, i32 52238, i32 10690, i32 52239, i32 12290, i32 52240, i32 4098, i32 52241, i32 8306, i32 52242, i32 12306, i32 52243, i32 4098, i32 52244, i32 8909, i32 52245, i32 12317, i32 52246, i32 11858, i32 52247, i32 12306, i32 52248, i32 4098, i32 52249, i32 10466, i32 52250, i32 12290, i32 52251, i32 4098, i32 52252, i32 25231, i32 52253, i32 10946, i32 52254, i32 12306, i32 52255, i32 4098, i32 52256, i32 21843, i32 52257, i32 10978, i32 52258, i32 12290, i32 52259, i32 4866, i32 52260, i32 16414, i32 52261, i32 11234, i32 52262, i32 12306, i32 52263, i32 4098, i32 52264, i32 11682, i32 52265, i32 12306, i32 52266, i32 4098, i32 52267, i32 11170, i32 52268, i32 12290, i32 52269, i32 4098, i32 52270, i32 24291, i32 52271, i32 773, i32 52272, i32 16398, i32 52273, i32 11202, i32 52274, i32 12290, i32 52275, i32 4098, i32 52276, i32 11138, i32 52277, i32 12306, i32 52278, i32 4098, i32 52279, i32 22115, i32 52280, i32 770, i32 52281, i32 16414, i32 52282, i32 28530, i32 52283, i32 4098, i32 52284, i32 25231, i32 52285, i32 11234, i32 52286, i32 12306, i32 52287, i32 4098, i32 52288, i32 8909, i32 52289, i32 12317, i32 52290, i32 11858, i32 52291, i32 12306, i32 52292, i32 4098, i32 52293, i32 9506, i32 52294, i32 12306, i32 52295, i32 4098, i32 52296, i32 11682, i32 52297, i32 12306, i32 52298, i32 4098, i32 52299, i32 11426, i32 52300, i32 12306, i32 52301, i32 4098, i32 52302, i32 12196, i32 52303, i32 15572, i32 52304, i32 26148, i32 52305, i32 16651, i32 52306, i32 22195, i32 52307, i32 964, i32 52308, i32 12210, i32 52309, i32 12290, i32 52310, i32 4098, i32 52311, i32 8715, i32 52312, i32 12347, i32 52313, i32 22195, i32 52314, i32 963, i32 52315, i32 34411, i32 52316, i32 16396, i32 52317, i32 9122, i32 52318, i32 12306, i32 52319, i32 4098, i32 52320, i32 11682, i32 52321, i32 12306, i32 52322, i32 4098, i32 52323, i32 11426, i32 52324, i32 12306, i32 52325, i32 4098, i32 52326, i32 12212, i32 52327, i32 15572, i32 52328, i32 26148, i32 52329, i32 22195, i32 52330, i32 963, i32 52331, i32 34411, i32 52332, i32 16412, i32 52333, i32 8709, i32 52334, i32 12341, i32 52335, i32 23379, i32 52336, i32 11346, i32 52337, i32 12290, i32 52338, i32 5058, i32 52339, i32 23747, i32 52340, i32 791, i32 52341, i32 9506, i32 52342, i32 12306, i32 52343, i32 4098, i32 52344, i32 11682, i32 52345, i32 12306, i32 52346, i32 4098, i32 52347, i32 11138, i32 52348, i32 12306, i32 52349, i32 4098, i32 52350, i32 22115, i32 52351, i32 771, i32 52352, i32 16414, i32 52353, i32 4, i32 52354, i32 11330, i32 52355, i32 12306, i32 52356, i32 4098, i32 52357, i32 28530, i32 52358, i32 4098, i32 52359, i32 25231, i32 52360, i32 8964, i32 52361, i32 15492, i32 52362, i32 25654, i32 52363, i32 57332, i32 52364, i32 25654, i32 52365, i32 12277, i32 52366, i32 12293, i32 52367, i32 34390, i32 52368, i32 57274, i32 52369, i32 22179, i32 52370, i32 53338, i32 52371, i32 8642, i32 52372, i32 12306, i32 52373, i32 5010, i32 52374, i32 53338, i32 52375, i32 22179, i32 52376, i32 57274, i32 52377, i32 899, i32 52378, i32 28530, i32 52379, i32 4098, i32 52380, i32 10437, i32 52381, i32 12293, i32 52382, i32 16760, i32 52383, i32 22099, i32 52384, i32 900, i32 52385, i32 8882, i32 52386, i32 12306, i32 52387, i32 4098, i32 52388, i32 11237, i32 52389, i32 12293, i32 52390, i32 16872, i32 52391, i32 22099, i32 52392, i32 898, i32 52393, i32 2, i32 52394, i32 16984, i32 52395, i32 9332, i32 52396, i32 15492, i32 52397, i32 25655, i32 52398, i32 57332, i32 52399, i32 25655, i32 52400, i32 12277, i32 52401, i32 15365, i32 52402, i32 34647, i32 52403, i32 47240, i32 52404, i32 38791, i32 52405, i32 57332, i32 52406, i32 26404, i32 52407, i32 34410, i32 52408, i32 28530, i32 52409, i32 4098, i32 52410, i32 11521, i32 52411, i32 12305, i32 52412, i32 4097, i32 52413, i32 50720, i32 52414, i32 5349, i32 52415, i32 50721, i32 52416, i32 50493, i32 52417, i32 50722, i32 52418, i32 15550, i32 52419, i32 50723, i32 52420, i32 17490, i32 52421, i32 50724, i32 52422, i32 50629, i32 52423, i32 50725, i32 52424, i32 57374, i32 52425, i32 50727, i32 52426, i32 0, i32 52427, i32 50728, i32 52428, i32 0, i32 52429, i32 50731, i32 52430, i32 0, i32 52431, i32 50732, i32 52432, i32 0, i32 52433, i32 0, i32 52434, i32 11521, i32 52435, i32 12305, i32 52436, i32 4097, i32 52437, i32 50720, i32 52438, i32 0, i32 52439, i32 50721, i32 52440, i32 0, i32 52441, i32 50722, i32 52442, i32 206, i32 52443, i32 50723, i32 52444, i32 127, i32 52445, i32 50724, i32 52446, i32 50, i32 52447, i32 50725, i32 52448, i32 0, i32 52449, i32 50727, i32 52450, i32 0, i32 52451, i32 50728, i32 52452, i32 0, i32 52453, i32 50731, i32 52454, i32 0, i32 52455, i32 50732, i32 52456, i32 0, i32 52457, i32 0, i32 52458, i32 11521, i32 52459, i32 12305, i32 52460, i32 4097, i32 52461, i32 50434, i32 52462, i32 24735, i32 52463, i32 50688, i32 52464, i32 10862, i32 52465, i32 50689, i32 52466, i32 10796, i32 52467, i32 50700, i32 52468, i32 21504, i32 52469, i32 50960, i32 52470, i32 1792, i32 52471, i32 50968, i32 52472, i32 1792, i32 52473, i32 50976, i32 52474, i32 18176, i32 52475, i32 50984, i32 52476, i32 1792, i32 52477, i32 50985, i32 52478, i32 4615, i32 52479, i32 51201, i32 52480, i32 32592, i32 52481, i32 51202, i32 52482, i32 30560, i32 52483, i32 51203, i32 52484, i32 32718, i32 52485, i32 51204, i32 52486, i32 21006, i32 52487, i32 51205, i32 52488, i32 23569, i32 52489, i32 51206, i32 52490, i32 15441, i32 52491, i32 51207, i32 52492, i32 16481, i32 52493, i32 51208, i32 52494, i32 18881, i32 52495, i32 51209, i32 52496, i32 14400, i32 52497, i32 51210, i32 52498, i32 0, i32 52499, i32 51233, i32 52500, i32 2, i32 52501, i32 51234, i32 52502, i32 70, i32 52503, i32 51268, i32 52504, i32 6191, i32 52505, i32 49171, i32 52506, i32 62273, i32 52507, i32 49178, i32 52508, i32 1094, i32 52509, i32 49188, i32 52510, i32 4096, i32 52511, i32 49189, i32 52512, i32 2560, i32 52513, i32 49190, i32 52514, i32 3084, i32 52515, i32 49191, i32 52516, i32 3084, i32 52517, i32 49193, i32 52518, i32 160, i32 52519, i32 49200, i32 52520, i32 2560, i32 52521, i32 49212, i32 52522, i32 28, i32 52523, i32 0, i32 52524, i32 11140, i32 52525, i32 15476, i32 52526, i32 25653, i32 52527, i32 57332, i32 52528, i32 25653, i32 52529, i32 10246, i32 52530, i32 12294, i32 52531, i32 34149, i32 52532, i32 11044, i32 52533, i32 15396, i32 52534, i32 25654, i32 52535, i32 4098, i32 52536, i32 11044, i32 52537, i32 15396, i32 52538, i32 25654, i32 52539, i32 16453, i32 52540, i32 34390, i32 52541, i32 4098, i32 52542, i32 10247, i32 52543, i32 12711, i32 52544, i32 8388, i32 52545, i32 15396, i32 52546, i32 26404, i32 52547, i32 4098, i32 52548, i32 10247, i32 52549, i32 12679, i32 52550, i32 8388, i32 52551, i32 15396, i32 52552, i32 26404, i32 52553, i32 4098, i32 52554, i32 9492, i32 52555, i32 15460, i32 52556, i32 25654, i32 52557, i32 57332, i32 52558, i32 25654, i32 52559, i32 4098, i32 52560, i32 10246, i32 52561, i32 15542, i32 52562, i32 49505, i32 52563, i32 24884, i32 52564, i32 24885, i32 52565, i32 21571, i32 52566, i32 771, i32 52567, i32 25892, i32 52568, i32 11, i32 52569, i32 4098, i32 52570, i32 53273, i32 52571, i32 8452, i32 52572, i32 15396, i32 52573, i32 8453, i32 52574, i32 14341, i32 52575, i32 25892, i32 52576, i32 57332, i32 52577, i32 16389, i32 52578, i32 25892, i32 52579, i32 11917, i32 52580, i32 12349, i32 52581, i32 24019, i32 52582, i32 774, i32 52583, i32 12279, i32 52584, i32 14583, i32 52585, i32 24759, i32 52586, i32 57341, i32 52587, i32 10, i32 52588, i32 4098, i32 52589, i32 0], align 16
@phy_modtype_twinax_long = common dso_local global i32 0, align 4
@edc_twinax = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @ael2005_setup_twinax_edc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2005_setup_twinax_edc(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cphy*, %struct.cphy** %4, align 8
  %9 = call i32 @set_phy_regs(%struct.cphy* %8, %struct.reg_val* getelementptr inbounds ([2 x %struct.reg_val], [2 x %struct.reg_val]* @ael2005_setup_twinax_edc.regs, i64 0, i64 0))
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @phy_modtype_twinax_long, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.cphy*, %struct.cphy** %4, align 8
  %18 = call i32 @set_phy_regs(%struct.cphy* %17, %struct.reg_val* getelementptr inbounds ([3 x %struct.reg_val], [3 x %struct.reg_val]* @ael2005_setup_twinax_edc.preemphasis, i64 0, i64 0))
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %16, %12, %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %19
  %25 = call i32 @msleep(i32 50)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %48, %24
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([732 x i32], [732 x i32]* @ael2005_setup_twinax_edc.twinax_edc, i64 0, i64 0))
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %51

36:                                               ; preds = %34
  %37 = load %struct.cphy*, %struct.cphy** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [732 x i32], [732 x i32]* @ael2005_setup_twinax_edc.twinax_edc, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [732 x i32], [732 x i32]* @ael2005_setup_twinax_edc.twinax_edc, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mdio_write(%struct.cphy* %37, i32 128, i32 %41, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %6, align 4
  br label %26

51:                                               ; preds = %34
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @edc_twinax, align 4
  %56 = load %struct.cphy*, %struct.cphy** %4, align 8
  %57 = getelementptr inbounds %struct.cphy, %struct.cphy* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @set_phy_regs(%struct.cphy*, %struct.reg_val*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mdio_write(%struct.cphy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
