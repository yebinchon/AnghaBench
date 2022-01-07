; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_iommu_alloc_msi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_iommu_alloc_msi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@M_FIRSTFIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"impossible EOPNOTSUPP from vmem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_alloc_msi_intr(i32 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dmar_unit*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.dmar_unit* @dmar_ir_find(i32 %13, i32* null, i32* null)
  store %struct.dmar_unit* %14, %struct.dmar_unit** %8, align 8
  %15 = load %struct.dmar_unit*, %struct.dmar_unit** %8, align 8
  %16 = icmp eq %struct.dmar_unit* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.dmar_unit*, %struct.dmar_unit** %8, align 8
  %19 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %17, %3
  store i64 0, i64* %11, align 8
  br label %23

23:                                               ; preds = %31, %22
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 -1, i64* %30, align 8
  br label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %11, align 8
  br label %23

34:                                               ; preds = %23
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %35, i32* %4, align 4
  br label %71

36:                                               ; preds = %17
  %37 = load %struct.dmar_unit*, %struct.dmar_unit** %8, align 8
  %38 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* @M_FIRSTFIT, align 4
  %42 = load i32, i32* @M_NOWAIT, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @vmem_alloc(i32 %39, i64 %40, i32 %43, i64* %9)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = icmp ne i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @KASSERT(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %4, align 4
  br label %71

54:                                               ; preds = %36
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %56

56:                                               ; preds = %67, %54
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add i64 %61, %62
  %64 = load i64*, i64** %6, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %63, i64* %66, align 8
  br label %67

67:                                               ; preds = %60
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %11, align 8
  br label %56

70:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %47, %34
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.dmar_unit* @dmar_ir_find(i32, i32*, i32*) #1

declare dso_local i32 @vmem_alloc(i32, i64, i32, i64*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
