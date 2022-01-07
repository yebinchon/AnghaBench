; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_fork_rfppwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_fork_rfppwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.proc*, %struct.proc* }
%struct.proc = type { i32, i32, i32, i32 }

@TDP_RFPPWAIT = common dso_local global i32 0, align 4
@P_PPWAIT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@TDB_VFORK = common dso_local global i32 0, align 4
@PTRACE_VFORK = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fork_rfppwait(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %5 = load %struct.thread*, %struct.thread** %2, align 8
  %6 = getelementptr inbounds %struct.thread, %struct.thread* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TDP_RFPPWAIT, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @MPASS(i32 %9)
  %11 = load %struct.thread*, %struct.thread** %2, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 3
  %13 = load %struct.proc*, %struct.proc** %12, align 8
  store %struct.proc* %13, %struct.proc** %3, align 8
  %14 = load i32, i32* @TDP_RFPPWAIT, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.thread*, %struct.thread** %2, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.thread*, %struct.thread** %2, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 2
  %22 = load %struct.proc*, %struct.proc** %21, align 8
  store %struct.proc* %22, %struct.proc** %4, align 8
  br label %23

23:                                               ; preds = %38, %1
  %24 = load %struct.proc*, %struct.proc** %4, align 8
  %25 = call i32 @PROC_LOCK(%struct.proc* %24)
  br label %26

26:                                               ; preds = %47, %23
  %27 = load %struct.proc*, %struct.proc** %4, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @P_PPWAIT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %26
  %34 = load %struct.proc*, %struct.proc** %3, align 8
  %35 = call i32 @PROC_LOCK(%struct.proc* %34)
  %36 = call i64 (...) @thread_suspend_check_needed()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.proc*, %struct.proc** %4, align 8
  %40 = call i32 @PROC_UNLOCK(%struct.proc* %39)
  %41 = call i32 @thread_suspend_check(i32 0)
  %42 = load %struct.proc*, %struct.proc** %3, align 8
  %43 = call i32 @PROC_UNLOCK(%struct.proc* %42)
  br label %23

44:                                               ; preds = %33
  %45 = load %struct.proc*, %struct.proc** %3, align 8
  %46 = call i32 @PROC_UNLOCK(%struct.proc* %45)
  br label %47

47:                                               ; preds = %44
  %48 = load %struct.proc*, %struct.proc** %4, align 8
  %49 = getelementptr inbounds %struct.proc, %struct.proc* %48, i32 0, i32 3
  %50 = load %struct.proc*, %struct.proc** %4, align 8
  %51 = getelementptr inbounds %struct.proc, %struct.proc* %50, i32 0, i32 2
  %52 = load i32, i32* @hz, align 4
  %53 = call i32 @cv_timedwait(i32* %49, i32* %51, i32 %52)
  br label %26

54:                                               ; preds = %26
  %55 = load %struct.proc*, %struct.proc** %4, align 8
  %56 = call i32 @PROC_UNLOCK(%struct.proc* %55)
  %57 = load %struct.thread*, %struct.thread** %2, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TDB_VFORK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %54
  %64 = load %struct.proc*, %struct.proc** %3, align 8
  %65 = call i32 @PROC_LOCK(%struct.proc* %64)
  %66 = load %struct.proc*, %struct.proc** %3, align 8
  %67 = getelementptr inbounds %struct.proc, %struct.proc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PTRACE_VFORK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load %struct.thread*, %struct.thread** %2, align 8
  %74 = load i32, i32* @SIGTRAP, align 4
  %75 = call i32 @ptracestop(%struct.thread* %73, i32 %74, i32* null)
  br label %76

76:                                               ; preds = %72, %63
  %77 = load i32, i32* @TDB_VFORK, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.thread*, %struct.thread** %2, align 8
  %80 = getelementptr inbounds %struct.thread, %struct.thread* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.proc*, %struct.proc** %3, align 8
  %84 = call i32 @PROC_UNLOCK(%struct.proc* %83)
  br label %85

85:                                               ; preds = %76, %54
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i64 @thread_suspend_check_needed(...) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @thread_suspend_check(i32) #1

declare dso_local i32 @cv_timedwait(i32*, i32*, i32) #1

declare dso_local i32 @ptracestop(%struct.thread*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
