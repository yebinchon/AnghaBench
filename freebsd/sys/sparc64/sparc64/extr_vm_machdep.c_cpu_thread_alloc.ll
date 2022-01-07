; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_vm_machdep.c_cpu_thread_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_vm_machdep.c_cpu_thread_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.pcb*, %struct.trapframe* }
%struct.pcb = type { i64 }
%struct.trapframe = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_thread_alloc(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load %struct.thread*, %struct.thread** %2, align 8
  %5 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = mul nsw i32 %9, %10
  %12 = add nsw i32 %6, %11
  %13 = sext i32 %12 to i64
  %14 = sub i64 %13, 8
  %15 = and i64 %14, -64
  %16 = inttoptr i64 %15 to %struct.pcb*
  store %struct.pcb* %16, %struct.pcb** %3, align 8
  %17 = load %struct.pcb*, %struct.pcb** %3, align 8
  %18 = getelementptr inbounds %struct.pcb, %struct.pcb* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.pcb*, %struct.pcb** %3, align 8
  %20 = bitcast %struct.pcb* %19 to %struct.trapframe*
  %21 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %20, i64 -1
  %22 = load %struct.thread*, %struct.thread** %2, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 3
  store %struct.trapframe* %21, %struct.trapframe** %23, align 8
  %24 = load %struct.pcb*, %struct.pcb** %3, align 8
  %25 = load %struct.thread*, %struct.thread** %2, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 2
  store %struct.pcb* %24, %struct.pcb** %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
