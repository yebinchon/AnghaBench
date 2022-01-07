; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_fill_fpregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_fill_fpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.trapframe*, %struct.pcb* }
%struct.trapframe = type { i32, i32 }
%struct.pcb = type { i32 }
%struct.fpreg = type { i64*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_fpregs(%struct.thread* %0, %struct.fpreg* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.fpreg*, align 8
  %5 = alloca %struct.trapframe*, align 8
  %6 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.fpreg* %1, %struct.fpreg** %4, align 8
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 1
  %9 = load %struct.pcb*, %struct.pcb** %8, align 8
  store %struct.pcb* %9, %struct.pcb** %6, align 8
  %10 = load %struct.thread*, %struct.thread** %3, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load %struct.trapframe*, %struct.trapframe** %11, align 8
  store %struct.trapframe* %12, %struct.trapframe** %5, align 8
  %13 = load %struct.pcb*, %struct.pcb** %6, align 8
  %14 = getelementptr inbounds %struct.pcb, %struct.pcb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %17 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bcopy(i32 %15, i32 %18, i32 4)
  %20 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %21 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %24 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %26 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %29 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %31 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  store i64 0, i64* %33, align 8
  ret i32 0
}

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
