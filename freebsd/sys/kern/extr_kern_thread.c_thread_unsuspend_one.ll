; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_unsuspend_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_unsuspend_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Thread not suspended\00", align 1
@TDF_ALLPROCSUSP = common dso_local global i32 0, align 4
@TDF_BOUNDARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.proc*, i32)* @thread_unsuspend_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_unsuspend_one(%struct.thread* %0, %struct.proc* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.thread*, %struct.thread** %4, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %7, i32 %8)
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = call i32 @TD_IS_SUSPENDED(%struct.thread* %10)
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = call i32 @TD_CLR_SUSPENDED(%struct.thread* %13)
  %15 = load i32, i32* @TDF_ALLPROCSUSP, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 1
  %23 = load %struct.proc*, %struct.proc** %22, align 8
  %24 = load %struct.proc*, %struct.proc** %5, align 8
  %25 = icmp eq %struct.proc* %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %3
  %27 = load %struct.proc*, %struct.proc** %5, align 8
  %28 = load i32, i32* @MA_OWNED, align 4
  %29 = call i32 @PROC_SLOCK_ASSERT(%struct.proc* %27, i32 %28)
  %30 = load %struct.proc*, %struct.proc** %5, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %26
  %37 = load %struct.thread*, %struct.thread** %4, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TDF_BOUNDARY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load i32, i32* @TDF_BOUNDARY, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.thread*, %struct.thread** %4, align 8
  %47 = getelementptr inbounds %struct.thread, %struct.thread* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.proc*, %struct.proc** %5, align 8
  %51 = getelementptr inbounds %struct.proc, %struct.proc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %43, %36, %26
  br label %55

55:                                               ; preds = %54, %3
  %56 = load %struct.thread*, %struct.thread** %4, align 8
  %57 = call i32 @setrunnable(%struct.thread* %56)
  ret i32 %57
}

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TD_IS_SUSPENDED(%struct.thread*) #1

declare dso_local i32 @TD_CLR_SUSPENDED(%struct.thread*) #1

declare dso_local i32 @PROC_SLOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @setrunnable(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
