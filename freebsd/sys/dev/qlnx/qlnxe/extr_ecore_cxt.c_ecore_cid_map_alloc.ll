; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cid_map_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cid_map_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_cxt_mngr* }
%struct.ecore_cxt_mngr = type { %struct.ecore_cid_acquired_map**, %struct.ecore_cid_acquired_map*, %struct.ecore_conn_type_cfg* }
%struct.ecore_cid_acquired_map = type { i32 }
%struct.ecore_conn_type_cfg = type { i64, i64 }

@MAX_CONN_TYPES = common dso_local global i64 0, align 8
@COMMON_MAX_NUM_VFS = common dso_local global i64 0, align 8
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*)* @ecore_cid_map_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_cid_map_alloc(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_cxt_mngr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ecore_conn_type_cfg*, align 8
  %10 = alloca %struct.ecore_cid_acquired_map*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 0
  %13 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %12, align 8
  store %struct.ecore_cxt_mngr* %13, %struct.ecore_cxt_mngr** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %78, %1
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @MAX_CONN_TYPES, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %81

18:                                               ; preds = %14
  %19 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %4, align 8
  %20 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %19, i32 0, i32 2
  %21 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %21, i64 %22
  store %struct.ecore_conn_type_cfg* %23, %struct.ecore_conn_type_cfg** %9, align 8
  %24 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %4, align 8
  %25 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %24, i32 0, i32 1
  %26 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %26, i64 %27
  store %struct.ecore_cid_acquired_map* %28, %struct.ecore_cid_acquired_map** %10, align 8
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %9, align 8
  %33 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %10, align 8
  %36 = call i64 @ecore_cid_map_alloc_single(%struct.ecore_hwfn* %29, i64 %30, i64 %31, i64 %34, %struct.ecore_cid_acquired_map* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  br label %83

39:                                               ; preds = %18
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %64, %39
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @COMMON_MAX_NUM_VFS, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %4, align 8
  %46 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %45, i32 0, i32 0
  %47 = load %struct.ecore_cid_acquired_map**, %struct.ecore_cid_acquired_map*** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %47, i64 %48
  %50 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %50, i64 %51
  store %struct.ecore_cid_acquired_map* %52, %struct.ecore_cid_acquired_map** %10, align 8
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %9, align 8
  %57 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %10, align 8
  %60 = call i64 @ecore_cid_map_alloc_single(%struct.ecore_hwfn* %53, i64 %54, i64 %55, i64 %58, %struct.ecore_cid_acquired_map* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %44
  br label %83

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %8, align 8
  br label %40

67:                                               ; preds = %40
  %68 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %9, align 8
  %69 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %5, align 8
  %73 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %9, align 8
  %74 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %67
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %7, align 8
  br label %14

81:                                               ; preds = %14
  %82 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %82, i32* %2, align 4
  br label %87

83:                                               ; preds = %62, %38
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %85 = call i32 @ecore_cid_map_free(%struct.ecore_hwfn* %84)
  %86 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %81
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i64 @ecore_cid_map_alloc_single(%struct.ecore_hwfn*, i64, i64, i64, %struct.ecore_cid_acquired_map*) #1

declare dso_local i32 @ecore_cid_map_free(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
