; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i64, %struct.turnstile* }
%struct.turnstile = type { i32*, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@TS_EXCLUSIVE_QUEUE = common dso_local global i64 0, align 8
@TS_SHARED_QUEUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @turnstile_adjust(%struct.thread* %0, i64 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.turnstile*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = call i32 @TD_ON_LOCK(%struct.thread* %6)
  %8 = call i32 @MPASS(i32 %7)
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 2
  %11 = load %struct.turnstile*, %struct.turnstile** %10, align 8
  store %struct.turnstile* %11, %struct.turnstile** %5, align 8
  %12 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %13 = icmp ne %struct.turnstile* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @MPASS(i32 %14)
  %16 = load %struct.thread*, %struct.thread** %3, align 8
  %17 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %18 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %17, i32 0, i32 1
  %19 = call i32 @THREAD_LOCKPTR_ASSERT(%struct.thread* %16, i32* %18)
  %20 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %21 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %20, i32 0, i32 1
  %22 = load i32, i32* @MA_OWNED, align 4
  %23 = call i32 @mtx_assert(i32* %21, i32 %22)
  %24 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %25 = load %struct.thread*, %struct.thread** %3, align 8
  %26 = call i32 @turnstile_adjust_thread(%struct.turnstile* %24, %struct.thread* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %64

29:                                               ; preds = %2
  %30 = load %struct.thread*, %struct.thread** %3, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TS_EXCLUSIVE_QUEUE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.thread*, %struct.thread** %3, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TS_SHARED_QUEUE, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi i1 [ true, %29 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @MPASS(i32 %43)
  %45 = load %struct.thread*, %struct.thread** %3, align 8
  %46 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %47 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.thread*, %struct.thread** %3, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = call %struct.thread* @TAILQ_FIRST(i32* %52)
  %54 = icmp eq %struct.thread* %45, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %41
  %56 = load %struct.thread*, %struct.thread** %3, align 8
  %57 = getelementptr inbounds %struct.thread, %struct.thread* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %4, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.thread*, %struct.thread** %3, align 8
  %63 = call i32 @propagate_priority(%struct.thread* %62)
  br label %64

64:                                               ; preds = %28, %61, %55, %41
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @TD_ON_LOCK(%struct.thread*) #1

declare dso_local i32 @THREAD_LOCKPTR_ASSERT(%struct.thread*, i32*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @turnstile_adjust_thread(%struct.turnstile*, %struct.thread*) #1

declare dso_local %struct.thread* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @propagate_priority(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
