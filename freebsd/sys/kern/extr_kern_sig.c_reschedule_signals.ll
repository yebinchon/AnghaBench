; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_reschedule_signals.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_reschedule_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32, %struct.sigacts* }
%struct.sigacts = type { i32, i32, i32 }
%struct.thread = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@SIGPROCMASK_PS_LOCKED = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@P_TRACED = common dso_local global i32 0, align 4
@SIG_CATCH = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*, i32, i32)* @reschedule_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reschedule_signals(%struct.proc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sigacts*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.proc*, %struct.proc** %4, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %10, i32 %11)
  %13 = load %struct.proc*, %struct.proc** %4, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 2
  %15 = load %struct.sigacts*, %struct.sigacts** %14, align 8
  store %struct.sigacts* %15, %struct.sigacts** %7, align 8
  %16 = load %struct.sigacts*, %struct.sigacts** %7, align 8
  %17 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SIGPROCMASK_PS_LOCKED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @MA_OWNED, align 4
  br label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @MA_NOTOWNED, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = call i32 @mtx_assert(i32* %17, i32 %27)
  %29 = load %struct.proc*, %struct.proc** %4, align 8
  %30 = getelementptr inbounds %struct.proc, %struct.proc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @SIGISEMPTY(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %109

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.proc*, %struct.proc** %4, align 8
  %38 = getelementptr inbounds %struct.proc, %struct.proc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SIGSETAND(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %108, %35
  %42 = call i32 @sig_ffs(i32* %5)
  store i32 %42, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %109

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @SIGDELSET(i32 %45, i32 %46)
  %48 = load %struct.proc*, %struct.proc** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.thread* @sigtd(%struct.proc* %48, i32 %49, i32 0)
  store %struct.thread* %50, %struct.thread** %8, align 8
  %51 = load %struct.thread*, %struct.thread** %8, align 8
  %52 = call i32 @signotify(%struct.thread* %51)
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @SIGPROCMASK_PS_LOCKED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %44
  %58 = load %struct.sigacts*, %struct.sigacts** %7, align 8
  %59 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %58, i32 0, i32 0
  %60 = call i32 @mtx_lock(i32* %59)
  br label %61

61:                                               ; preds = %57, %44
  %62 = load %struct.proc*, %struct.proc** %4, align 8
  %63 = getelementptr inbounds %struct.proc, %struct.proc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @P_TRACED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %61
  %69 = load %struct.sigacts*, %struct.sigacts** %7, align 8
  %70 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @SIGISMEMBER(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %68
  %76 = load %struct.thread*, %struct.thread** %8, align 8
  %77 = getelementptr inbounds %struct.thread, %struct.thread* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @SIGISMEMBER(i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %99, label %82

82:                                               ; preds = %75, %61
  %83 = load %struct.thread*, %struct.thread** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @SIG_CATCH, align 4
  %86 = load %struct.sigacts*, %struct.sigacts** %7, align 8
  %87 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i64 @SIGISMEMBER(i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* @EINTR, align 4
  br label %96

94:                                               ; preds = %82
  %95 = load i32, i32* @ERESTART, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = call i32 @tdsigwakeup(%struct.thread* %83, i32 %84, i32 %85, i32 %97)
  br label %99

99:                                               ; preds = %96, %75, %68
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @SIGPROCMASK_PS_LOCKED, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = load %struct.sigacts*, %struct.sigacts** %7, align 8
  %106 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %105, i32 0, i32 0
  %107 = call i32 @mtx_unlock(i32* %106)
  br label %108

108:                                              ; preds = %104, %99
  br label %41

109:                                              ; preds = %34, %41
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @SIGISEMPTY(i32) #1

declare dso_local i32 @SIGSETAND(i32, i32) #1

declare dso_local i32 @sig_ffs(i32*) #1

declare dso_local i32 @SIGDELSET(i32, i32) #1

declare dso_local %struct.thread* @sigtd(%struct.proc*, i32, i32) #1

declare dso_local i32 @signotify(%struct.thread*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @tdsigwakeup(%struct.thread*, i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
