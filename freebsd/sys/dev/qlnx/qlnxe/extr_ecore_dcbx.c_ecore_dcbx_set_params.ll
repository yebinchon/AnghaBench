; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dcbx_results = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.ecore_hwfn = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_DCBX_DSCP_DISABLED = common dso_local global i64 0, align 8
@UPDATE_DCB_DSCP = common dso_local global i32 0, align 4
@ECORE_MF_UFP_SPECIFIC = common dso_local global i32 0, align 4
@DCBX_PROTOCOL_ROCE = common dso_local global i32 0, align 4
@DORQ_REG_TAG1_OVRD_MODE = common dso_local global i32 0, align 4
@DORQ_REG_PF_PCP_BB_K2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_dcbx_results*, %struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32, i32)* @ecore_dcbx_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_dcbx_set_params(%struct.ecore_dcbx_results* %0, %struct.ecore_hwfn* %1, %struct.ecore_ptt* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ecore_dcbx_results*, align 8
  %10 = alloca %struct.ecore_hwfn*, align 8
  %11 = alloca %struct.ecore_ptt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ecore_dcbx_results* %0, %struct.ecore_dcbx_results** %9, align 8
  store %struct.ecore_hwfn* %1, %struct.ecore_hwfn** %10, align 8
  store %struct.ecore_ptt* %2, %struct.ecore_ptt** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %9, align 8
  %19 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %15, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %17, i32* %24, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %9, align 8
  %27 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %15, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %25, i32* %32, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %9, align 8
  %35 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %15, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %33, i32* %40, align 8
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @ecore_dcbx_get_dscp_value(%struct.ecore_hwfn* %41, i32 %42)
  %44 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %9, align 8
  %45 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  store i64 %43, i64* %50, align 8
  %51 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %9, align 8
  %52 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %15, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ECORE_DCBX_DSCP_DISABLED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %8
  %62 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %9, align 8
  %63 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  store i32 0, i32* %68, align 8
  %69 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %9, align 8
  %70 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  br label %85

76:                                               ; preds = %8
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %9, align 8
  %79 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  store i32 %77, i32* %84, align 8
  br label %85

85:                                               ; preds = %76, %61
  %86 = load i32, i32* @UPDATE_DCB_DSCP, align 4
  %87 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %9, align 8
  %88 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 6
  store i32 %86, i32* %93, align 8
  %94 = load i32, i32* @ECORE_MF_UFP_SPECIFIC, align 4
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %96 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = call i64 @OSAL_TEST_BIT(i32 %94, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %85
  %102 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %9, align 8
  %103 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 5
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %101, %85
  %110 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %111 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %16, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load i32, i32* %14, align 4
  %118 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %119 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  br label %121

121:                                              ; preds = %116, %109
  %122 = load i32, i32* @ECORE_MF_UFP_SPECIFIC, align 4
  %123 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %124 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = call i64 @OSAL_TEST_BIT(i32 %122, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %121
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @DCBX_PROTOCOL_ROCE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %129
  %134 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %135 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %136 = load i32, i32* @DORQ_REG_TAG1_OVRD_MODE, align 4
  %137 = call i32 @ecore_wr(%struct.ecore_hwfn* %134, %struct.ecore_ptt* %135, i32 %136, i32 1)
  %138 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %139 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %140 = load i32, i32* @DORQ_REG_PF_PCP_BB_K2, align 4
  %141 = load i32, i32* %13, align 4
  %142 = shl i32 %141, 1
  %143 = call i32 @ecore_wr(%struct.ecore_hwfn* %138, %struct.ecore_ptt* %139, i32 %140, i32 %142)
  br label %144

144:                                              ; preds = %133, %129, %121
  ret void
}

declare dso_local i64 @ecore_dcbx_get_dscp_value(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
