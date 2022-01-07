; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_vm_machdep.c_cpu_copy_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_vm_machdep.c_cpu_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__, %struct.trapframe*, %struct.pcb* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.trapframe = type { i32 }
%struct.pcb = type { i8*, i8* }
%struct.frame = type { i8** }

@fork_return = common dso_local global i64 0, align 8
@fork_trampoline = common dso_local global i64 0, align 8
@SPOFF = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_copy_thread(%struct.thread* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.trapframe*, align 8
  %6 = alloca %struct.frame*, align 8
  %7 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 1
  %10 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 1
  %13 = load %struct.trapframe*, %struct.trapframe** %12, align 8
  %14 = call i32 @bcopy(%struct.trapframe* %10, %struct.trapframe* %13, i32 4)
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 2
  %17 = load %struct.pcb*, %struct.pcb** %16, align 8
  store %struct.pcb* %17, %struct.pcb** %7, align 8
  %18 = load %struct.thread*, %struct.thread** %3, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 1
  %20 = load %struct.trapframe*, %struct.trapframe** %19, align 8
  store %struct.trapframe* %20, %struct.trapframe** %5, align 8
  %21 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %22 = bitcast %struct.trapframe* %21 to %struct.frame*
  %23 = getelementptr inbounds %struct.frame, %struct.frame* %22, i64 -1
  store %struct.frame* %23, %struct.frame** %6, align 8
  %24 = load i64, i64* @fork_return, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.frame*, %struct.frame** %6, align 8
  %27 = getelementptr inbounds %struct.frame, %struct.frame* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %25, i8** %29, align 8
  %30 = load %struct.thread*, %struct.thread** %3, align 8
  %31 = bitcast %struct.thread* %30 to i8*
  %32 = load %struct.frame*, %struct.frame** %6, align 8
  %33 = getelementptr inbounds %struct.frame, %struct.frame* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  store i8* %31, i8** %35, align 8
  %36 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %37 = bitcast %struct.trapframe* %36 to i8*
  %38 = load %struct.frame*, %struct.frame** %6, align 8
  %39 = getelementptr inbounds %struct.frame, %struct.frame* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  store i8* %37, i8** %41, align 8
  %42 = load i64, i64* @fork_trampoline, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = getelementptr i8, i8* %43, i64 -8
  %45 = load %struct.pcb*, %struct.pcb** %7, align 8
  %46 = getelementptr inbounds %struct.pcb, %struct.pcb* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.frame*, %struct.frame** %6, align 8
  %48 = bitcast %struct.frame* %47 to i8*
  %49 = load i8*, i8** @SPOFF, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.pcb*, %struct.pcb** %7, align 8
  %55 = getelementptr inbounds %struct.pcb, %struct.pcb* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.thread*, %struct.thread** %3, align 8
  %57 = getelementptr inbounds %struct.thread, %struct.thread* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.thread*, %struct.thread** %3, align 8
  %60 = getelementptr inbounds %struct.thread, %struct.thread* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  ret void
}

declare dso_local i32 @bcopy(%struct.trapframe*, %struct.trapframe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
