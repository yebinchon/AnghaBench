; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_vm_machdep.c_cpu_copy_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_vm_machdep.c_cpu_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64*, i64, i64 }

@fork_return = common dso_local global i64 0, align 8
@fork_trampoline = common dso_local global i64 0, align 8
@SSTATUS_SIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_copy_thread(%struct.thread* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %5 = load %struct.thread*, %struct.thread** %4, align 8
  %6 = getelementptr inbounds %struct.thread, %struct.thread* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = call i32 @bcopy(%struct.TYPE_5__* %7, %struct.TYPE_5__* %10, i32 4)
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call i32 @bcopy(%struct.TYPE_5__* %14, %struct.TYPE_5__* %17, i32 4)
  %19 = load i64, i64* @fork_return, align 8
  %20 = load %struct.thread*, %struct.thread** %3, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 %19, i64* %25, align 8
  %26 = load %struct.thread*, %struct.thread** %3, align 8
  %27 = ptrtoint %struct.thread* %26 to i64
  %28 = load %struct.thread*, %struct.thread** %3, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  store i64 %27, i64* %33, align 8
  %34 = load i64, i64* @fork_trampoline, align 8
  %35 = load %struct.thread*, %struct.thread** %3, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i64 %34, i64* %38, align 8
  %39 = load %struct.thread*, %struct.thread** %3, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = ptrtoint %struct.TYPE_5__* %41 to i64
  %43 = load %struct.thread*, %struct.thread** %3, align 8
  %44 = getelementptr inbounds %struct.thread, %struct.thread* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i64 %42, i64* %46, align 8
  %47 = load %struct.thread*, %struct.thread** %3, align 8
  %48 = getelementptr inbounds %struct.thread, %struct.thread* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* @SSTATUS_SIE, align 4
  %51 = load %struct.thread*, %struct.thread** %3, align 8
  %52 = getelementptr inbounds %struct.thread, %struct.thread* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  ret void
}

declare dso_local i32 @bcopy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
