; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_fault.c_dmar_init_fault_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_fault.c_dmar_init_fault_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"dmarflt\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"hw.dmar.fault_log_size\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"hw.dmar_fault_log_size must be even\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@dmar_fault_task = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"dmarff\00", align 1
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_AV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"dmar%d fault taskq\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_init_fault_log(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  %3 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %4 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %3, i32 0, i32 5
  %5 = load i32, i32* @MTX_SPIN, align 4
  %6 = call i32 @mtx_init(i32* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %5)
  %7 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %8 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %7, i32 0, i32 0
  store i32 256, i32* %8, align 4
  %9 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %10 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %9, i32 0, i32 0
  %11 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %12 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %13 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = srem i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %1
  %20 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %21 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @M_DEVBUF, align 4
  %27 = load i32, i32* @M_WAITOK, align 4
  %28 = load i32, i32* @M_ZERO, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @malloc(i32 %25, i32 %26, i32 %29)
  %31 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %32 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %34 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %33, i32 0, i32 3
  %35 = load i32, i32* @dmar_fault_task, align 4
  %36 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %37 = call i32 @TASK_INIT(i32* %34, i32 0, i32 %35, %struct.dmar_unit* %36)
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %40 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %41 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %40, i32 0, i32 2
  %42 = call i32 @taskqueue_create_fast(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %39, i32* %41)
  %43 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %44 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %46 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %45, i32 0, i32 2
  %47 = load i32, i32* @PI_AV, align 4
  %48 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %49 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @taskqueue_start_threads(i32* %46, i32 1, i32 %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %53 = call i32 @DMAR_LOCK(%struct.dmar_unit* %52)
  %54 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %55 = call i32 @dmar_disable_fault_intr(%struct.dmar_unit* %54)
  %56 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %57 = call i32 @dmar_clear_faults(%struct.dmar_unit* %56)
  %58 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %59 = call i32 @dmar_enable_fault_intr(%struct.dmar_unit* %58)
  %60 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %61 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %60)
  ret i32 0
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.dmar_unit*) #1

declare dso_local i32 @taskqueue_create_fast(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_disable_fault_intr(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_clear_faults(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_enable_fault_intr(%struct.dmar_unit*) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
