; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_tdsigwakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_tdsigwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i32, i32, %struct.proc* }
%struct.proc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i64 0, align 8
@SIGPROP_KILL = common dso_local global i32 0, align 4
@PUSER = common dso_local global i64 0, align 8
@TDF_SINTR = common dso_local global i32 0, align 4
@SIGPROP_CONT = common dso_local global i32 0, align 4
@SIGPROP_STOP = common dso_local global i32 0, align 4
@TDF_SBDRY = common dso_local global i32 0, align 4
@TDF_SERESTART = common dso_local global i32 0, align 4
@TDF_SEINTR = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, i32, i64, i32)* @tdsigwakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tdsigwakeup(%struct.thread* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.thread*, %struct.thread** %5, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 3
  %14 = load %struct.proc*, %struct.proc** %13, align 8
  store %struct.proc* %14, %struct.proc** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.proc*, %struct.proc** %9, align 8
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @sigprop(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.proc*, %struct.proc** %9, align 8
  %21 = call i32 @PROC_SLOCK(%struct.proc* %20)
  %22 = load %struct.thread*, %struct.thread** %5, align 8
  %23 = call i32 @thread_lock(%struct.thread* %22)
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @SIG_DFL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @SIGPROP_KILL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.thread*, %struct.thread** %5, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PUSER, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.thread*, %struct.thread** %5, align 8
  %40 = call i32 @TD_IS_IDLETHREAD(%struct.thread* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.thread*, %struct.thread** %5, align 8
  %44 = load i64, i64* @PUSER, align 8
  %45 = call i32 @sched_prio(%struct.thread* %43, i64 %44)
  br label %46

46:                                               ; preds = %42, %38, %32, %27, %4
  %47 = load %struct.thread*, %struct.thread** %5, align 8
  %48 = call i64 @TD_ON_SLEEPQ(%struct.thread* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %116

50:                                               ; preds = %46
  %51 = load %struct.thread*, %struct.thread** %5, align 8
  %52 = getelementptr inbounds %struct.thread, %struct.thread* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TDF_SINTR, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %118

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @SIGPROP_CONT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @SIG_DFL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load %struct.thread*, %struct.thread** %5, align 8
  %69 = call i32 @thread_unlock(%struct.thread* %68)
  %70 = load %struct.proc*, %struct.proc** %9, align 8
  %71 = call i32 @PROC_SUNLOCK(%struct.proc* %70)
  %72 = load %struct.proc*, %struct.proc** %9, align 8
  %73 = getelementptr inbounds %struct.proc, %struct.proc* %72, i32 0, i32 0
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @sigqueue_delete(i32* %73, i32 %74)
  %76 = load %struct.thread*, %struct.thread** %5, align 8
  %77 = getelementptr inbounds %struct.thread, %struct.thread* %76, i32 0, i32 2
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @sigqueue_delete(i32* %77, i32 %78)
  br label %127

80:                                               ; preds = %63, %58
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @SIGPROP_STOP, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load %struct.thread*, %struct.thread** %5, align 8
  %87 = getelementptr inbounds %struct.thread, %struct.thread* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TDF_SBDRY, align 4
  %90 = load i32, i32* @TDF_SERESTART, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @TDF_SEINTR, align 4
  %93 = or i32 %91, %92
  %94 = and i32 %88, %93
  %95 = load i32, i32* @TDF_SBDRY, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  br label %118

98:                                               ; preds = %85, %80
  %99 = load %struct.thread*, %struct.thread** %5, align 8
  %100 = getelementptr inbounds %struct.thread, %struct.thread* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PUSER, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load %struct.thread*, %struct.thread** %5, align 8
  %106 = call i32 @TD_IS_IDLETHREAD(%struct.thread* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load %struct.thread*, %struct.thread** %5, align 8
  %110 = load i64, i64* @PUSER, align 8
  %111 = call i32 @sched_prio(%struct.thread* %109, i64 %110)
  br label %112

112:                                              ; preds = %108, %104, %98
  %113 = load %struct.thread*, %struct.thread** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @sleepq_abort(%struct.thread* %113, i32 %114)
  store i32 %115, i32* %11, align 4
  br label %117

116:                                              ; preds = %46
  br label %117

117:                                              ; preds = %116, %112
  br label %118

118:                                              ; preds = %117, %97, %57
  %119 = load %struct.proc*, %struct.proc** %9, align 8
  %120 = call i32 @PROC_SUNLOCK(%struct.proc* %119)
  %121 = load %struct.thread*, %struct.thread** %5, align 8
  %122 = call i32 @thread_unlock(%struct.thread* %121)
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = call i32 (...) @kick_proc0()
  br label %127

127:                                              ; preds = %67, %125, %118
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @sigprop(i32) #1

declare dso_local i32 @PROC_SLOCK(%struct.proc*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @TD_IS_IDLETHREAD(%struct.thread*) #1

declare dso_local i32 @sched_prio(%struct.thread*, i64) #1

declare dso_local i64 @TD_ON_SLEEPQ(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @PROC_SUNLOCK(%struct.proc*) #1

declare dso_local i32 @sigqueue_delete(i32*, i32) #1

declare dso_local i32 @sleepq_abort(%struct.thread*, i32) #1

declare dso_local i32 @kick_proc0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
