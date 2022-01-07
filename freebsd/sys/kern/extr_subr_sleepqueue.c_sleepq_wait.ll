; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sleepqueue.c_sleepq_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sleepqueue.c_sleepq_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@TDF_SINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sleepq_wait(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %6, %struct.thread** %5, align 8
  %7 = load %struct.thread*, %struct.thread** %5, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TDF_SINTR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @MPASS(i32 %14)
  %16 = load %struct.thread*, %struct.thread** %5, align 8
  %17 = call i32 @thread_lock(%struct.thread* %16)
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @sleepq_switch(i8* %18, i32 %19)
  %21 = load %struct.thread*, %struct.thread** %5, align 8
  %22 = call i32 @thread_unlock(%struct.thread* %21)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @sleepq_switch(i8*, i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
