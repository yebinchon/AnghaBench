; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_sp_pf_update_ufp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_sp_pf_update_ufp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_spq_entry = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.ecore_hwfn = type { %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.ecore_sp_init_data = type { i32, i32, i32 }

@OSAL_NULL = common dso_local global %struct.ecore_spq_entry* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_UFP_PRI_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Invalid priority type %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_CB = common dso_local global i32 0, align 4
@COMMON_RAMROD_PF_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_UFP_PRI_OS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_sp_pf_update_ufp(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_spq_entry*, align 8
  %5 = alloca %struct.ecore_sp_init_data, align 4
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %7 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** @OSAL_NULL, align 8
  store %struct.ecore_spq_entry* %7, %struct.ecore_spq_entry** %4, align 8
  %8 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ECORE_UFP_PRI_UNKNOWN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @DP_INFO(%struct.ecore_hwfn* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %22, i32* %2, align 4
  br label %78

23:                                               ; preds = %1
  %24 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %5, i32 0, i32 12)
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %26 = call i32 @ecore_spq_get_cid(%struct.ecore_hwfn* %25)
  %27 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %5, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %5, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @ECORE_SPQ_MODE_CB, align 4
  %34 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %5, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %36 = load i32, i32* @COMMON_RAMROD_PF_UPDATE, align 4
  %37 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %38 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %35, %struct.ecore_spq_entry** %4, i32 %36, i32 %37, %struct.ecore_sp_init_data* %5)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ECORE_SUCCESS, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %23
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %78

44:                                               ; preds = %23
  %45 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %4, align 8
  %46 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %50 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ECORE_UFP_PRI_OS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %44
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %57 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55, %44
  %64 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %4, align 8
  %65 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %73

68:                                               ; preds = %55
  %69 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %4, align 8
  %70 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %75 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %4, align 8
  %76 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** @OSAL_NULL, align 8
  %77 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %74, %struct.ecore_spq_entry* %75, %struct.ecore_spq_entry* %76)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %73, %42, %15
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, i64) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_spq_get_cid(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, %struct.ecore_spq_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
