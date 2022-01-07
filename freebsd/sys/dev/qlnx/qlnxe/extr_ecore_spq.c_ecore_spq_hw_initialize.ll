; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_spq_hw_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_spq_hw_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ecore_spq = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.e4_core_conn_context = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.ecore_cxt_info = type { %struct.e4_core_conn_context*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Cannot find context info for cid=%d\0A\00", align 1
@E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_EN = common dso_local global i32 0, align 4
@E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_ACTIVE = common dso_local global i32 0, align 4
@E4_XSTORM_CORE_CONN_AG_CTX_CONSOLID_PROD_CF_EN = common dso_local global i32 0, align 4
@ECORE_E5_MISSING_CODE = common dso_local global i32 0, align 4
@PQ_FLAGS_LB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_spq*)* @ecore_spq_hw_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_spq_hw_initialize(%struct.ecore_hwfn* %0, %struct.ecore_spq* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_spq*, align 8
  %5 = alloca %struct.e4_core_conn_context*, align 8
  %6 = alloca %struct.ecore_cxt_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_spq* %1, %struct.ecore_spq** %4, align 8
  %9 = load %struct.ecore_spq*, %struct.ecore_spq** %4, align 8
  %10 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.ecore_cxt_info, %struct.ecore_cxt_info* %6, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %14 = call i32 @ecore_cxt_get_cid_info(%struct.ecore_hwfn* %13, %struct.ecore_cxt_info* %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ult i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %19 = load %struct.ecore_spq*, %struct.ecore_spq** %4, align 8
  %20 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %18, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %96

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.ecore_cxt_info, %struct.ecore_cxt_info* %6, i32 0, i32 0
  %25 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %24, align 8
  store %struct.e4_core_conn_context* %25, %struct.e4_core_conn_context** %5, align 8
  %26 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %5, align 8
  %27 = call i32 @OSAL_MEM_ZERO(%struct.e4_core_conn_context* %26, i32 28)
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @ECORE_IS_BB(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %23
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %35 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @ECORE_IS_AH(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %33, %23
  %40 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %5, align 8
  %41 = getelementptr inbounds %struct.e4_core_conn_context, %struct.e4_core_conn_context* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_EN, align 4
  %45 = call i32 @SET_FIELD(i32 %43, i32 %44, i32 1)
  %46 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %5, align 8
  %47 = getelementptr inbounds %struct.e4_core_conn_context, %struct.e4_core_conn_context* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @E4_XSTORM_CORE_CONN_AG_CTX_DQ_CF_ACTIVE, align 4
  %51 = call i32 @SET_FIELD(i32 %49, i32 %50, i32 1)
  %52 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %5, align 8
  %53 = getelementptr inbounds %struct.e4_core_conn_context, %struct.e4_core_conn_context* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @E4_XSTORM_CORE_CONN_AG_CTX_CONSOLID_PROD_CF_EN, align 4
  %57 = call i32 @SET_FIELD(i32 %55, i32 %56, i32 1)
  br label %60

58:                                               ; preds = %33
  %59 = load i32, i32* @ECORE_E5_MISSING_CODE, align 4
  br label %60

60:                                               ; preds = %58, %39
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %62 = load i32, i32* @PQ_FLAGS_LB, align 4
  %63 = call i32 @ecore_get_cm_pq_idx(%struct.ecore_hwfn* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @OSAL_CPU_TO_LE16(i32 %64)
  %66 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %5, align 8
  %67 = getelementptr inbounds %struct.e4_core_conn_context, %struct.e4_core_conn_context* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.ecore_spq*, %struct.ecore_spq** %4, align 8
  %70 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @DMA_LO_LE(i32 %72)
  %74 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %5, align 8
  %75 = getelementptr inbounds %struct.e4_core_conn_context, %struct.e4_core_conn_context* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 4
  %77 = load %struct.ecore_spq*, %struct.ecore_spq** %4, align 8
  %78 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @DMA_HI_LE(i32 %80)
  %82 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %5, align 8
  %83 = getelementptr inbounds %struct.e4_core_conn_context, %struct.e4_core_conn_context* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.e4_core_conn_context*, %struct.e4_core_conn_context** %5, align 8
  %86 = getelementptr inbounds %struct.e4_core_conn_context, %struct.e4_core_conn_context* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %90 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @DMA_REGPAIR_LE(i32 %88, i32 %94)
  br label %96

96:                                               ; preds = %60, %17
  ret void
}

declare dso_local i32 @ecore_cxt_get_cid_info(%struct.ecore_hwfn*, %struct.ecore_cxt_info*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @OSAL_MEM_ZERO(%struct.e4_core_conn_context*, i32) #1

declare dso_local i64 @ECORE_IS_BB(i32) #1

declare dso_local i64 @ECORE_IS_AH(i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ecore_get_cm_pq_idx(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @DMA_LO_LE(i32) #1

declare dso_local i32 @DMA_HI_LE(i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
