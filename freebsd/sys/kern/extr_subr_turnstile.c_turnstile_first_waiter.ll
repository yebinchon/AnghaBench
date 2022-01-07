; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_first_waiter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_first_waiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64 }
%struct.turnstile = type { i32* }

@TS_SHARED_QUEUE = common dso_local global i64 0, align 8
@TS_EXCLUSIVE_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread* (%struct.turnstile*)* @turnstile_first_waiter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread* @turnstile_first_waiter(%struct.turnstile* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.turnstile*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.thread*, align 8
  store %struct.turnstile* %0, %struct.turnstile** %3, align 8
  %6 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %7 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @TS_SHARED_QUEUE, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = call %struct.thread* @TAILQ_FIRST(i32* %10)
  store %struct.thread* %11, %struct.thread** %4, align 8
  %12 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %13 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @TS_EXCLUSIVE_QUEUE, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call %struct.thread* @TAILQ_FIRST(i32* %16)
  store %struct.thread* %17, %struct.thread** %5, align 8
  %18 = load %struct.thread*, %struct.thread** %5, align 8
  %19 = icmp eq %struct.thread* %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %1
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = icmp ne %struct.thread* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.thread*, %struct.thread** %5, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23, %1
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  store %struct.thread* %32, %struct.thread** %2, align 8
  br label %35

33:                                               ; preds = %23, %20
  %34 = load %struct.thread*, %struct.thread** %5, align 8
  store %struct.thread* %34, %struct.thread** %2, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.thread*, %struct.thread** %2, align 8
  ret %struct.thread* %36
}

declare dso_local %struct.thread* @TAILQ_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
