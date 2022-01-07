; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_init_busdma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_init_busdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"hw.dmar.dma\00", align 1
@dmar_bus_task_dmamap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dmar\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_DISK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"dmar%d busdma taskq\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_init_busdma(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  %3 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %4 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %3, i32 0, i32 0
  store i32 1, i32* %4, align 4
  %5 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %6 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %5, i32 0, i32 0
  %7 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %6)
  %8 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %9 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %8, i32 0, i32 4
  %10 = call i32 @TAILQ_INIT(i32* %9)
  %11 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %12 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %11, i32 0, i32 3
  %13 = load i32, i32* @dmar_bus_task_dmamap, align 4
  %14 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %15 = call i32 @TASK_INIT(i32* %12, i32 0, i32 %13, %struct.dmar_unit* %14)
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %18 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %19 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %18, i32 0, i32 2
  %20 = call i32 @taskqueue_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17, i32* %19)
  %21 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %22 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %24 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %23, i32 0, i32 2
  %25 = load i32, i32* @PI_DISK, align 4
  %26 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %27 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @taskqueue_start_threads(i32* %24, i32 1, i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  ret i32 0
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.dmar_unit*) #1

declare dso_local i32 @taskqueue_create(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
