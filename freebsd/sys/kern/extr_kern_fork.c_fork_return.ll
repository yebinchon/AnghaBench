; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_fork_return.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_fork_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_2__, %struct.proc* }
%struct.TYPE_2__ = type { i32 }
%struct.proc = type { i32, i32 }
%struct.trapframe = type { i32 }

@TDB_STOPATFORK = common dso_local global i32 0, align 4
@P_TRACED = common dso_local global i32 0, align 4
@TDB_CHILD = common dso_local global i32 0, align 4
@TDB_SCX = common dso_local global i32 0, align 4
@TDB_FSTP = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@TDB_BORN = common dso_local global i32 0, align 4
@S_SCX = common dso_local global i32 0, align 4
@PTRACE_SCX = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@KTR_SYSRET = common dso_local global i32 0, align 4
@SYS_fork = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fork_return(%struct.thread* %0, %struct.trapframe* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.trapframe* %1, %struct.trapframe** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 2
  %8 = load %struct.proc*, %struct.proc** %7, align 8
  store %struct.proc* %8, %struct.proc** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TDB_STOPATFORK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %2
  %16 = load %struct.proc*, %struct.proc** %5, align 8
  %17 = call i32 @PROC_LOCK(%struct.proc* %16)
  %18 = load %struct.proc*, %struct.proc** %5, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @P_TRACED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %15
  %25 = load i32, i32* @TDB_CHILD, align 4
  %26 = load i32, i32* @TDB_SCX, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @TDB_FSTP, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.thread*, %struct.thread** %3, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.thread*, %struct.thread** %3, align 8
  %35 = load i32, i32* @SIGSTOP, align 4
  %36 = call i32 @ptracestop(%struct.thread* %34, i32 %35, i32* null)
  %37 = load i32, i32* @TDB_CHILD, align 4
  %38 = load i32, i32* @TDB_SCX, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.thread*, %struct.thread** %3, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %52

45:                                               ; preds = %15
  %46 = load i32, i32* @TDB_STOPATFORK, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.thread*, %struct.thread** %3, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %45, %24
  %53 = load %struct.proc*, %struct.proc** %5, align 8
  %54 = call i32 @PROC_UNLOCK(%struct.proc* %53)
  br label %113

55:                                               ; preds = %2
  %56 = load %struct.proc*, %struct.proc** %5, align 8
  %57 = getelementptr inbounds %struct.proc, %struct.proc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @P_TRACED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %struct.thread*, %struct.thread** %3, align 8
  %64 = getelementptr inbounds %struct.thread, %struct.thread* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @TDB_BORN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %112

69:                                               ; preds = %62, %55
  %70 = load %struct.proc*, %struct.proc** %5, align 8
  %71 = call i32 @PROC_LOCK(%struct.proc* %70)
  %72 = load i32, i32* @TDB_SCX, align 4
  %73 = load %struct.thread*, %struct.thread** %3, align 8
  %74 = getelementptr inbounds %struct.thread, %struct.thread* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.proc*, %struct.proc** %5, align 8
  %78 = load i32, i32* @S_SCX, align 4
  %79 = load %struct.thread*, %struct.thread** %3, align 8
  %80 = getelementptr inbounds %struct.thread, %struct.thread* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @_STOPEVENT(%struct.proc* %77, i32 %78, i32 %82)
  %84 = load %struct.proc*, %struct.proc** %5, align 8
  %85 = getelementptr inbounds %struct.proc, %struct.proc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PTRACE_SCX, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %69
  %91 = load %struct.thread*, %struct.thread** %3, align 8
  %92 = getelementptr inbounds %struct.thread, %struct.thread* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @TDB_BORN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90, %69
  %98 = load %struct.thread*, %struct.thread** %3, align 8
  %99 = load i32, i32* @SIGTRAP, align 4
  %100 = call i32 @ptracestop(%struct.thread* %98, i32 %99, i32* null)
  br label %101

101:                                              ; preds = %97, %90
  %102 = load i32, i32* @TDB_SCX, align 4
  %103 = load i32, i32* @TDB_BORN, align 4
  %104 = or i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = load %struct.thread*, %struct.thread** %3, align 8
  %107 = getelementptr inbounds %struct.thread, %struct.thread* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.proc*, %struct.proc** %5, align 8
  %111 = call i32 @PROC_UNLOCK(%struct.proc* %110)
  br label %112

112:                                              ; preds = %101, %62
  br label %113

113:                                              ; preds = %112, %52
  %114 = load %struct.thread*, %struct.thread** %3, align 8
  %115 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %116 = call i32 @userret(%struct.thread* %114, %struct.trapframe* %115)
  ret void
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @ptracestop(%struct.thread*, i32, i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @_STOPEVENT(%struct.proc*, i32, i32) #1

declare dso_local i32 @userret(%struct.thread*, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
