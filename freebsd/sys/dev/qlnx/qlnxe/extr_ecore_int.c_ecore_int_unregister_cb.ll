; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_unregister_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_unregister_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_sb_sp_info* }
%struct.ecore_sb_sp_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@OSAL_NULL = common dso_local global i64 0, align 8
@ECORE_NOMEM = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_int_unregister_cb(%struct.ecore_hwfn* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ecore_sb_sp_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 0
  %9 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %8, align 8
  store %struct.ecore_sb_sp_info* %9, %struct.ecore_sb_sp_info** %6, align 8
  %10 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %6, align 8
  %11 = getelementptr inbounds %struct.ecore_sb_sp_info, %struct.ecore_sb_sp_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OSAL_NULL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load i64, i64* @OSAL_NULL, align 8
  %23 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %6, align 8
  %24 = getelementptr inbounds %struct.ecore_sb_sp_info, %struct.ecore_sb_sp_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %22, i64* %28, align 8
  %29 = load i64, i64* @OSAL_NULL, align 8
  %30 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %6, align 8
  %31 = getelementptr inbounds %struct.ecore_sb_sp_info, %struct.ecore_sb_sp_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 %29, i64* %35, align 8
  %36 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %21, %19
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
