; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_attentions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_attentions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_sb_attn_info* }
%struct.ecore_sb_attn_info = type { i64, %struct.atten_status_block* }
%struct.atten_status_block = type { i64, i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ATTN_STATE_BITS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [114 x i8] c"Attention: Index: 0x%04x, Bits: 0x%08x, Acks: 0x%08x, asserted: 0x%04x, De-asserted 0x%04x [Prev. known: 0x%04x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"MFW indication via attention\0A\00", align 1
@ECORE_MSG_INTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"MFW indication [deassertion]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*)* @ecore_int_attentions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_int_attentions(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_sb_attn_info*, align 8
  %5 = alloca %struct.atten_status_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  %14 = load %struct.ecore_sb_attn_info*, %struct.ecore_sb_attn_info** %13, align 8
  store %struct.ecore_sb_attn_info* %14, %struct.ecore_sb_attn_info** %4, align 8
  %15 = load %struct.ecore_sb_attn_info*, %struct.ecore_sb_attn_info** %4, align 8
  %16 = getelementptr inbounds %struct.ecore_sb_attn_info, %struct.ecore_sb_attn_info* %15, i32 0, i32 1
  %17 = load %struct.atten_status_block*, %struct.atten_status_block** %16, align 8
  store %struct.atten_status_block* %17, %struct.atten_status_block** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %18 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %32, %1
  %20 = load %struct.atten_status_block*, %struct.atten_status_block** %5, align 8
  %21 = getelementptr inbounds %struct.atten_status_block, %struct.atten_status_block* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @OSAL_LE16_TO_CPU(i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.atten_status_block*, %struct.atten_status_block** %5, align 8
  %25 = getelementptr inbounds %struct.atten_status_block, %struct.atten_status_block* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @OSAL_LE32_TO_CPU(i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load %struct.atten_status_block*, %struct.atten_status_block** %5, align 8
  %29 = getelementptr inbounds %struct.atten_status_block, %struct.atten_status_block* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @OSAL_LE32_TO_CPU(i32 %30)
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %19
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.atten_status_block*, %struct.atten_status_block** %5, align 8
  %35 = getelementptr inbounds %struct.atten_status_block, %struct.atten_status_block* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @OSAL_LE16_TO_CPU(i64 %36)
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %19, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.atten_status_block*, %struct.atten_status_block** %5, align 8
  %42 = getelementptr inbounds %struct.atten_status_block, %struct.atten_status_block* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = xor i64 %44, -1
  %46 = and i64 %43, %45
  %47 = load i64, i64* @ATTN_STATE_BITS, align 8
  %48 = and i64 %46, %47
  %49 = load %struct.ecore_sb_attn_info*, %struct.ecore_sb_attn_info** %4, align 8
  %50 = getelementptr inbounds %struct.ecore_sb_attn_info, %struct.ecore_sb_attn_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = xor i64 %51, -1
  %53 = and i64 %48, %52
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = xor i64 %54, -1
  %56 = load i64, i64* %10, align 8
  %57 = and i64 %55, %56
  %58 = load i64, i64* @ATTN_STATE_BITS, align 8
  %59 = and i64 %57, %58
  %60 = load %struct.ecore_sb_attn_info*, %struct.ecore_sb_attn_info** %4, align 8
  %61 = getelementptr inbounds %struct.ecore_sb_attn_info, %struct.ecore_sb_attn_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = and i64 %59, %62
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %7, align 8
  %65 = and i64 %64, -257
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %39
  %68 = load i64, i64* %8, align 8
  %69 = and i64 %68, -257
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67, %39
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.ecore_sb_attn_info*, %struct.ecore_sb_attn_info** %4, align 8
  %79 = getelementptr inbounds %struct.ecore_sb_attn_info, %struct.ecore_sb_attn_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_INFO(%struct.ecore_hwfn* %72, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0), i64 %73, i64 %74, i64 %75, i64 %76, i64 %77, i64 %80)
  br label %93

82:                                               ; preds = %67
  %83 = load i64, i64* %7, align 8
  %84 = icmp eq i64 %83, 256
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %87 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_INFO(%struct.ecore_hwfn* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %92

88:                                               ; preds = %82
  %89 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %90 = load i32, i32* @ECORE_MSG_INTR, align 4
  %91 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %89, i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %85
  br label %93

93:                                               ; preds = %92, %71
  %94 = load i64, i64* %7, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @ecore_int_assertion(%struct.ecore_hwfn* %97, i64 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %2, align 4
  br label %114

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %93
  %106 = load i64, i64* %8, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @ecore_int_deassertion(%struct.ecore_hwfn* %109, i64 %110)
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %108, %105
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %102
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i64 @OSAL_LE16_TO_CPU(i64) #1

declare dso_local i64 @OSAL_LE32_TO_CPU(i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, ...) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_int_assertion(%struct.ecore_hwfn*, i64) #1

declare dso_local i32 @ecore_int_deassertion(%struct.ecore_hwfn*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
