; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigev_findtd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigev_findtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.sigevent = type { i64, i32 }
%struct.thread = type { i32 }

@SIGEV_THREAD_ID = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sigev_findtd(%struct.proc* %0, %struct.sigevent* %1, %struct.thread** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.sigevent*, align 8
  %7 = alloca %struct.thread**, align 8
  %8 = alloca %struct.thread*, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.sigevent* %1, %struct.sigevent** %6, align 8
  store %struct.thread** %2, %struct.thread*** %7, align 8
  %9 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %10 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SIGEV_THREAD_ID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %16 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.proc*, %struct.proc** %5, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.thread* @tdfind(i32 %17, i32 %20)
  store %struct.thread* %21, %struct.thread** %8, align 8
  %22 = load %struct.thread*, %struct.thread** %8, align 8
  %23 = icmp eq %struct.thread* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* @ESRCH, align 4
  store i32 %25, i32* %4, align 4
  br label %34

26:                                               ; preds = %14
  %27 = load %struct.thread*, %struct.thread** %8, align 8
  %28 = load %struct.thread**, %struct.thread*** %7, align 8
  store %struct.thread* %27, %struct.thread** %28, align 8
  br label %33

29:                                               ; preds = %3
  %30 = load %struct.thread**, %struct.thread*** %7, align 8
  store %struct.thread* null, %struct.thread** %30, align 8
  %31 = load %struct.proc*, %struct.proc** %5, align 8
  %32 = call i32 @PROC_LOCK(%struct.proc* %31)
  br label %33

33:                                               ; preds = %29, %26
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.thread* @tdfind(i32, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
