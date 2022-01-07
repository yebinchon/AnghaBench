; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_cpu_copy_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_cpu_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_8__, %struct.trapframe*, %struct.trapframe* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.trapframe = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i8*, i8**, i8*, i8*, i64* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.pcb = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i8*, i8**, i8*, i8*, i64* }
%struct.callframe = type { i8*, i8*, i8* }

@FIRSTARG = common dso_local global i64 0, align 8
@fork_return = common dso_local global i64 0, align 8
@fork_trampoline = common dso_local global i64 0, align 8
@psl_kernset = common dso_local global i32 0, align 4
@SPEFSCR_FDBZE = common dso_local global i32 0, align 4
@SPEFSCR_FINVE = common dso_local global i32 0, align 4
@SPEFSCR_FOVFE = common dso_local global i32 0, align 4
@SPEFSCR_FUNFE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_copy_thread(%struct.thread* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.pcb*, align 8
  %6 = alloca %struct.trapframe*, align 8
  %7 = alloca %struct.callframe*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 2
  %10 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %11 = bitcast %struct.trapframe* %10 to %struct.pcb*
  store %struct.pcb* %11, %struct.pcb** %5, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 2
  %14 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %15 = load %struct.pcb*, %struct.pcb** %5, align 8
  %16 = bitcast %struct.pcb* %15 to %struct.trapframe*
  %17 = call i32 @bcopy(%struct.trapframe* %14, %struct.trapframe* %16, i32 56)
  %18 = load %struct.thread*, %struct.thread** %3, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 1
  %20 = load %struct.trapframe*, %struct.trapframe** %19, align 8
  store %struct.trapframe* %20, %struct.trapframe** %6, align 8
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 1
  %23 = load %struct.trapframe*, %struct.trapframe** %22, align 8
  %24 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %25 = call i32 @bcopy(%struct.trapframe* %23, %struct.trapframe* %24, i32 56)
  %26 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %27 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %26, i32 0, i32 7
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @FIRSTARG, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 0, i64* %30, align 8
  %31 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %32 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %31, i32 0, i32 7
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @FIRSTARG, align 8
  %35 = add i64 %34, 1
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 0, i64* %36, align 8
  %37 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %38 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, -268435457
  store i32 %40, i32* %38, align 8
  %41 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %42 = bitcast %struct.trapframe* %41 to %struct.callframe*
  %43 = getelementptr inbounds %struct.callframe, %struct.callframe* %42, i64 -1
  store %struct.callframe* %43, %struct.callframe** %7, align 8
  %44 = load %struct.callframe*, %struct.callframe** %7, align 8
  %45 = call i32 @memset(%struct.callframe* %44, i32 0, i32 24)
  %46 = load i64, i64* @fork_return, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.callframe*, %struct.callframe** %7, align 8
  %49 = getelementptr inbounds %struct.callframe, %struct.callframe* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.thread*, %struct.thread** %3, align 8
  %51 = bitcast %struct.thread* %50 to i8*
  %52 = load %struct.callframe*, %struct.callframe** %7, align 8
  %53 = getelementptr inbounds %struct.callframe, %struct.callframe* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %55 = bitcast %struct.trapframe* %54 to i8*
  %56 = load %struct.callframe*, %struct.callframe** %7, align 8
  %57 = getelementptr inbounds %struct.callframe, %struct.callframe* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.callframe*, %struct.callframe** %7, align 8
  %59 = bitcast %struct.callframe* %58 to i8*
  %60 = load %struct.pcb*, %struct.pcb** %5, align 8
  %61 = getelementptr inbounds %struct.pcb, %struct.pcb* %60, i32 0, i32 6
  store i8* %59, i8** %61, align 8
  %62 = load i64, i64* @fork_trampoline, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.pcb*, %struct.pcb** %5, align 8
  %65 = getelementptr inbounds %struct.pcb, %struct.pcb* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.pcb*, %struct.pcb** %5, align 8
  %67 = getelementptr inbounds %struct.pcb, %struct.pcb* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.pcb*, %struct.pcb** %5, align 8
  %70 = getelementptr inbounds %struct.pcb, %struct.pcb* %69, i32 0, i32 4
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  store i8* %68, i8** %72, align 8
  %73 = load %struct.pcb*, %struct.pcb** %5, align 8
  %74 = getelementptr inbounds %struct.pcb, %struct.pcb* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.thread*, %struct.thread** %3, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load i32, i32* @psl_kernset, align 4
  %81 = load %struct.thread*, %struct.thread** %3, align 8
  %82 = getelementptr inbounds %struct.thread, %struct.thread* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  ret void
}

declare dso_local i32 @bcopy(%struct.trapframe*, %struct.trapframe*, i32) #1

declare dso_local i32 @memset(%struct.callframe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
