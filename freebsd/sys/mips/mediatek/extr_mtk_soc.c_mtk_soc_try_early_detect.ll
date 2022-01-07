; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_soc.c_mtk_soc_try_early_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_soc.c_mtk_soc_try_early_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@compat_data = common dso_local global %struct.TYPE_2__* null, align 8
@mtk_soc_socid = common dso_local global i32 0, align 4
@MTK_SOC_UNKNOWN = common dso_local global i32 0, align 4
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@MTK_RT2880_BASE = common dso_local global i32 0, align 4
@MTK_MT7621_BASE = common dso_local global i32 0, align 4
@MTK_DEFAULT_BASE = common dso_local global i32 0, align 4
@MTK_DEFAULT_SIZE = common dso_local global i32 0, align 4
@SYSCTL_CHIPID0_3 = common dso_local global i32 0, align 4
@mtk_soc_chipid0_3 = common dso_local global i8* null, align 8
@SYSCTL_CHIPID4_7 = common dso_local global i32 0, align 4
@mtk_soc_chipid4_7 = common dso_local global i8* null, align 8
@mtk_soc_cpuclk = common dso_local global i32 0, align 4
@mtk_soc_timerclk = common dso_local global i32 0, align 4
@MTK_UARTDIV_2 = common dso_local global i32 0, align 4
@mtk_soc_uartclk = common dso_local global i32 0, align 4
@MTK_UARTDIV_3 = common dso_local global i32 0, align 4
@MTK_UART_CLK_40MHZ = common dso_local global i32 0, align 4
@MTK_UART_CLK_50MHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_soc_try_early_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %137

9:                                                ; preds = %0
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %36, %9
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @compat_data, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @compat_data, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @ofw_bus_node_is_compatible(i32 %19, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @compat_data, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* @mtk_soc_socid, align 4
  br label %39

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %10

39:                                               ; preds = %28, %10
  %40 = load i32, i32* @mtk_soc_socid, align 4
  %41 = load i32, i32* @MTK_SOC_UNKNOWN, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %137

44:                                               ; preds = %39
  %45 = load i32, i32* @fdtbus_bs_tag, align 4
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* @mtk_soc_socid, align 4
  %47 = icmp eq i32 %46, 135
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @MTK_RT2880_BASE, align 4
  store i32 %49, i32* %3, align 4
  br label %58

50:                                               ; preds = %44
  %51 = load i32, i32* @mtk_soc_socid, align 4
  %52 = icmp eq i32 %51, 138
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @MTK_MT7621_BASE, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @MTK_DEFAULT_BASE, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %53
  br label %58

58:                                               ; preds = %57, %48
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @MTK_DEFAULT_SIZE, align 4
  %62 = call i64 @bus_space_map(i32 %59, i32 %60, i32 %61, i32 0, i32* %2)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %137

65:                                               ; preds = %58
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @SYSCTL_CHIPID0_3, align 4
  %69 = call i8* @bus_space_read_4(i32 %66, i32 %67, i32 %68)
  store i8* %69, i8** @mtk_soc_chipid0_3, align 8
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @SYSCTL_CHIPID4_7, align 4
  %73 = call i8* @bus_space_read_4(i32 %70, i32 %71, i32 %72)
  store i8* %73, i8** @mtk_soc_chipid4_7, align 8
  %74 = load i32, i32* @mtk_soc_socid, align 4
  switch i32 %74, label %107 [
    i32 135, label %75
    i32 134, label %79
    i32 133, label %79
    i32 132, label %79
    i32 131, label %83
    i32 130, label %87
    i32 129, label %87
    i32 128, label %91
    i32 140, label %95
    i32 139, label %95
    i32 138, label %99
    i32 137, label %103
    i32 136, label %103
  ]

75:                                               ; preds = %65
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @mtk_detect_cpuclk_rt2880(i32 %76, i32 %77)
  store i32 %78, i32* @mtk_soc_cpuclk, align 4
  br label %108

79:                                               ; preds = %65, %65, %65
  %80 = load i32, i32* %1, align 4
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @mtk_detect_cpuclk_rt305x(i32 %80, i32 %81)
  store i32 %82, i32* @mtk_soc_cpuclk, align 4
  br label %108

83:                                               ; preds = %65
  %84 = load i32, i32* %1, align 4
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @mtk_detect_cpuclk_rt3352(i32 %84, i32 %85)
  store i32 %86, i32* @mtk_soc_cpuclk, align 4
  br label %108

87:                                               ; preds = %65, %65
  %88 = load i32, i32* %1, align 4
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @mtk_detect_cpuclk_rt3883(i32 %88, i32 %89)
  store i32 %90, i32* @mtk_soc_cpuclk, align 4
  br label %108

91:                                               ; preds = %65
  %92 = load i32, i32* %1, align 4
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @mtk_detect_cpuclk_rt5350(i32 %92, i32 %93)
  store i32 %94, i32* @mtk_soc_cpuclk, align 4
  br label %108

95:                                               ; preds = %65, %65
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @mtk_detect_cpuclk_mt7620(i32 %96, i32 %97)
  store i32 %98, i32* @mtk_soc_cpuclk, align 4
  br label %108

99:                                               ; preds = %65
  %100 = load i32, i32* %1, align 4
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @mtk_detect_cpuclk_mt7621(i32 %100, i32 %101)
  store i32 %102, i32* @mtk_soc_cpuclk, align 4
  br label %108

103:                                              ; preds = %65, %65
  %104 = load i32, i32* %1, align 4
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @mtk_detect_cpuclk_mt7628(i32 %104, i32 %105)
  store i32 %106, i32* @mtk_soc_cpuclk, align 4
  br label %108

107:                                              ; preds = %65
  br label %108

108:                                              ; preds = %107, %103, %99, %95, %91, %87, %83, %79, %75
  %109 = load i32, i32* @mtk_soc_socid, align 4
  %110 = icmp eq i32 %109, 138
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @mtk_soc_cpuclk, align 4
  %113 = sdiv i32 %112, 2
  store i32 %113, i32* @mtk_soc_timerclk, align 4
  br label %117

114:                                              ; preds = %108
  %115 = load i32, i32* @mtk_soc_cpuclk, align 4
  %116 = sdiv i32 %115, 2
  store i32 %116, i32* @mtk_soc_timerclk, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* @mtk_soc_socid, align 4
  switch i32 %118, label %131 [
    i32 135, label %119
    i32 132, label %123
    i32 134, label %123
    i32 133, label %123
    i32 131, label %127
    i32 130, label %127
    i32 129, label %127
    i32 128, label %127
    i32 140, label %127
    i32 139, label %127
    i32 137, label %127
    i32 136, label %127
    i32 138, label %129
  ]

119:                                              ; preds = %117
  %120 = load i32, i32* @mtk_soc_cpuclk, align 4
  %121 = load i32, i32* @MTK_UARTDIV_2, align 4
  %122 = sdiv i32 %120, %121
  store i32 %122, i32* @mtk_soc_uartclk, align 4
  br label %132

123:                                              ; preds = %117, %117, %117
  %124 = load i32, i32* @mtk_soc_cpuclk, align 4
  %125 = load i32, i32* @MTK_UARTDIV_3, align 4
  %126 = sdiv i32 %124, %125
  store i32 %126, i32* @mtk_soc_uartclk, align 4
  br label %132

127:                                              ; preds = %117, %117, %117, %117, %117, %117, %117, %117
  %128 = load i32, i32* @MTK_UART_CLK_40MHZ, align 4
  store i32 %128, i32* @mtk_soc_uartclk, align 4
  br label %132

129:                                              ; preds = %117
  %130 = load i32, i32* @MTK_UART_CLK_50MHZ, align 4
  store i32 %130, i32* @mtk_soc_uartclk, align 4
  br label %132

131:                                              ; preds = %117
  br label %132

132:                                              ; preds = %131, %129, %127, %123, %119
  %133 = load i32, i32* %1, align 4
  %134 = load i32, i32* %2, align 4
  %135 = load i32, i32* @MTK_DEFAULT_SIZE, align 4
  %136 = call i32 @bus_space_unmap(i32 %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %64, %43, %8
  ret void
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i64 @ofw_bus_node_is_compatible(i32, i32*) #1

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i8* @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @mtk_detect_cpuclk_rt2880(i32, i32) #1

declare dso_local i32 @mtk_detect_cpuclk_rt305x(i32, i32) #1

declare dso_local i32 @mtk_detect_cpuclk_rt3352(i32, i32) #1

declare dso_local i32 @mtk_detect_cpuclk_rt3883(i32, i32) #1

declare dso_local i32 @mtk_detect_cpuclk_rt5350(i32, i32) #1

declare dso_local i32 @mtk_detect_cpuclk_mt7620(i32, i32) #1

declare dso_local i32 @mtk_detect_cpuclk_mt7621(i32, i32) #1

declare dso_local i32 @mtk_detect_cpuclk_mt7628(i32, i32) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
