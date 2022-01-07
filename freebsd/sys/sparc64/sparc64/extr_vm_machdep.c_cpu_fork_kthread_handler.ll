; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_vm_machdep.c_cpu_fork_kthread_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_vm_machdep.c_cpu_fork_kthread_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb* }
%struct.pcb = type { i64 }
%struct.frame = type { i8** }

@SPOFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_fork_kthread_handler(%struct.thread* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.frame*, align 8
  %8 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load %struct.pcb*, %struct.pcb** %10, align 8
  store %struct.pcb* %11, %struct.pcb** %8, align 8
  %12 = load %struct.pcb*, %struct.pcb** %8, align 8
  %13 = getelementptr inbounds %struct.pcb, %struct.pcb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SPOFF, align 8
  %16 = add nsw i64 %14, %15
  %17 = inttoptr i64 %16 to %struct.frame*
  store %struct.frame* %17, %struct.frame** %7, align 8
  %18 = load void (i8*)*, void (i8*)** %5, align 8
  %19 = bitcast void (i8*)* %18 to i8*
  %20 = load %struct.frame*, %struct.frame** %7, align 8
  %21 = getelementptr inbounds %struct.frame, %struct.frame* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  store i8* %19, i8** %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.frame*, %struct.frame** %7, align 8
  %26 = getelementptr inbounds %struct.frame, %struct.frame* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* %24, i8** %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
