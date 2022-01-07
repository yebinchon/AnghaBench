; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_tdsigcleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_tdsigcleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.proc* }
%struct.proc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tdsigcleanup(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %5 = load %struct.thread*, %struct.thread** %2, align 8
  %6 = getelementptr inbounds %struct.thread, %struct.thread* %5, i32 0, i32 2
  %7 = load %struct.proc*, %struct.proc** %6, align 8
  store %struct.proc* %7, %struct.proc** %3, align 8
  %8 = load %struct.proc*, %struct.proc** %3, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %8, i32 %9)
  %11 = load %struct.thread*, %struct.thread** %2, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 1
  %13 = call i32 @sigqueue_flush(i32* %12)
  %14 = load %struct.proc*, %struct.proc** %3, align 8
  %15 = getelementptr inbounds %struct.proc, %struct.proc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %34

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @SIGFILLSET(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.thread*, %struct.thread** %2, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @SIGSETNAND(i32 %22, i32 %25)
  %27 = load %struct.thread*, %struct.thread** %2, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @SIGFILLSET(i32 %29)
  %31 = load %struct.proc*, %struct.proc** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @reschedule_signals(%struct.proc* %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @sigqueue_flush(i32*) #1

declare dso_local i32 @SIGFILLSET(i32) #1

declare dso_local i32 @SIGSETNAND(i32, i32) #1

declare dso_local i32 @reschedule_signals(%struct.proc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
