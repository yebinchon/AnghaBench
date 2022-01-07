; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_spq_hw_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_spq_hw_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ecore_chain }
%struct.ecore_chain = type { i32 }
%struct.ecore_spq = type { i32, i32, %struct.core_db_data }
%struct.core_db_data = type { i32, i32, i8* }
%struct.ecore_spq_entry = type { %struct.slow_path_element }
%struct.slow_path_element = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [34 x i8] c"Failed to produce from SPQ chain\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_MSG_SPQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"Doorbelled [0x%08x, CID 0x%08x] with Flags: %02x agg_params: %02x, prod: %04x\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_spq*, %struct.ecore_spq_entry*)* @ecore_spq_hw_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_spq_hw_post(%struct.ecore_hwfn* %0, %struct.ecore_spq* %1, %struct.ecore_spq_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_spq*, align 8
  %7 = alloca %struct.ecore_spq_entry*, align 8
  %8 = alloca %struct.ecore_chain*, align 8
  %9 = alloca %struct.core_db_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.slow_path_element*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_spq* %1, %struct.ecore_spq** %6, align 8
  store %struct.ecore_spq_entry* %2, %struct.ecore_spq_entry** %7, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.ecore_chain* %15, %struct.ecore_chain** %8, align 8
  %16 = load %struct.ecore_spq*, %struct.ecore_spq** %6, align 8
  %17 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %16, i32 0, i32 2
  store %struct.core_db_data* %17, %struct.core_db_data** %9, align 8
  %18 = load %struct.ecore_chain*, %struct.ecore_chain** %8, align 8
  %19 = call i32 @ecore_chain_get_prod_idx(%struct.ecore_chain* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i8* @OSAL_CPU_TO_LE16(i32 %20)
  %22 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %7, align 8
  %23 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.slow_path_element, %struct.slow_path_element* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i8* %21, i8** %25, align 8
  %26 = load %struct.ecore_chain*, %struct.ecore_chain** %8, align 8
  %27 = call %struct.slow_path_element* @ecore_chain_produce(%struct.ecore_chain* %26)
  store %struct.slow_path_element* %27, %struct.slow_path_element** %11, align 8
  %28 = load %struct.slow_path_element*, %struct.slow_path_element** %11, align 8
  %29 = icmp ne %struct.slow_path_element* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %3
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %32 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %31, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %33, i32* %4, align 4
  br label %79

34:                                               ; preds = %3
  %35 = load %struct.slow_path_element*, %struct.slow_path_element** %11, align 8
  %36 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %7, align 8
  %37 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %36, i32 0, i32 0
  %38 = bitcast %struct.slow_path_element* %35 to i8*
  %39 = bitcast %struct.slow_path_element* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 8, i1 false)
  %40 = load %struct.ecore_chain*, %struct.ecore_chain** %8, align 8
  %41 = call i32 @ecore_chain_get_prod_idx(%struct.ecore_chain* %40)
  %42 = call i8* @OSAL_CPU_TO_LE16(i32 %41)
  %43 = load %struct.core_db_data*, %struct.core_db_data** %9, align 8
  %44 = getelementptr inbounds %struct.core_db_data, %struct.core_db_data* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %46 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @OSAL_WMB(i32 %47)
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %50 = load %struct.ecore_spq*, %struct.ecore_spq** %6, align 8
  %51 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.core_db_data*, %struct.core_db_data** %9, align 8
  %54 = bitcast %struct.core_db_data* %53 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DOORBELL(%struct.ecore_hwfn* %49, i32 %52, i32 %55)
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %58 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @OSAL_WMB(i32 %59)
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %62 = load i32, i32* @ECORE_MSG_SPQ, align 4
  %63 = load %struct.ecore_spq*, %struct.ecore_spq** %6, align 8
  %64 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ecore_spq*, %struct.ecore_spq** %6, align 8
  %67 = getelementptr inbounds %struct.ecore_spq, %struct.ecore_spq* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.core_db_data*, %struct.core_db_data** %9, align 8
  %70 = getelementptr inbounds %struct.core_db_data, %struct.core_db_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.core_db_data*, %struct.core_db_data** %9, align 8
  %73 = getelementptr inbounds %struct.core_db_data, %struct.core_db_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ecore_chain*, %struct.ecore_chain** %8, align 8
  %76 = call i32 @ecore_chain_get_prod_idx(%struct.ecore_chain* %75)
  %77 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %61, i32 %62, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68, i32 %71, i32 %74, i32 %76)
  %78 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %34, %30
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @ecore_chain_get_prod_idx(%struct.ecore_chain*) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i32) #1

declare dso_local %struct.slow_path_element* @ecore_chain_produce(%struct.ecore_chain*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @OSAL_WMB(i32) #1

declare dso_local i32 @DOORBELL(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
