; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_setowner.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_setowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { %struct.thread* }
%struct.thread = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@td_contested_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@P_MAGIC = common dso_local global i64 0, align 8
@ts_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.turnstile*, %struct.thread*)* @turnstile_setowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turnstile_setowner(%struct.turnstile* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.turnstile*, align 8
  %4 = alloca %struct.thread*, align 8
  store %struct.turnstile* %0, %struct.turnstile** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @mtx_assert(i32* @td_contested_lock, i32 %5)
  %7 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %8 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %7, i32 0, i32 0
  %9 = load %struct.thread*, %struct.thread** %8, align 8
  %10 = icmp eq %struct.thread* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @MPASS(i32 %11)
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = icmp eq %struct.thread* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @P_MAGIC, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @MPASS(i32 %24)
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %28 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %27, i32 0, i32 0
  store %struct.thread* %26, %struct.thread** %28, align 8
  %29 = load %struct.thread*, %struct.thread** %4, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 0
  %31 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %32 = load i32, i32* @ts_link, align 4
  %33 = call i32 @LIST_INSERT_HEAD(i32* %30, %struct.turnstile* %31, i32 %32)
  br label %34

34:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.turnstile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
