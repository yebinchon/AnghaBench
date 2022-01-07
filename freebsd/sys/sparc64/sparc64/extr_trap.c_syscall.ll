; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_trap.c_syscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_trap.c_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__*, i32*, %struct.trapframe* }
%struct.TYPE_2__ = type { i32 }
%struct.trapframe = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"trap: curthread NULL\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"trap: curproc NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syscall(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca %struct.thread*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %4 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %4, %struct.thread** %3, align 8
  %5 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 2
  store %struct.trapframe* %5, %struct.trapframe** %7, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = icmp ne %struct.thread* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %19 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.thread*, %struct.thread** %3, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %26 = call i32 @TF_DONE(%struct.trapframe* %25)
  %27 = load %struct.thread*, %struct.thread** %3, align 8
  %28 = call i32 @syscallenter(%struct.thread* %27)
  %29 = load %struct.thread*, %struct.thread** %3, align 8
  %30 = call i32 @syscallret(%struct.thread* %29)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TF_DONE(%struct.trapframe*) #1

declare dso_local i32 @syscallenter(%struct.thread*) #1

declare dso_local i32 @syscallret(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
