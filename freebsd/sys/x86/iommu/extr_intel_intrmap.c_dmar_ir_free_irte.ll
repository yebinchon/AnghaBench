; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_dmar_ir_free_irte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_dmar_ir_free_irte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"unmap: cookie %d unit %p\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"bad cookie %u %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_unit*, i64)* @dmar_ir_free_irte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_ir_free_irte(%struct.dmar_unit* %0, i64 %1) #0 {
  %3 = alloca %struct.dmar_unit*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store %struct.dmar_unit* %0, %struct.dmar_unit** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %7 = icmp ne %struct.dmar_unit* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %10 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i1 [ false, %2 ], [ %12, %8 ]
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %18 = bitcast %struct.dmar_unit* %17 to i8*
  %19 = call i32 @KASSERT(i32 %15, i8* %18)
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %22 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %28 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @KASSERT(i32 %25, i8* %30)
  %32 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %33 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %5, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @dmar_pte_clear(i32* %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @dmar_pte_clear(i32* %41)
  %43 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %44 = call i32 @DMAR_LOCK(%struct.dmar_unit* %43)
  %45 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @dmar_qi_invalidate_iec(%struct.dmar_unit* %45, i64 %46, i32 1)
  %48 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %49 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %48)
  %50 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %51 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @vmem_free(i32 %52, i64 %53, i32 1)
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @dmar_pte_clear(i32*) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_qi_invalidate_iec(%struct.dmar_unit*, i64, i32) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

declare dso_local i32 @vmem_free(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
