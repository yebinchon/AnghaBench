; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_add_filteropts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_add_filteropts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.filterops* }
%struct.filterops = type { i32 }

@EVFILT_SYSCOUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"trying to add a filterop that is out of range: %d is beyond %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@filterops_lock = common dso_local global i32 0, align 4
@sysfilt_ops = common dso_local global %struct.TYPE_2__* null, align 8
@null_filtops = common dso_local global %struct.filterops zeroinitializer, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kqueue_add_filteropts(i32 %0, %struct.filterops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.filterops*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.filterops* %1, %struct.filterops** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @EVFILT_SYSCOUNT, align 8
  %13 = add nsw i64 %11, %12
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9, %2
  %16 = load i32, i32* %4, align 4
  %17 = xor i32 %16, -1
  %18 = load i64, i64* @EVFILT_SYSCOUNT, align 8
  %19 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %18)
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %9
  %22 = call i32 @mtx_lock(i32* @filterops_lock)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysfilt_ops, align 8
  %24 = load i32, i32* %4, align 4
  %25 = xor i32 %24, -1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.filterops*, %struct.filterops** %28, align 8
  %30 = icmp ne %struct.filterops* %29, @null_filtops
  br i1 %30, label %31, label %42

31:                                               ; preds = %21
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysfilt_ops, align 8
  %33 = load i32, i32* %4, align 4
  %34 = xor i32 %33, -1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.filterops*, %struct.filterops** %37, align 8
  %39 = icmp ne %struct.filterops* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @EEXIST, align 4
  store i32 %41, i32* %6, align 4
  br label %56

42:                                               ; preds = %31, %21
  %43 = load %struct.filterops*, %struct.filterops** %5, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysfilt_ops, align 8
  %45 = load i32, i32* %4, align 4
  %46 = xor i32 %45, -1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store %struct.filterops* %43, %struct.filterops** %49, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysfilt_ops, align 8
  %51 = load i32, i32* %4, align 4
  %52 = xor i32 %51, -1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %42, %40
  %57 = call i32 @mtx_unlock(i32* @filterops_lock)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @printf(i8*, i32, i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
