; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_get_pf_igu_sb_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_get_pf_igu_sb_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ecore_igu_block* }
%struct.ecore_igu_block = type { i32, i64, i32 }

@ECORE_IGU_STATUS_VALID = common dso_local global i32 0, align 4
@ECORE_SB_INVALID_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ecore_hwfn*, i64)* @ecore_get_pf_igu_sb_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ecore_get_pf_igu_sb_id(%struct.ecore_hwfn* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ecore_igu_block*, align 8
  %7 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %44, %2
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @ECORE_MAPPING_MEMORY_SIZE(i32 %12)
  %14 = icmp ult i64 %9, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %21, i64 %22
  store %struct.ecore_igu_block* %23, %struct.ecore_igu_block** %6, align 8
  %24 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %6, align 8
  %25 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ECORE_IGU_STATUS_VALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %15
  %31 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %6, align 8
  %37 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %30, %15
  br label %44

42:                                               ; preds = %35
  %43 = load i64, i64* %7, align 8
  store i64 %43, i64* %3, align 8
  br label %49

44:                                               ; preds = %41
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %7, align 8
  br label %8

47:                                               ; preds = %8
  %48 = load i64, i64* @ECORE_SB_INVALID_IDX, align 8
  store i64 %48, i64* %3, align 8
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i64, i64* %3, align 8
  ret i64 %50
}

declare dso_local i64 @ECORE_MAPPING_MEMORY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
