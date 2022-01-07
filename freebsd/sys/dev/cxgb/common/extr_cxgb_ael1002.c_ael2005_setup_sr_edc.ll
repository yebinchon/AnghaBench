; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2005_setup_sr_edc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2005_setup_sr_edc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val = type { i32, i32, i32, i32 }
%struct.cphy = type { i32 }

@ael2005_setup_sr_edc.regs = internal global [4 x %struct.reg_val] [%struct.reg_val { i32 128, i32 49155, i32 65535, i32 385 }, %struct.reg_val { i32 128, i32 49168, i32 65535, i32 17546 }, %struct.reg_val { i32 128, i32 49226, i32 65535, i32 20992 }, %struct.reg_val zeroinitializer], align 16
@ael2005_setup_sr_edc.sr_edc = internal global [542 x i32] [i32 52224, i32 12276, i32 52225, i32 15572, i32 52226, i32 8213, i32 52227, i32 12549, i32 52228, i32 25892, i32 52229, i32 10239, i32 52230, i32 12303, i32 52231, i32 11403, i32 52232, i32 12299, i32 52233, i32 16393, i32 52234, i32 16398, i32 52235, i32 12146, i32 52236, i32 12290, i32 52237, i32 4098, i32 52238, i32 8562, i32 52239, i32 12306, i32 52240, i32 4098, i32 52241, i32 9682, i32 52242, i32 12306, i32 52243, i32 4098, i32 52244, i32 53278, i32 52245, i32 10194, i32 52246, i32 12306, i32 52247, i32 4098, i32 52248, i32 8196, i32 52249, i32 15492, i32 52250, i32 25654, i32 52251, i32 8199, i32 52252, i32 16263, i32 52253, i32 34422, i32 52254, i32 16567, i32 52255, i32 42822, i32 52256, i32 16455, i32 52257, i32 22131, i32 52258, i32 10626, i32 52259, i32 12290, i32 52260, i32 5074, i32 52261, i32 35773, i32 52262, i32 10338, i32 52263, i32 12306, i32 52264, i32 4098, i32 52265, i32 8338, i32 52266, i32 12306, i32 52267, i32 4098, i32 52268, i32 23747, i32 52269, i32 788, i32 52270, i32 10562, i32 52271, i32 12290, i32 52272, i32 4098, i32 52273, i32 53273, i32 52274, i32 8242, i32 52275, i32 12306, i32 52276, i32 4098, i32 52277, i32 10756, i32 52278, i32 15476, i32 52279, i32 25653, i32 52280, i32 12196, i32 52281, i32 15572, i32 52282, i32 26148, i32 52283, i32 21859, i32 52284, i32 11586, i32 52285, i32 12290, i32 52286, i32 5074, i32 52287, i32 17997, i32 52288, i32 10338, i32 52289, i32 12306, i32 52290, i32 4098, i32 52291, i32 8242, i32 52292, i32 12306, i32 52293, i32 4098, i32 52294, i32 12212, i32 52295, i32 15572, i32 52296, i32 26148, i32 52297, i32 21859, i32 52298, i32 11586, i32 52299, i32 12290, i32 52300, i32 5074, i32 52301, i32 11986, i32 52302, i32 12290, i32 52303, i32 4098, i32 52304, i32 12242, i32 52305, i32 12290, i32 52306, i32 4098, i32 52307, i32 4, i32 52308, i32 10562, i32 52309, i32 12290, i32 52310, i32 4098, i32 52311, i32 8338, i32 52312, i32 12306, i32 52313, i32 4098, i32 52314, i32 23747, i32 52315, i32 791, i32 52316, i32 12146, i32 52317, i32 12290, i32 52318, i32 4098, i32 52319, i32 10562, i32 52320, i32 12290, i32 52321, i32 4098, i32 52322, i32 8909, i32 52323, i32 12317, i32 52324, i32 10338, i32 52325, i32 12306, i32 52326, i32 4098, i32 52327, i32 11986, i32 52328, i32 12290, i32 52329, i32 4098, i32 52330, i32 11634, i32 52331, i32 12290, i32 52332, i32 4098, i32 52333, i32 25231, i32 52334, i32 8466, i32 52335, i32 12306, i32 52336, i32 4098, i32 52337, i32 23203, i32 52338, i32 11714, i32 52339, i32 12290, i32 52340, i32 4882, i32 52341, i32 28530, i32 52342, i32 4098, i32 52343, i32 10247, i32 52344, i32 12711, i32 52345, i32 8388, i32 52346, i32 15396, i32 52347, i32 26404, i32 52348, i32 4098, i32 52349, i32 10247, i32 52350, i32 12679, i32 52351, i32 8388, i32 52352, i32 15396, i32 52353, i32 26404, i32 52354, i32 4098, i32 52355, i32 9492, i32 52356, i32 15460, i32 52357, i32 25654, i32 52358, i32 57332, i32 52359, i32 25654, i32 52360, i32 4098, i32 52361, i32 16548, i32 52362, i32 25660, i32 52363, i32 16406, i32 52364, i32 35948, i32 52365, i32 11044, i32 52366, i32 15396, i32 52367, i32 25653, i32 52368, i32 4098, i32 52369, i32 11044, i32 52370, i32 15396, i32 52371, i32 25658, i32 52372, i32 16421, i32 52373, i32 35418, i32 52374, i32 4098, i32 52375, i32 10033, i32 52376, i32 12305, i32 52377, i32 4097, i32 52378, i32 51104, i32 52379, i32 256, i32 52380, i32 50434, i32 52381, i32 21420, i32 52382, i32 50435, i32 52383, i32 54741, i32 52384, i32 50688, i32 52385, i32 10861, i32 52386, i32 50689, i32 52387, i32 10828, i32 52388, i32 50690, i32 52389, i32 273, i32 52390, i32 50700, i32 52391, i32 22784, i32 52392, i32 50960, i32 52393, i32 1792, i32 52394, i32 50968, i32 52395, i32 1792, i32 52396, i32 50976, i32 52397, i32 18176, i32 52398, i32 51201, i32 52399, i32 32592, i32 52400, i32 51202, i32 52401, i32 30560, i32 52402, i32 51203, i32 52403, i32 32718, i32 52404, i32 51204, i32 52405, i32 22272, i32 52406, i32 51205, i32 52407, i32 24337, i32 52408, i32 51206, i32 52409, i32 18257, i32 52410, i32 51207, i32 52411, i32 22497, i32 52412, i32 51208, i32 52413, i32 9984, i32 52414, i32 51209, i32 52415, i32 0, i32 52416, i32 51233, i32 52417, i32 2, i32 52418, i32 51234, i32 52419, i32 20, i32 52420, i32 51250, i32 52421, i32 4486, i32 52422, i32 51271, i32 52423, i32 7682, i32 52424, i32 49171, i32 52425, i32 62273, i32 52426, i32 49178, i32 52427, i32 1094, i32 52428, i32 49188, i32 52429, i32 4096, i32 52430, i32 49189, i32 52431, i32 2560, i32 52432, i32 49190, i32 52433, i32 3084, i32 52434, i32 49191, i32 52435, i32 3084, i32 52436, i32 49193, i32 52437, i32 160, i32 52438, i32 49200, i32 52439, i32 2560, i32 52440, i32 49212, i32 52441, i32 28, i32 52442, i32 49157, i32 52443, i32 31238, i32 52444, i32 0, i32 52445, i32 10033, i32 52446, i32 12305, i32 52447, i32 4097, i32 52448, i32 50720, i32 52449, i32 0, i32 52450, i32 50721, i32 52451, i32 63, i32 52452, i32 50722, i32 52453, i32 0, i32 52454, i32 50723, i32 52455, i32 0, i32 52456, i32 50724, i32 52457, i32 0, i32 52458, i32 50725, i32 52459, i32 0, i32 52460, i32 50727, i32 52461, i32 0, i32 52462, i32 50728, i32 52463, i32 0, i32 52464, i32 50732, i32 52465, i32 0, i32 52466, i32 0, i32 52467, i32 10246, i32 52468, i32 15542, i32 52469, i32 49505, i32 52470, i32 24884, i32 52471, i32 24885, i32 52472, i32 21571, i32 52473, i32 771, i32 52474, i32 25892, i32 52475, i32 11, i32 52476, i32 4098, i32 52477, i32 8452, i32 52478, i32 15396, i32 52479, i32 8453, i32 52480, i32 14341, i32 52481, i32 25892, i32 52482, i32 57332, i32 52483, i32 16389, i32 52484, i32 25892, i32 52485, i32 4098, i32 52486, i32 24019, i32 52487, i32 774, i32 52488, i32 12279, i32 52489, i32 14583, i32 52490, i32 24759, i32 52491, i32 57341, i32 52492, i32 10, i32 52493, i32 4098, i32 52494, i32 0], align 16
@edc_sr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @ael2005_setup_sr_edc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2005_setup_sr_edc(%struct.cphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %3, align 8
  %6 = load %struct.cphy*, %struct.cphy** %3, align 8
  %7 = call i32 @set_phy_regs(%struct.cphy* %6, %struct.reg_val* getelementptr inbounds ([4 x %struct.reg_val], [4 x %struct.reg_val]* @ael2005_setup_sr_edc.regs, i64 0, i64 0))
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %48

12:                                               ; preds = %1
  %13 = call i32 @msleep(i32 50)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %36, %12
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([542 x i32], [542 x i32]* @ael2005_setup_sr_edc.sr_edc, i64 0, i64 0))
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %39

24:                                               ; preds = %22
  %25 = load %struct.cphy*, %struct.cphy** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [542 x i32], [542 x i32]* @ael2005_setup_sr_edc.sr_edc, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [542 x i32], [542 x i32]* @ael2005_setup_sr_edc.sr_edc, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mdio_write(%struct.cphy* %25, i32 128, i32 %29, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %4, align 4
  br label %14

39:                                               ; preds = %22
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @edc_sr, align 4
  %44 = load %struct.cphy*, %struct.cphy** %3, align 8
  %45 = getelementptr inbounds %struct.cphy, %struct.cphy* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
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
