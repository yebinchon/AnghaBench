; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_fini_qi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_fini_qi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i64, i64, i64, i64, i32, i32*, i32 }
%struct.dmar_qi_genseq = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"dmar%d: waiters on disabled queue\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_fini_qi(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  %3 = alloca %struct.dmar_qi_genseq, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  %4 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %5 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %62

9:                                                ; preds = %1
  %10 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %11 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %14 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %13, i32 0, i32 6
  %15 = call i32 @taskqueue_drain(i32* %12, i32* %14)
  %16 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %17 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @taskqueue_free(i32* %18)
  %20 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %21 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %20, i32 0, i32 5
  store i32* null, i32** %21, align 8
  %22 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %23 = call i32 @DMAR_LOCK(%struct.dmar_unit* %22)
  %24 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %25 = call i32 @dmar_qi_ensure(%struct.dmar_unit* %24, i32 1)
  %26 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %27 = call i32 @dmar_qi_emit_wait_seq(%struct.dmar_unit* %26, %struct.dmar_qi_genseq* %3, i32 1)
  %28 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %29 = call i32 @dmar_qi_advance_tail(%struct.dmar_unit* %28)
  %30 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %31 = call i32 @dmar_qi_wait_for_seq(%struct.dmar_unit* %30, %struct.dmar_qi_genseq* %3, i32 0)
  %32 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %33 = call i32 @dmar_disable_qi_intr(%struct.dmar_unit* %32)
  %34 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %35 = call i32 @dmar_disable_qi(%struct.dmar_unit* %34)
  %36 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %37 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %42 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @KASSERT(i32 %40, i8* %45)
  %47 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %48 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %47)
  %49 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %50 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %53 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @kmem_free(i64 %51, i64 %54)
  %56 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %57 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %59 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %61 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_qi_ensure(%struct.dmar_unit*, i32) #1

declare dso_local i32 @dmar_qi_emit_wait_seq(%struct.dmar_unit*, %struct.dmar_qi_genseq*, i32) #1

declare dso_local i32 @dmar_qi_advance_tail(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_qi_wait_for_seq(%struct.dmar_unit*, %struct.dmar_qi_genseq*, i32) #1

declare dso_local i32 @dmar_disable_qi_intr(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_disable_qi(%struct.dmar_unit*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

declare dso_local i32 @kmem_free(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
