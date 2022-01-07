; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_fo_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_fo_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.filterops*, i32, i64 }
%struct.filterops = type { i32 }

@EVFILT_SYSCOUNT = common dso_local global i64 0, align 8
@sysfilt_ops = common dso_local global %struct.TYPE_2__* null, align 8
@filterops_lock = common dso_local global i32 0, align 4
@null_filtops = common dso_local global %struct.filterops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.filterops* (i32)* @kqueue_fo_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.filterops* @kqueue_fo_find(i32 %0) #0 {
  %2 = alloca %struct.filterops*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = load i64, i64* @EVFILT_SYSCOUNT, align 8
  %10 = add nsw i64 %8, %9
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %1
  store %struct.filterops* null, %struct.filterops** %2, align 8
  br label %64

13:                                               ; preds = %6
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysfilt_ops, align 8
  %15 = load i32, i32* %3, align 4
  %16 = xor i32 %15, -1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysfilt_ops, align 8
  %24 = load i32, i32* %3, align 4
  %25 = xor i32 %24, -1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.filterops*, %struct.filterops** %28, align 8
  store %struct.filterops* %29, %struct.filterops** %2, align 8
  br label %64

30:                                               ; preds = %13
  %31 = call i32 @mtx_lock(i32* @filterops_lock)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysfilt_ops, align 8
  %33 = load i32, i32* %3, align 4
  %34 = xor i32 %33, -1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysfilt_ops, align 8
  %41 = load i32, i32* %3, align 4
  %42 = xor i32 %41, -1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.filterops*, %struct.filterops** %45, align 8
  %47 = icmp eq %struct.filterops* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %30
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysfilt_ops, align 8
  %50 = load i32, i32* %3, align 4
  %51 = xor i32 %50, -1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store %struct.filterops* @null_filtops, %struct.filterops** %54, align 8
  br label %55

55:                                               ; preds = %48, %30
  %56 = call i32 @mtx_unlock(i32* @filterops_lock)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysfilt_ops, align 8
  %58 = load i32, i32* %3, align 4
  %59 = xor i32 %58, -1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.filterops*, %struct.filterops** %62, align 8
  store %struct.filterops* %63, %struct.filterops** %2, align 8
  br label %64

64:                                               ; preds = %55, %22, %12
  %65 = load %struct.filterops*, %struct.filterops** %2, align 8
  ret %struct.filterops* %65
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
