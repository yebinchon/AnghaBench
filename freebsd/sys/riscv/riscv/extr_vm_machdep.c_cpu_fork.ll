; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_vm_machdep.c_cpu_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_vm_machdep.c_cpu_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.thread = type { i32, %struct.TYPE_2__, %struct.trapframe*, %struct.trapframe*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.trapframe = type { i64*, i64, i64, i32, i64*, i64* }
%struct.pcb = type { i64*, i64, i64, i32, i64*, i64* }

@RFPROC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SSTATUS_SPIE = common dso_local global i32 0, align 4
@SSTATUS_SPP = common dso_local global i32 0, align 4
@fork_return = common dso_local global i64 0, align 8
@fork_trampoline = common dso_local global i64 0, align 8
@SSTATUS_SIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_fork(%struct.thread* %0, %struct.proc* %1, %struct.thread* %2, i32 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcb*, align 8
  %10 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.proc* %1, %struct.proc** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @RFPROC, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %110

16:                                               ; preds = %4
  %17 = load %struct.thread*, %struct.thread** %7, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.thread*, %struct.thread** %7, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %19, %25
  %27 = inttoptr i64 %26 to %struct.pcb*
  %28 = getelementptr inbounds %struct.pcb, %struct.pcb* %27, i64 -1
  store %struct.pcb* %28, %struct.pcb** %9, align 8
  %29 = load %struct.pcb*, %struct.pcb** %9, align 8
  %30 = bitcast %struct.pcb* %29 to %struct.trapframe*
  %31 = load %struct.thread*, %struct.thread** %7, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 3
  store %struct.trapframe* %30, %struct.trapframe** %32, align 8
  %33 = load %struct.thread*, %struct.thread** %5, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 3
  %35 = load %struct.trapframe*, %struct.trapframe** %34, align 8
  %36 = load %struct.pcb*, %struct.pcb** %9, align 8
  %37 = bitcast %struct.pcb* %36 to %struct.trapframe*
  %38 = call i32 @bcopy(%struct.trapframe* %35, %struct.trapframe* %37, i32 48)
  %39 = load %struct.pcb*, %struct.pcb** %9, align 8
  %40 = bitcast %struct.pcb* %39 to %struct.trapframe*
  %41 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %40, i64 -1
  %42 = call i64 @STACKALIGN(%struct.trapframe* %41)
  %43 = inttoptr i64 %42 to %struct.trapframe*
  store %struct.trapframe* %43, %struct.trapframe** %10, align 8
  %44 = load %struct.thread*, %struct.thread** %5, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 2
  %46 = load %struct.trapframe*, %struct.trapframe** %45, align 8
  %47 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %48 = call i32 @bcopy(%struct.trapframe* %46, %struct.trapframe* %47, i32 48)
  %49 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %50 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %49, i32 0, i32 5
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %54 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %53, i32 0, i32 4
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %58 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %57, i32 0, i32 4
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @SSTATUS_SPIE, align 4
  %62 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %63 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @SSTATUS_SPP, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %69 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %73 = load %struct.thread*, %struct.thread** %7, align 8
  %74 = getelementptr inbounds %struct.thread, %struct.thread* %73, i32 0, i32 2
  store %struct.trapframe* %72, %struct.trapframe** %74, align 8
  %75 = load i64, i64* @fork_return, align 8
  %76 = load %struct.thread*, %struct.thread** %7, align 8
  %77 = getelementptr inbounds %struct.thread, %struct.thread* %76, i32 0, i32 3
  %78 = load %struct.trapframe*, %struct.trapframe** %77, align 8
  %79 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  store i64 %75, i64* %81, align 8
  %82 = load %struct.thread*, %struct.thread** %7, align 8
  %83 = ptrtoint %struct.thread* %82 to i64
  %84 = load %struct.thread*, %struct.thread** %7, align 8
  %85 = getelementptr inbounds %struct.thread, %struct.thread* %84, i32 0, i32 3
  %86 = load %struct.trapframe*, %struct.trapframe** %85, align 8
  %87 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  store i64 %83, i64* %89, align 8
  %90 = load i64, i64* @fork_trampoline, align 8
  %91 = load %struct.thread*, %struct.thread** %7, align 8
  %92 = getelementptr inbounds %struct.thread, %struct.thread* %91, i32 0, i32 3
  %93 = load %struct.trapframe*, %struct.trapframe** %92, align 8
  %94 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %93, i32 0, i32 1
  store i64 %90, i64* %94, align 8
  %95 = load %struct.thread*, %struct.thread** %7, align 8
  %96 = getelementptr inbounds %struct.thread, %struct.thread* %95, i32 0, i32 2
  %97 = load %struct.trapframe*, %struct.trapframe** %96, align 8
  %98 = ptrtoint %struct.trapframe* %97 to i64
  %99 = load %struct.thread*, %struct.thread** %7, align 8
  %100 = getelementptr inbounds %struct.thread, %struct.thread* %99, i32 0, i32 3
  %101 = load %struct.trapframe*, %struct.trapframe** %100, align 8
  %102 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %101, i32 0, i32 2
  store i64 %98, i64* %102, align 8
  %103 = load %struct.thread*, %struct.thread** %7, align 8
  %104 = getelementptr inbounds %struct.thread, %struct.thread* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 4
  %106 = load i32, i32* @SSTATUS_SIE, align 4
  %107 = load %struct.thread*, %struct.thread** %7, align 8
  %108 = getelementptr inbounds %struct.thread, %struct.thread* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %16, %15
  ret void
}

declare dso_local i32 @bcopy(%struct.trapframe*, %struct.trapframe*, i32) #1

declare dso_local i64 @STACKALIGN(%struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
