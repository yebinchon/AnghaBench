; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_set_fpregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_set_fpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.trapframe*, %struct.pcb* }
%struct.trapframe = type { i32, i32, i32 }
%struct.pcb = type { i32 }
%struct.fpreg = type { i32, i32, i32 }

@FPRS_FEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_fpregs(%struct.thread* %0, %struct.fpreg* %1) #0 {
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
  %13 = load i32, i32* @FPRS_FEF, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %16 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %20 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pcb*, %struct.pcb** %6, align 8
  %23 = getelementptr inbounds %struct.pcb, %struct.pcb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bcopy(i32 %21, i32 %24, i32 4)
  %26 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %27 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %30 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %32 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %35 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  ret i32 0
}

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
