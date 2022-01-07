; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_fo_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_fo_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@EVFILT_SYSCOUNT = common dso_local global i64 0, align 8
@sysfilt_ops = common dso_local global %struct.TYPE_2__* null, align 8
@filterops_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"filter object refcount not valid on release\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @kqueue_fo_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqueue_fo_release(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = load i64, i64* @EVFILT_SYSCOUNT, align 8
  %9 = add nsw i64 %7, %8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5, %1
  br label %43

12:                                               ; preds = %5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysfilt_ops, align 8
  %14 = load i32, i32* %2, align 4
  %15 = xor i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %43

22:                                               ; preds = %12
  %23 = call i32 @mtx_lock(i32* @filterops_lock)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysfilt_ops, align 8
  %25 = load i32, i32* %2, align 4
  %26 = xor i32 %25, -1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysfilt_ops, align 8
  %35 = load i32, i32* %2, align 4
  %36 = xor i32 %35, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = call i32 @mtx_unlock(i32* @filterops_lock)
  br label %43

43:                                               ; preds = %22, %21, %11
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
