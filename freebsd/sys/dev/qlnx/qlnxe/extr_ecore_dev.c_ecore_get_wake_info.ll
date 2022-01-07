; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_get_wake_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_get_wake_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_dev* }
%struct.ecore_dev = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_wake_info = type { i32, i64, i8*, i8* }

@OSAL_NULL = common dso_local global i32* null, align 8
@NIG_REG_WAKE_BUFFER_BB = common dso_local global i32 0, align 4
@WOL_REG_WAKE_BUFFER_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_WAKE_INFO_BB = common dso_local global i32 0, align 4
@WOL_REG_WAKE_INFO_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_WAKE_DETAILS_BB = common dso_local global i32 0, align 4
@WOL_REG_WAKE_DETAILS_K2_E5 = common dso_local global i32 0, align 4
@NIG_REG_WAKE_PKT_LEN_BB = common dso_local global i32 0, align 4
@WOL_REG_WAKE_PKT_LEN_K2_E5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"ecore_get_wake_info: REG_WAKE_INFO=0x%08x REG_WAKE_DETAILS=0x%08x REG_WAKE_PKT_LEN=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"ecore_get_wake_info: i index to 0 high=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"ecore_get_wake_info: wk_buffer[%u]: 0x%08x\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_get_wake_info(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_wake_info* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_wake_info*, align 8
  %7 = alloca %struct.ecore_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.ecore_wake_info* %2, %struct.ecore_wake_info** %6, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 0
  %13 = load %struct.ecore_dev*, %struct.ecore_dev** %12, align 8
  store %struct.ecore_dev* %13, %struct.ecore_dev** %7, align 8
  %14 = load i32*, i32** @OSAL_NULL, align 8
  store i32* %14, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %16 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @NIG_REG_WAKE_BUFFER_BB, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @WOL_REG_WAKE_BUFFER_K2_E5, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %10, align 4
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %25 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %26 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %27 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @NIG_REG_WAKE_INFO_BB, align 4
  br label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @WOL_REG_WAKE_INFO_K2_E5, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = call i8* @ecore_rd(%struct.ecore_hwfn* %24, %struct.ecore_ptt* %25, i32 %34)
  %36 = load %struct.ecore_wake_info*, %struct.ecore_wake_info** %6, align 8
  %37 = getelementptr inbounds %struct.ecore_wake_info, %struct.ecore_wake_info* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %39 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %40 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %41 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @NIG_REG_WAKE_DETAILS_BB, align 4
  br label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @WOL_REG_WAKE_DETAILS_K2_E5, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = call i8* @ecore_rd(%struct.ecore_hwfn* %38, %struct.ecore_ptt* %39, i32 %48)
  %50 = load %struct.ecore_wake_info*, %struct.ecore_wake_info** %6, align 8
  %51 = getelementptr inbounds %struct.ecore_wake_info, %struct.ecore_wake_info* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %53 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %54 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %55 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @NIG_REG_WAKE_PKT_LEN_BB, align 4
  br label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @WOL_REG_WAKE_PKT_LEN_K2_E5, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = call i8* @ecore_rd(%struct.ecore_hwfn* %52, %struct.ecore_ptt* %53, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.ecore_wake_info*, %struct.ecore_wake_info** %6, align 8
  %66 = getelementptr inbounds %struct.ecore_wake_info, %struct.ecore_wake_info* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %68 = load %struct.ecore_wake_info*, %struct.ecore_wake_info** %6, align 8
  %69 = getelementptr inbounds %struct.ecore_wake_info, %struct.ecore_wake_info* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.ecore_wake_info*, %struct.ecore_wake_info** %6, align 8
  %73 = getelementptr inbounds %struct.ecore_wake_info, %struct.ecore_wake_info* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.ecore_wake_info*, %struct.ecore_wake_info** %6, align 8
  %76 = getelementptr inbounds %struct.ecore_wake_info, %struct.ecore_wake_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (%struct.ecore_dev*, i8*, i32, ...) @DP_INFO(%struct.ecore_dev* %67, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %71, i8* %74, i32 %77)
  %79 = load %struct.ecore_wake_info*, %struct.ecore_wake_info** %6, align 8
  %80 = getelementptr inbounds %struct.ecore_wake_info, %struct.ecore_wake_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  store i32* %82, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %125, %61
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.ecore_wake_info*, %struct.ecore_wake_info** %6, align 8
  %87 = getelementptr inbounds %struct.ecore_wake_info, %struct.ecore_wake_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = udiv i64 %89, 4
  %91 = icmp ult i64 %85, %90
  br i1 %91, label %92, label %128

92:                                               ; preds = %83
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = icmp uge i64 %95, 8
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (%struct.ecore_dev*, i8*, i32, ...) @DP_INFO(%struct.ecore_dev* %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %128

101:                                              ; preds = %92
  %102 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %103 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = add i64 %105, %108
  %110 = trunc i64 %109 to i32
  %111 = call i8* @ecore_rd(%struct.ecore_hwfn* %102, %struct.ecore_ptt* %103, i32 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %112, i32* %116, align 4
  %117 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.ecore_dev*, i8*, i32, ...) @DP_INFO(%struct.ecore_dev* %117, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %123)
  br label %125

125:                                              ; preds = %101
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %83

128:                                              ; preds = %97, %83
  %129 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %130 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %131 = call i32 @ecore_wol_buffer_clear(%struct.ecore_hwfn* %129, %struct.ecore_ptt* %130)
  %132 = load i32, i32* @ECORE_SUCCESS, align 4
  ret i32 %132
}

declare dso_local i64 @ECORE_IS_BB(%struct.ecore_dev*) #1

declare dso_local i8* @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_dev*, i8*, i32, ...) #1

declare dso_local i32 @ecore_wol_buffer_clear(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
