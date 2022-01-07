; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_flush_for_ctx_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_flush_for_ctx_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32, i64 }

@DMAR_CAP_CM = common dso_local global i32 0, align 4
@DMAR_ECAP_DI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_unit*, i32)* @dmar_flush_for_ctx_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_flush_for_ctx_entry(%struct.dmar_unit* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmar_unit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %8 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @DMAR_CAP_CM, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %58

17:                                               ; preds = %13, %2
  %18 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %19 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %24 = call i32 @dmar_qi_invalidate_ctx_glob_locked(%struct.dmar_unit* %23)
  %25 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %26 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DMAR_ECAP_DI, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %22
  %35 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %36 = call i32 @dmar_qi_invalidate_iotlb_glob_locked(%struct.dmar_unit* %35)
  br label %37

37:                                               ; preds = %34, %31
  store i32 0, i32* %3, align 4
  br label %58

38:                                               ; preds = %17
  %39 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %40 = call i32 @dmar_inv_ctx_glob(%struct.dmar_unit* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %45 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DMAR_ECAP_DI, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %43
  %54 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %55 = call i32 @dmar_inv_iotlb_glob(%struct.dmar_unit* %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %50, %38
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %37, %16
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @dmar_qi_invalidate_ctx_glob_locked(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_qi_invalidate_iotlb_glob_locked(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_inv_ctx_glob(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_inv_iotlb_glob(%struct.dmar_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
