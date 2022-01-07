; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_ipi_bitmap_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_ipi_bitmap_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.trapframe* }
%struct.trapframe = type { i32 }
%struct.TYPE_2__ = type { i32 }

@cpuid = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@cpuid_to_pcpu = common dso_local global %struct.TYPE_2__** null, align 8
@IPI_PREEMPT = common dso_local global i32 0, align 4
@IPI_AST = common dso_local global i32 0, align 4
@IPI_HARDCLOCK = common dso_local global i32 0, align 4
@ipi_ast_counts = common dso_local global i32** null, align 8
@ipi_hardclock_counts = common dso_local global i32** null, align 8
@ipi_preempt_counts = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipi_bitmap_handler(i32 %0) #0 {
  %2 = alloca %struct.trapframe, align 4
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %2, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  %8 = load i32, i32* @cpuid, align 4
  %9 = call i32 @PCPU_GET(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @critical_enter()
  %11 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %11, %struct.thread** %4, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 1
  %18 = load %struct.trapframe*, %struct.trapframe** %17, align 8
  store %struct.trapframe* %18, %struct.trapframe** %3, align 8
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 1
  store %struct.trapframe* %2, %struct.trapframe** %20, align 8
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @cpuid_to_pcpu, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @atomic_readandclear_int(i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @IPI_PREEMPT, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.thread*, %struct.thread** %4, align 8
  %35 = call i32 @sched_preempt(%struct.thread* %34)
  br label %36

36:                                               ; preds = %33, %1
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @IPI_AST, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @IPI_HARDCLOCK, align 4
  %46 = shl i32 1, %45
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (...) @hardclockintr()
  br label %51

51:                                               ; preds = %49, %43
  %52 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %53 = load %struct.thread*, %struct.thread** %4, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 1
  store %struct.trapframe* %52, %struct.trapframe** %54, align 8
  %55 = load %struct.thread*, %struct.thread** %4, align 8
  %56 = getelementptr inbounds %struct.thread, %struct.thread* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  %59 = call i32 (...) @critical_exit()
  ret void
}

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @atomic_readandclear_int(i32*) #1

declare dso_local i32 @sched_preempt(%struct.thread*) #1

declare dso_local i32 @hardclockintr(...) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
