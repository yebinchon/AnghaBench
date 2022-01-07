; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_thread_stopped.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_thread_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.proc* null, align 8
@P_STOPPED_SIG = common dso_local global i32 0, align 4
@P_WAITED = common dso_local global i32 0, align 4
@P_TRACED = common dso_local global i32 0, align 4
@CLD_TRAPPED = common dso_local global i32 0, align 4
@CLD_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_stopped(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %2, align 8
  %4 = load %struct.proc*, %struct.proc** %2, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %4, i32 %5)
  %7 = load %struct.proc*, %struct.proc** %2, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @PROC_SLOCK_ASSERT(%struct.proc* %7, i32 %8)
  %10 = load %struct.proc*, %struct.proc** %2, align 8
  %11 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.proc*, %struct.proc** %2, align 8
  %14 = load %struct.proc*, %struct.proc** @curproc, align 8
  %15 = icmp eq %struct.proc* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.proc*, %struct.proc** %2, align 8
  %21 = getelementptr inbounds %struct.proc, %struct.proc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @P_STOPPED_SIG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.proc*, %struct.proc** %2, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %26
  %33 = load %struct.proc*, %struct.proc** %2, align 8
  %34 = call i32 @PROC_SUNLOCK(%struct.proc* %33)
  %35 = load i32, i32* @P_WAITED, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.proc*, %struct.proc** %2, align 8
  %38 = getelementptr inbounds %struct.proc, %struct.proc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.proc*, %struct.proc** %2, align 8
  %42 = getelementptr inbounds %struct.proc, %struct.proc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PROC_LOCK(i32 %43)
  %45 = load %struct.proc*, %struct.proc** %2, align 8
  %46 = load %struct.proc*, %struct.proc** %2, align 8
  %47 = getelementptr inbounds %struct.proc, %struct.proc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @P_TRACED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = load i32, i32* @CLD_TRAPPED, align 4
  br label %56

54:                                               ; preds = %32
  %55 = load i32, i32* @CLD_STOPPED, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @childproc_stopped(%struct.proc* %45, i32 %57)
  %59 = load %struct.proc*, %struct.proc** %2, align 8
  %60 = getelementptr inbounds %struct.proc, %struct.proc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PROC_UNLOCK(i32 %61)
  %63 = load %struct.proc*, %struct.proc** %2, align 8
  %64 = call i32 @PROC_SLOCK(%struct.proc* %63)
  br label %65

65:                                               ; preds = %56, %26, %19
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @PROC_SLOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @PROC_SUNLOCK(%struct.proc*) #1

declare dso_local i32 @PROC_LOCK(i32) #1

declare dso_local i32 @childproc_stopped(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

declare dso_local i32 @PROC_SLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
