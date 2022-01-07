; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_eq_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_eq_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_eq = type { i32*, %struct.ecore_chain }
%struct.ecore_chain = type { i32 }
%struct.event_ring_entry = type { i64, i32, i32, i32, i32, i32, i32 }

@ECORE_MSG_SPQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"fw_cons_idx %x\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"op %x prot %x res0 %x echo %x fwret %x flags %x\0A\00", align 1
@PROTOCOLID_ISCSI = common dso_local global i64 0, align 8
@EVENT_RING_ENTRY_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_eq_completion(%struct.ecore_hwfn* %0, i8* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ecore_eq*, align 8
  %6 = alloca %struct.ecore_chain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.event_ring_entry*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ecore_eq*
  store %struct.ecore_eq* %11, %struct.ecore_eq** %5, align 8
  %12 = load %struct.ecore_eq*, %struct.ecore_eq** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_eq, %struct.ecore_eq* %12, i32 0, i32 1
  store %struct.ecore_chain* %13, %struct.ecore_chain** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.ecore_eq*, %struct.ecore_eq** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_eq, %struct.ecore_eq* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @OSAL_LE16_TO_CPU(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %20 = load i32, i32* @ECORE_MSG_SPQ, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %19, i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ecore_chain*, %struct.ecore_chain** %6, align 8
  %25 = call i32 @ecore_chain_get_usable_per_page(%struct.ecore_chain* %24)
  %26 = and i32 %23, %25
  %27 = load %struct.ecore_chain*, %struct.ecore_chain** %6, align 8
  %28 = call i32 @ecore_chain_get_usable_per_page(%struct.ecore_chain* %27)
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load %struct.ecore_chain*, %struct.ecore_chain** %6, align 8
  %32 = call i64 @ecore_chain_get_unusable_per_page(%struct.ecore_chain* %31)
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %30, %2
  br label %38

38:                                               ; preds = %112, %37
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ecore_chain*, %struct.ecore_chain** %6, align 8
  %41 = call i32 @ecore_chain_get_cons_idx(%struct.ecore_chain* %40)
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %115

43:                                               ; preds = %38
  %44 = load %struct.ecore_chain*, %struct.ecore_chain** %6, align 8
  %45 = call %struct.event_ring_entry* @ecore_chain_consume(%struct.ecore_chain* %44)
  store %struct.event_ring_entry* %45, %struct.event_ring_entry** %9, align 8
  %46 = load %struct.event_ring_entry*, %struct.event_ring_entry** %9, align 8
  %47 = icmp ne %struct.event_ring_entry* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %49, i32* %7, align 4
  br label %115

50:                                               ; preds = %43
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %52 = load i32, i32* @ECORE_MSG_SPQ, align 4
  %53 = load %struct.event_ring_entry*, %struct.event_ring_entry** %9, align 8
  %54 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.event_ring_entry*, %struct.event_ring_entry** %9, align 8
  %57 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.event_ring_entry*, %struct.event_ring_entry** %9, align 8
  %60 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.event_ring_entry*, %struct.event_ring_entry** %9, align 8
  %63 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @OSAL_LE16_TO_CPU(i32 %64)
  %66 = load %struct.event_ring_entry*, %struct.event_ring_entry** %9, align 8
  %67 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.event_ring_entry*, %struct.event_ring_entry** %9, align 8
  %70 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %51, i32 %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %55, i64 %58, i32 %61, i32 %65, i32 %68, i32 %71)
  %73 = load %struct.event_ring_entry*, %struct.event_ring_entry** %9, align 8
  %74 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PROTOCOLID_ISCSI, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %50
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %80 = load %struct.event_ring_entry*, %struct.event_ring_entry** %9, align 8
  %81 = call i32 @ecore_iscsi_eq_dump(%struct.ecore_hwfn* %79, %struct.event_ring_entry* %80)
  br label %82

82:                                               ; preds = %78, %50
  %83 = load %struct.event_ring_entry*, %struct.event_ring_entry** %9, align 8
  %84 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @EVENT_RING_ENTRY_ASYNC, align 4
  %87 = call i64 @GET_FIELD(i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %91 = load %struct.event_ring_entry*, %struct.event_ring_entry** %9, align 8
  %92 = call i64 @ecore_async_event_completion(%struct.ecore_hwfn* %90, %struct.event_ring_entry* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %94, %89
  br label %112

97:                                               ; preds = %82
  %98 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %99 = load %struct.event_ring_entry*, %struct.event_ring_entry** %9, align 8
  %100 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.event_ring_entry*, %struct.event_ring_entry** %9, align 8
  %103 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.event_ring_entry*, %struct.event_ring_entry** %9, align 8
  %106 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %105, i32 0, i32 1
  %107 = call i64 @ecore_spq_completion(%struct.ecore_hwfn* %98, i32 %101, i32 %104, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %109, %97
  br label %112

112:                                              ; preds = %111, %96
  %113 = load %struct.ecore_chain*, %struct.ecore_chain** %6, align 8
  %114 = call i32 @ecore_chain_recycle_consumed(%struct.ecore_chain* %113)
  br label %38

115:                                              ; preds = %48, %38
  %116 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %117 = load %struct.ecore_chain*, %struct.ecore_chain** %6, align 8
  %118 = call i32 @ecore_chain_get_prod_idx(%struct.ecore_chain* %117)
  %119 = call i32 @ecore_eq_prod_update(%struct.ecore_hwfn* %116, i32 %118)
  %120 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %121 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = call i32 @OSAL_SPIN_LOCK(i32* %123)
  %125 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %126 = call i32 @ecore_spq_pend_post(%struct.ecore_hwfn* %125)
  store i32 %126, i32* %7, align 4
  %127 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %128 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = call i32 @OSAL_SPIN_UNLOCK(i32* %130)
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local i32 @OSAL_LE16_TO_CPU(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #1

declare dso_local i32 @ecore_chain_get_usable_per_page(%struct.ecore_chain*) #1

declare dso_local i64 @ecore_chain_get_unusable_per_page(%struct.ecore_chain*) #1

declare dso_local i32 @ecore_chain_get_cons_idx(%struct.ecore_chain*) #1

declare dso_local %struct.event_ring_entry* @ecore_chain_consume(%struct.ecore_chain*) #1

declare dso_local i32 @ecore_iscsi_eq_dump(%struct.ecore_hwfn*, %struct.event_ring_entry*) #1

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i64 @ecore_async_event_completion(%struct.ecore_hwfn*, %struct.event_ring_entry*) #1

declare dso_local i64 @ecore_spq_completion(%struct.ecore_hwfn*, i32, i32, i32*) #1

declare dso_local i32 @ecore_chain_recycle_consumed(%struct.ecore_chain*) #1

declare dso_local i32 @ecore_eq_prod_update(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_chain_get_prod_idx(%struct.ecore_chain*) #1

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @ecore_spq_pend_post(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
