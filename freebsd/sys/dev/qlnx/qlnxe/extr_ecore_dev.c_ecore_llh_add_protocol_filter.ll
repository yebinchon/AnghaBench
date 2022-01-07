; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_add_protocol_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_add_protocol_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ptt = type { i32 }
%struct.ecore_dev = type { i32 }
%struct.ecore_hwfn = type { i32 }
%union.ecore_llh_filter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global %struct.ecore_ptt* null, align 8
@ECORE_AGAIN = common dso_local global i32 0, align 4
@ECORE_MF_LLH_PROTO_CLSS = common dso_local global i32 0, align 4
@ECORE_LLH_FILTER_TYPE_PROTOCOL = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"LLH: Added protocol filter [%s] to ppfid %hhd [abs %hhd] at idx %hhd [ref_cnt %d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"LLH: Failed to add protocol filter [%s] to ppfid %hhd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_llh_add_protocol_filter(%struct.ecore_dev* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ecore_hwfn*, align 8
  %13 = alloca %struct.ecore_ptt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [32 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca %union.ecore_llh_filter, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %23 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %24 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev* %23)
  store %struct.ecore_hwfn* %24, %struct.ecore_hwfn** %12, align 8
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %12, align 8
  %26 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %25)
  store %struct.ecore_ptt* %26, %struct.ecore_ptt** %13, align 8
  %27 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %27, i32* %22, align 4
  %28 = load %struct.ecore_ptt*, %struct.ecore_ptt** %13, align 8
  %29 = load %struct.ecore_ptt*, %struct.ecore_ptt** @OSAL_NULL, align 8
  %30 = icmp eq %struct.ecore_ptt* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %32, i32* %6, align 4
  br label %126

33:                                               ; preds = %5
  %34 = load i32, i32* @ECORE_MF_LLH_PROTO_CLSS, align 4
  %35 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %36 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %35, i32 0, i32 0
  %37 = call i32 @OSAL_TEST_BIT(i32 %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %121

40:                                               ; preds = %33
  %41 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %46 = call i32 @ecore_llh_protocol_filter_stringify(%struct.ecore_dev* %41, i32 %42, i8* %43, i8* %44, i32* %45, i32 128)
  store i32 %46, i32* %22, align 4
  %47 = load i32, i32* %22, align 4
  %48 = load i32, i32* @ECORE_SUCCESS, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %116

51:                                               ; preds = %40
  %52 = call i32 @OSAL_MEM_ZERO(%union.ecore_llh_filter* %18, i32 24)
  %53 = load i32, i32* %9, align 4
  %54 = bitcast %union.ecore_llh_filter* %18 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = bitcast %union.ecore_llh_filter* %18 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = bitcast %union.ecore_llh_filter* %18 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ECORE_LLH_FILTER_TYPE_PROTOCOL, align 4
  %65 = call i32 @ecore_llh_shadow_add_filter(%struct.ecore_dev* %62, i32 %63, i32 %64, %union.ecore_llh_filter* %18, i32* %14, i32* %21)
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %22, align 4
  %67 = load i32, i32* @ECORE_SUCCESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %51
  br label %116

70:                                               ; preds = %51
  %71 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @ecore_abs_ppfid(%struct.ecore_dev* %71, i32 %72, i32* %15)
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* @ECORE_SUCCESS, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %116

78:                                               ; preds = %70
  %79 = load i32, i32* %21, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %107

81:                                               ; preds = %78
  %82 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @ecore_llh_protocol_filter_to_hilo(%struct.ecore_dev* %82, i32 %83, i8* %84, i8* %85, i32* %19, i32* %20)
  store i32 %86, i32* %22, align 4
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* @ECORE_SUCCESS, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %116

91:                                               ; preds = %81
  %92 = load i32, i32* %9, align 4
  %93 = shl i32 1, %92
  store i32 %93, i32* %17, align 4
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %12, align 8
  %95 = load %struct.ecore_ptt*, %struct.ecore_ptt** %13, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %20, align 4
  %101 = call i32 @ecore_llh_add_filter(%struct.ecore_hwfn* %94, %struct.ecore_ptt* %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %22, align 4
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* @ECORE_SUCCESS, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %91
  br label %116

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106, %78
  %108 = load %struct.ecore_dev*, %struct.ecore_dev** %7, align 8
  %109 = load i32, i32* @ECORE_MSG_SP, align 4
  %110 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %21, align 4
  %115 = call i32 @DP_VERBOSE(%struct.ecore_dev* %108, i32 %109, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32* %110, i32 %111, i32 %112, i32 %113, i32 %114)
  br label %121

116:                                              ; preds = %105, %90, %77, %69, %50
  %117 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %12, align 8
  %118 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %117, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %116, %107, %39
  %122 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %12, align 8
  %123 = load %struct.ecore_ptt*, %struct.ecore_ptt** %13, align 8
  %124 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %122, %struct.ecore_ptt* %123)
  %125 = load i32, i32* %22, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %121, %31
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ecore_llh_protocol_filter_stringify(%struct.ecore_dev*, i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @OSAL_MEM_ZERO(%union.ecore_llh_filter*, i32) #1

declare dso_local i32 @ecore_llh_shadow_add_filter(%struct.ecore_dev*, i32, i32, %union.ecore_llh_filter*, i32*, i32*) #1

declare dso_local i32 @ecore_abs_ppfid(%struct.ecore_dev*, i32, i32*) #1

declare dso_local i32 @ecore_llh_protocol_filter_to_hilo(%struct.ecore_dev*, i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @ecore_llh_add_filter(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_dev*, i32, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32*, i32) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
