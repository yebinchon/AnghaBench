; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_fault.c_dmar_fini_fault_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_fault.c_dmar_fini_fault_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i64, i64, i32*, i32, i32*, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_fini_fault_log(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  %3 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %4 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %41

8:                                                ; preds = %1
  %9 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %10 = call i32 @DMAR_LOCK(%struct.dmar_unit* %9)
  %11 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %12 = call i32 @dmar_disable_fault_intr(%struct.dmar_unit* %11)
  %13 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %14 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %13)
  %15 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %16 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %19 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %18, i32 0, i32 5
  %20 = call i32 @taskqueue_drain(i32* %17, i32* %19)
  %21 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %22 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @taskqueue_free(i32* %23)
  %25 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %26 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %25, i32 0, i32 4
  store i32* null, i32** %26, align 8
  %27 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %28 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %27, i32 0, i32 3
  %29 = call i32 @mtx_destroy(i32* %28)
  %30 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %31 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @M_DEVBUF, align 4
  %34 = call i32 @free(i32* %32, i32 %33)
  %35 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %36 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %38 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %40 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_disable_fault_intr(%struct.dmar_unit*) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
