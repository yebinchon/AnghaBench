; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_calc_hw_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_calc_hw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i32 }

@MODE_BB = common dso_local global i32 0, align 4
@MODE_K2 = common dso_local global i32 0, align 4
@MODE_E5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown chip type %#x\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@MODE_PORTS_PER_ENG_1 = common dso_local global i32 0, align 4
@MODE_PORTS_PER_ENG_2 = common dso_local global i32 0, align 4
@MODE_PORTS_PER_ENG_4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"num_ports_in_engine = %d not supported\0A\00", align 1
@ECORE_MF_OVLAN_CLSS = common dso_local global i32 0, align 4
@MODE_MF_SD = common dso_local global i32 0, align 4
@MODE_MF_SI = common dso_local global i32 0, align 4
@MODE_FPGA = common dso_local global i32 0, align 4
@MODE_EMUL_FULL = common dso_local global i32 0, align 4
@MODE_EMUL_REDUCED = common dso_local global i32 0, align 4
@MODE_ASIC = common dso_local global i32 0, align 4
@MODE_100G = common dso_local global i32 0, align 4
@ECORE_MSG_PROBE = common dso_local global i32 0, align 4
@ECORE_MSG_IFUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Configuring function for hw_mode: 0x%08x\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*)* @ecore_calc_hw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_calc_hw_mode(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %6 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %5, i32 0, i32 1
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = call i64 @ECORE_IS_BB_B0(%struct.TYPE_9__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @MODE_BB, align 4
  %12 = shl i32 1, %11
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = call i64 @ECORE_IS_AH(%struct.TYPE_9__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @MODE_K2, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %15
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %28 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call i64 @ECORE_IS_E5(%struct.TYPE_9__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* @MODE_E5, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %46

37:                                               ; preds = %26
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %40 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %38, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %45, i32* %2, align 4
  br label %163

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %21
  br label %48

48:                                               ; preds = %47, %10
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %50 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %69 [
    i32 1, label %54
    i32 2, label %59
    i32 4, label %64
  ]

54:                                               ; preds = %48
  %55 = load i32, i32* @MODE_PORTS_PER_ENG_1, align 4
  %56 = shl i32 1, %55
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %78

59:                                               ; preds = %48
  %60 = load i32, i32* @MODE_PORTS_PER_ENG_2, align 4
  %61 = shl i32 1, %60
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %78

64:                                               ; preds = %48
  %65 = load i32, i32* @MODE_PORTS_PER_ENG_4, align 4
  %66 = shl i32 1, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %78

69:                                               ; preds = %48
  %70 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %72 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %70, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %77, i32* %2, align 4
  br label %163

78:                                               ; preds = %64, %59, %54
  %79 = load i32, i32* @ECORE_MF_OVLAN_CLSS, align 4
  %80 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %81 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = call i64 @OSAL_TEST_BIT(i32 %79, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load i32, i32* @MODE_MF_SD, align 4
  %88 = shl i32 1, %87
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  br label %96

91:                                               ; preds = %78
  %92 = load i32, i32* @MODE_MF_SI, align 4
  %93 = shl i32 1, %92
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %98 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %97, i32 0, i32 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = call i64 @CHIP_REV_IS_SLOW(%struct.TYPE_9__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %132

102:                                              ; preds = %96
  %103 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %104 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %103, i32 0, i32 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = call i64 @CHIP_REV_IS_FPGA(%struct.TYPE_9__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load i32, i32* @MODE_FPGA, align 4
  %110 = shl i32 1, %109
  %111 = load i32, i32* %4, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %4, align 4
  br label %131

113:                                              ; preds = %102
  %114 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %115 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %114, i32 0, i32 1
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load i32, i32* @MODE_EMUL_FULL, align 4
  %122 = shl i32 1, %121
  %123 = load i32, i32* %4, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %4, align 4
  br label %130

125:                                              ; preds = %113
  %126 = load i32, i32* @MODE_EMUL_REDUCED, align 4
  %127 = shl i32 1, %126
  %128 = load i32, i32* %4, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %125, %120
  br label %131

131:                                              ; preds = %130, %108
  br label %137

132:                                              ; preds = %96
  %133 = load i32, i32* @MODE_ASIC, align 4
  %134 = shl i32 1, %133
  %135 = load i32, i32* %4, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %132, %131
  %138 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %139 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %138, i32 0, i32 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = call i64 @ECORE_IS_CMT(%struct.TYPE_9__* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load i32, i32* @MODE_100G, align 4
  %145 = shl i32 1, %144
  %146 = load i32, i32* %4, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %143, %137
  %149 = load i32, i32* %4, align 4
  %150 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %151 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  %153 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %154 = load i32, i32* @ECORE_MSG_PROBE, align 4
  %155 = load i32, i32* @ECORE_MSG_IFUP, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %158 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %153, i32 %156, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %148, %69, %37
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i64 @ECORE_IS_BB_B0(%struct.TYPE_9__*) #1

declare dso_local i64 @ECORE_IS_AH(%struct.TYPE_9__*) #1

declare dso_local i64 @ECORE_IS_E5(%struct.TYPE_9__*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i64 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.TYPE_9__*) #1

declare dso_local i64 @CHIP_REV_IS_FPGA(%struct.TYPE_9__*) #1

declare dso_local i64 @ECORE_IS_CMT(%struct.TYPE_9__*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
