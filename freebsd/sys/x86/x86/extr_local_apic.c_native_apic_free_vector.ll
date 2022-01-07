; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_native_apic_free_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_native_apic_free_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.thread = type { i32 }

@APIC_IO_INTS = common dso_local global i64 0, align 8
@IDT_SYSCALL = common dso_local global i64 0, align 8
@APIC_NUM_IOINTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Vector %u does not map to an IRQ line\00", align 1
@num_io_irqs = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Invalid IRQ %u\00", align 1
@lapics = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"IRQ mismatch\00", align 1
@curthread = common dso_local global %struct.thread* null, align 8
@rebooting = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"apic_free_vector: Thread already bound.\0A\00", align 1
@icu_lock = common dso_local global i32 0, align 4
@IRQ_FREE = common dso_local global i64 0, align 8
@IDT_DTRACE_RET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @native_apic_free_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @native_apic_free_vector(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.thread*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @APIC_IO_INTS, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @IDT_SYSCALL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @APIC_IO_INTS, align 8
  %18 = load i64, i64* @APIC_NUM_IOINTS, align 8
  %19 = add nsw i64 %17, %18
  %20 = icmp sle i64 %16, %19
  br label %21

21:                                               ; preds = %15, %11, %3
  %22 = phi i1 [ false, %11 ], [ false, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %5, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @KASSERT(i32 %23, i8* %25)
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @num_io_irqs, align 8
  %29 = icmp slt i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %6, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %30, i8* %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lapics, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @APIC_IO_INTS, align 8
  %41 = sub nsw i64 %39, %40
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %48, %struct.thread** %7, align 8
  %49 = load i32, i32* @rebooting, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %21
  %52 = load %struct.thread*, %struct.thread** %7, align 8
  %53 = call i32 @thread_lock(%struct.thread* %52)
  %54 = load %struct.thread*, %struct.thread** %7, align 8
  %55 = call i64 @sched_is_bound(%struct.thread* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %51
  %60 = load %struct.thread*, %struct.thread** %7, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @apic_cpuid(i64 %61)
  %63 = call i32 @sched_bind(%struct.thread* %60, i32 %62)
  %64 = load %struct.thread*, %struct.thread** %7, align 8
  %65 = call i32 @thread_unlock(%struct.thread* %64)
  br label %66

66:                                               ; preds = %59, %21
  %67 = call i32 @mtx_lock_spin(i32* @icu_lock)
  %68 = load i64, i64* @IRQ_FREE, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lapics, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @APIC_IO_INTS, align 8
  %76 = sub nsw i64 %74, %75
  %77 = getelementptr inbounds i64, i64* %73, i64 %76
  store i64 %68, i64* %77, align 8
  %78 = call i32 @mtx_unlock_spin(i32* @icu_lock)
  %79 = load i32, i32* @rebooting, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %66
  %82 = load %struct.thread*, %struct.thread** %7, align 8
  %83 = call i32 @thread_lock(%struct.thread* %82)
  %84 = load %struct.thread*, %struct.thread** %7, align 8
  %85 = call i32 @sched_unbind(%struct.thread* %84)
  %86 = load %struct.thread*, %struct.thread** %7, align 8
  %87 = call i32 @thread_unlock(%struct.thread* %86)
  br label %88

88:                                               ; preds = %81, %66
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i64 @sched_is_bound(%struct.thread*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @sched_bind(%struct.thread*, i32) #1

declare dso_local i32 @apic_cpuid(i64) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @sched_unbind(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
