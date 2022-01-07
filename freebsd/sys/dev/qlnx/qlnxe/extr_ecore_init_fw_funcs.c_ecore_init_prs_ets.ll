; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_init_prs_ets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_init_prs_ets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.init_ets_req = type { i32, %struct.init_ets_tc_req* }
%struct.init_ets_tc_req = type { i64, i32, i64 }

@PRS_REG_ETS_ARB_CREDIT_WEIGHT_1 = common dso_local global i64 0, align 8
@PRS_REG_ETS_ARB_CREDIT_WEIGHT_0 = common dso_local global i64 0, align 8
@PRS_REG_ETS_ARB_CREDIT_UPPER_BOUND_1 = common dso_local global i64 0, align 8
@PRS_REG_ETS_ARB_CREDIT_UPPER_BOUND_0 = common dso_local global i64 0, align 8
@NUM_OF_TCS = common dso_local global i64 0, align 8
@PRS_REG_ETS_ARB_CLIENT_IS_STRICT = common dso_local global i64 0, align 8
@PRS_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ = common dso_local global i64 0, align 8
@PRS_ETS_MIN_WFQ_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_init_prs_ets(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.init_ets_req* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.init_ets_req*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.init_ets_tc_req*, align 8
  %14 = alloca %struct.init_ets_tc_req*, align 8
  %15 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.init_ets_req* %2, %struct.init_ets_req** %6, align 8
  store i64 4294967295, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load i64, i64* @PRS_REG_ETS_ARB_CREDIT_WEIGHT_1, align 8
  %17 = load i64, i64* @PRS_REG_ETS_ARB_CREDIT_WEIGHT_0, align 8
  %18 = sub nsw i64 %16, %17
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* @PRS_REG_ETS_ARB_CREDIT_UPPER_BOUND_1, align 8
  %20 = load i64, i64* @PRS_REG_ETS_ARB_CREDIT_UPPER_BOUND_0, align 8
  %21 = sub nsw i64 %19, %20
  store i64 %21, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %66, %3
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @NUM_OF_TCS, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %22
  %27 = load %struct.init_ets_req*, %struct.init_ets_req** %6, align 8
  %28 = getelementptr inbounds %struct.init_ets_req, %struct.init_ets_req* %27, i32 0, i32 1
  %29 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %29, i64 %30
  store %struct.init_ets_tc_req* %31, %struct.init_ets_tc_req** %13, align 8
  %32 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %13, align 8
  %33 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = load i64, i64* %10, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 1, %38
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %11, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %11, align 8
  br label %43

43:                                               ; preds = %36, %26
  %44 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %13, align 8
  %45 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %66

49:                                               ; preds = %43
  %50 = load i64, i64* %10, align 8
  %51 = trunc i64 %50 to i32
  %52 = shl i32 1, %51
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %12, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %12, align 8
  %56 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %13, align 8
  %57 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %49
  %62 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %13, align 8
  %63 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %61, %49
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %22

69:                                               ; preds = %22
  %70 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %71 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %72 = load i64, i64* @PRS_REG_ETS_ARB_CLIENT_IS_STRICT, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @ecore_wr(%struct.ecore_hwfn* %70, %struct.ecore_ptt* %71, i64 %72, i64 %73)
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %76 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %77 = load i64, i64* @PRS_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @ecore_wr(%struct.ecore_hwfn* %75, %struct.ecore_ptt* %76, i64 %77, i64 %78)
  store i64 0, i64* %10, align 8
  br label %80

80:                                               ; preds = %125, %69
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @NUM_OF_TCS, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %128

84:                                               ; preds = %80
  %85 = load %struct.init_ets_req*, %struct.init_ets_req** %6, align 8
  %86 = getelementptr inbounds %struct.init_ets_req, %struct.init_ets_req* %85, i32 0, i32 1
  %87 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %87, i64 %88
  store %struct.init_ets_tc_req* %89, %struct.init_ets_tc_req** %14, align 8
  %90 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %14, align 8
  %91 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %84
  br label %125

95:                                               ; preds = %84
  %96 = load i64, i64* @PRS_ETS_MIN_WFQ_BYTES, align 8
  %97 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %14, align 8
  %98 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = mul nsw i64 %96, %99
  %101 = load i64, i64* %9, align 8
  %102 = sdiv i64 %100, %101
  store i64 %102, i64* %15, align 8
  %103 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %104 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %105 = load i64, i64* @PRS_REG_ETS_ARB_CREDIT_WEIGHT_0, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %7, align 8
  %108 = mul i64 %106, %107
  %109 = add i64 %105, %108
  %110 = load i64, i64* %15, align 8
  %111 = call i32 @ecore_wr(%struct.ecore_hwfn* %103, %struct.ecore_ptt* %104, i64 %109, i64 %110)
  %112 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %113 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %114 = load i64, i64* @PRS_REG_ETS_ARB_CREDIT_UPPER_BOUND_0, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %8, align 8
  %117 = mul i64 %115, %116
  %118 = add i64 %114, %117
  %119 = load i64, i64* %15, align 8
  %120 = load %struct.init_ets_req*, %struct.init_ets_req** %6, align 8
  %121 = getelementptr inbounds %struct.init_ets_req, %struct.init_ets_req* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @PRS_ETS_UP_BOUND(i64 %119, i32 %122)
  %124 = call i32 @ecore_wr(%struct.ecore_hwfn* %112, %struct.ecore_ptt* %113, i64 %118, i64 %123)
  br label %125

125:                                              ; preds = %95, %94
  %126 = load i64, i64* %10, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %10, align 8
  br label %80

128:                                              ; preds = %80
  ret void
}

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64) #1

declare dso_local i64 @PRS_ETS_UP_BOUND(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
