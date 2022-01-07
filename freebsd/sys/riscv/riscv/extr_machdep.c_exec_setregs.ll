; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_machdep.c_exec_setregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_machdep.c_exec_setregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb*, %struct.trapframe* }
%struct.pcb = type { i32 }
%struct.trapframe = type { i32, i32, i32, i32* }
%struct.image_params = type { i32 }

@PCB_FP_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_setregs(%struct.thread* %0, %struct.image_params* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.image_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.image_params* %1, %struct.image_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 1
  %11 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  store %struct.trapframe* %11, %struct.trapframe** %7, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load %struct.pcb*, %struct.pcb** %13, align 8
  store %struct.pcb* %14, %struct.pcb** %8, align 8
  %15 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %16 = call i32 @memset(%struct.trapframe* %15, i32 0, i32 24)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %19 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @STACKALIGN(i32 %22)
  %24 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %25 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.image_params*, %struct.image_params** %5, align 8
  %27 = getelementptr inbounds %struct.image_params, %struct.image_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %30 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.image_params*, %struct.image_params** %5, align 8
  %32 = getelementptr inbounds %struct.image_params, %struct.image_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %35 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @PCB_FP_STARTED, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.pcb*, %struct.pcb** %8, align 8
  %39 = getelementptr inbounds %struct.pcb, %struct.pcb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  ret void
}

declare dso_local i32 @memset(%struct.trapframe*, i32, i32) #1

declare dso_local i32 @STACKALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
