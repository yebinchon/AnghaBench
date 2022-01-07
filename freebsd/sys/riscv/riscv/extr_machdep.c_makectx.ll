; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_machdep.c_makectx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_machdep.c_makectx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pcb = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makectx(%struct.trapframe* %0, %struct.pcb* %1) #0 {
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca %struct.pcb*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %3, align 8
  store %struct.pcb* %1, %struct.pcb** %4, align 8
  %5 = load %struct.pcb*, %struct.pcb** %4, align 8
  %6 = getelementptr inbounds %struct.pcb, %struct.pcb* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %9 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @memcpy(i32 %7, i32 %10, i32 4)
  %12 = load %struct.pcb*, %struct.pcb** %4, align 8
  %13 = getelementptr inbounds %struct.pcb, %struct.pcb* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %16 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memcpy(i32 %14, i32 %17, i32 4)
  %19 = load %struct.pcb*, %struct.pcb** %4, align 8
  %20 = getelementptr inbounds %struct.pcb, %struct.pcb* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %23 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(i32 %21, i32 %24, i32 4)
  %26 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %27 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pcb*, %struct.pcb** %4, align 8
  %30 = getelementptr inbounds %struct.pcb, %struct.pcb* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %32 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pcb*, %struct.pcb** %4, align 8
  %35 = getelementptr inbounds %struct.pcb, %struct.pcb* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %37 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pcb*, %struct.pcb** %4, align 8
  %40 = getelementptr inbounds %struct.pcb, %struct.pcb* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %42 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pcb*, %struct.pcb** %4, align 8
  %45 = getelementptr inbounds %struct.pcb, %struct.pcb* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %47 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pcb*, %struct.pcb** %4, align 8
  %50 = getelementptr inbounds %struct.pcb, %struct.pcb* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
