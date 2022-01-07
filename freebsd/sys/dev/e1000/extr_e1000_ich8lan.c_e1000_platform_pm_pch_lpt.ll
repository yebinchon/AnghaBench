; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_platform_pm_pch_lpt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_platform_pm_pch_lpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*, i32*, i32*)* }
%struct.e1000_hw.0 = type opaque

@E1000_LTRV_REQ_SHIFT = common dso_local global i32 0, align 4
@E1000_LTRV_NOSNOOP_SHIFT = common dso_local global i32 0, align 4
@E1000_LTRV_SEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"e1000_platform_pm_pch_lpt\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"max_frame_size not set.\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Speed not set.\0A\00", align 1
@E1000_PBA = common dso_local global i32 0, align 4
@E1000_PBA_RXA_MASK = common dso_local global i64 0, align 8
@E1000_LTRV_VALUE_MASK = common dso_local global i32 0, align 4
@E1000_LTRV_SCALE_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Invalid LTR latency scale %d\0A\00", align 1
@E1000_LTRV_SCALE_SHIFT = common dso_local global i32 0, align 4
@E1000_PCI_LTR_CAP_LPT = common dso_local global i64 0, align 8
@E1000_SVT_OFF_HWM_MASK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid high water mark %d\0A\00", align 1
@E1000_LTRV = common dso_local global i32 0, align 4
@E1000_SVT = common dso_local global i32 0, align 4
@E1000_SVCR = common dso_local global i32 0, align 4
@E1000_SVCR_OFF_EN = common dso_local global i32 0, align 4
@E1000_SVCR_OFF_MASKINT = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_platform_pm_pch_lpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_platform_pm_pch_lpt(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @E1000_LTRV_REQ_SHIFT, align 4
  %20 = load i32, i32* @E1000_LTRV_NOSNOOP_SHIFT, align 4
  %21 = add nsw i32 %19, %20
  %22 = shl i32 %18, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @E1000_LTRV_REQ_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  %27 = load i32, i32* @E1000_LTRV_SEND, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %29 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %155

32:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %41 = sub nsw i64 0, %40
  store i64 %41, i64* %3, align 8
  br label %198

42:                                               ; preds = %32
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.e1000_hw.0*, i32*, i32*)*, i32 (%struct.e1000_hw.0*, i32*, i32*)** %46, align 8
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %49 = bitcast %struct.e1000_hw* %48 to %struct.e1000_hw.0*
  %50 = call i32 %47(%struct.e1000_hw.0* %49, i32* %9, i32* %10)
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %42
  %54 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %56 = sub nsw i64 0, %55
  store i64 %56, i64* %3, align 8
  br label %198

57:                                               ; preds = %42
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %59 = load i32, i32* @E1000_PBA, align 4
  %60 = call i64 @E1000_READ_REG(%struct.e1000_hw* %58, i32 %59)
  %61 = load i64, i64* @E1000_PBA_RXA_MASK, align 8
  %62 = and i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = mul nsw i32 %64, 1024
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = mul nsw i32 2, %70
  %72 = sub nsw i32 %65, %71
  %73 = mul nsw i32 %72, 8
  %74 = mul nsw i32 %73, 1000
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %57
  store i32 0, i32* %15, align 4
  br label %82

78:                                               ; preds = %57
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %15, align 4
  %81 = sdiv i32 %80, %79
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %78, %77
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %88, %82
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @E1000_LTRV_VALUE_MASK, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @E1000_DIVIDE_ROUND_UP(i32 %91, i32 32)
  store i32 %92, i32* %16, align 4
  br label %84

93:                                               ; preds = %84
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @E1000_LTRV_SCALE_MAX, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  %101 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %102 = sub nsw i64 0, %101
  store i64 %102, i64* %3, align 8
  br label %198

103:                                              ; preds = %93
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @E1000_LTRV_SCALE_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* %16, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %7, align 4
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %110 = load i64, i64* @E1000_PCI_LTR_CAP_LPT, align 8
  %111 = call i32 @e1000_read_pci_cfg(%struct.e1000_hw* %109, i64 %110, i32* %12)
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %113 = load i64, i64* @E1000_PCI_LTR_CAP_LPT, align 8
  %114 = add nsw i64 %113, 2
  %115 = call i32 @e1000_read_pci_cfg(%struct.e1000_hw* %112, i64 %114, i32* %13)
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @E1000_MAX(i32 %116, i32 %117)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %103
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @e1000_ltr2ns(i32 %124)
  store i32 %125, i32* %15, align 4
  br label %126

126:                                              ; preds = %122, %103
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = mul nsw i32 %130, 1000
  %132 = load i32, i32* %15, align 4
  %133 = mul nsw i32 %132, %131
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = sdiv i32 %134, 8
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %15, align 4
  %137 = sdiv i32 %136, 1000000000
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %15, align 4
  %140 = sub nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %8, align 8
  br label %142

142:                                              ; preds = %129, %126
  %143 = load i64, i64* %8, align 8
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %142
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* @E1000_SVT_OFF_HWM_MASK, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %145, %142
  %150 = load i64, i64* %8, align 8
  %151 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %150)
  %152 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %153 = sub nsw i64 0, %152
  store i64 %153, i64* %3, align 8
  br label %198

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %154, %2
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @E1000_LTRV_NOSNOOP_SHIFT, align 4
  %159 = shl i32 %157, %158
  %160 = or i32 %156, %159
  %161 = load i32, i32* %6, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %6, align 4
  %163 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %164 = load i32, i32* @E1000_LTRV, align 4
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %163, i32 %164, i32 %165)
  %167 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %168 = load i32, i32* @E1000_SVT, align 4
  %169 = call i64 @E1000_READ_REG(%struct.e1000_hw* %167, i32 %168)
  %170 = load i64, i64* @E1000_SVT_OFF_HWM_MASK, align 8
  %171 = xor i64 %170, -1
  %172 = and i64 %169, %171
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %6, align 4
  %174 = load i64, i64* %8, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = or i64 %176, %174
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %6, align 4
  %179 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %180 = load i32, i32* @E1000_SVT, align 4
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %179, i32 %180, i32 %181)
  %183 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %184 = load i32, i32* @E1000_SVCR, align 4
  %185 = call i64 @E1000_READ_REG(%struct.e1000_hw* %183, i32 %184)
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* @E1000_SVCR_OFF_EN, align 4
  %188 = load i32, i32* %6, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* @E1000_SVCR_OFF_MASKINT, align 4
  %191 = load i32, i32* %6, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %6, align 4
  %193 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %194 = load i32, i32* @E1000_SVCR, align 4
  %195 = load i32, i32* %6, align 4
  %196 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %193, i32 %194, i32 %195)
  %197 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %197, i64* %3, align 8
  br label %198

198:                                              ; preds = %155, %149, %97, %53, %38
  %199 = load i64, i64* %3, align 8
  ret i64 %199
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_DIVIDE_ROUND_UP(i32, i32) #1

declare dso_local i32 @DEBUGOUT1(i8*, i64) #1

declare dso_local i32 @e1000_read_pci_cfg(%struct.e1000_hw*, i64, i32*) #1

declare dso_local i32 @E1000_MAX(i32, i32) #1

declare dso_local i32 @e1000_ltr2ns(i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
