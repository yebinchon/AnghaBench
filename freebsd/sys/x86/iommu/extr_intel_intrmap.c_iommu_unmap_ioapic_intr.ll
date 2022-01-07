; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_iommu_unmap_ioapic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_iommu_unmap_ioapic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"unmap: cookie %d unit %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_unmap_ioapic_intr(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dmar_unit*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  store i32 -1, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.dmar_unit* @dmar_find_ioapic(i32 %15, i32* null)
  store %struct.dmar_unit* %16, %struct.dmar_unit** %6, align 8
  %17 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %18 = icmp ne %struct.dmar_unit* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %21 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %13
  %25 = phi i1 [ false, %13 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %29 = bitcast %struct.dmar_unit* %28 to i8*
  %30 = call i32 @KASSERT(i32 %26, i8* %29)
  %31 = load %struct.dmar_unit*, %struct.dmar_unit** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dmar_ir_free_irte(%struct.dmar_unit* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %24, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.dmar_unit* @dmar_find_ioapic(i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @dmar_ir_free_irte(%struct.dmar_unit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
