; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_mngr_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_mngr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_cxt_mngr* }
%struct.ecore_cxt_mngr = type { %struct.ecore_cid_acquired_map**, %struct.ecore_cid_acquired_map*, %struct.ecore_conn_type_cfg* }
%struct.ecore_cid_acquired_map = type { i32, i32 }
%struct.ecore_conn_type_cfg = type { i32, i64 }

@MAX_CONN_TYPES = common dso_local global i32 0, align 4
@BITS_PER_MAP_WORD = common dso_local global i32 0, align 4
@MAP_WORD_SIZE = common dso_local global i64 0, align 8
@COMMON_MAX_NUM_VFS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_cxt_mngr_setup(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_cxt_mngr*, align 8
  %4 = alloca %struct.ecore_cid_acquired_map*, align 8
  %5 = alloca %struct.ecore_conn_type_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 0
  %11 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %10, align 8
  store %struct.ecore_cxt_mngr* %11, %struct.ecore_cxt_mngr** %3, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %83, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MAX_CONN_TYPES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %86

16:                                               ; preds = %12
  %17 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %18 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %17, i32 0, i32 2
  %19 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %19, i64 %21
  store %struct.ecore_conn_type_cfg* %22, %struct.ecore_conn_type_cfg** %5, align 8
  %23 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %5, align 8
  %24 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %16
  %28 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %29 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %28, i32 0, i32 1
  %30 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %30, i64 %32
  store %struct.ecore_cid_acquired_map* %33, %struct.ecore_cid_acquired_map** %4, align 8
  %34 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %4, align 8
  %35 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BITS_PER_MAP_WORD, align 4
  %38 = call i64 @DIV_ROUND_UP(i32 %36, i32 %37)
  %39 = load i64, i64* @MAP_WORD_SIZE, align 8
  %40 = mul i64 %38, %39
  store i64 %40, i64* %7, align 8
  %41 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %4, align 8
  %42 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @OSAL_MEM_ZERO(i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %27, %16
  %47 = load %struct.ecore_conn_type_cfg*, %struct.ecore_conn_type_cfg** %5, align 8
  %48 = getelementptr inbounds %struct.ecore_conn_type_cfg, %struct.ecore_conn_type_cfg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %83

52:                                               ; preds = %46
  store i64 0, i64* %8, align 8
  br label %53

53:                                               ; preds = %79, %52
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @COMMON_MAX_NUM_VFS, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %59 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %58, i32 0, i32 0
  %60 = load %struct.ecore_cid_acquired_map**, %struct.ecore_cid_acquired_map*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %60, i64 %62
  %64 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %64, i64 %65
  store %struct.ecore_cid_acquired_map* %66, %struct.ecore_cid_acquired_map** %4, align 8
  %67 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %4, align 8
  %68 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BITS_PER_MAP_WORD, align 4
  %71 = call i64 @DIV_ROUND_UP(i32 %69, i32 %70)
  %72 = load i64, i64* @MAP_WORD_SIZE, align 8
  %73 = mul i64 %71, %72
  store i64 %73, i64* %7, align 8
  %74 = load %struct.ecore_cid_acquired_map*, %struct.ecore_cid_acquired_map** %4, align 8
  %75 = getelementptr inbounds %struct.ecore_cid_acquired_map, %struct.ecore_cid_acquired_map* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @OSAL_MEM_ZERO(i32 %76, i64 %77)
  br label %79

79:                                               ; preds = %57
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %53

82:                                               ; preds = %53
  br label %83

83:                                               ; preds = %82, %51
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %12

86:                                               ; preds = %12
  ret void
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @OSAL_MEM_ZERO(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
