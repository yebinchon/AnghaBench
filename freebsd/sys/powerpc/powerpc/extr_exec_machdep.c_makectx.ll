; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_makectx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_makectx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32*, i32 }
%struct.pcb = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makectx(%struct.trapframe* %0, %struct.pcb* %1) #0 {
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca %struct.pcb*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %3, align 8
  store %struct.pcb* %1, %struct.pcb** %4, align 8
  %5 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %6 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.pcb*, %struct.pcb** %4, align 8
  %9 = getelementptr inbounds %struct.pcb, %struct.pcb* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %11 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pcb*, %struct.pcb** %4, align 8
  %16 = getelementptr inbounds %struct.pcb, %struct.pcb* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
