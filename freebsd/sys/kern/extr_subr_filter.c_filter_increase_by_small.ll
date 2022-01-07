; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_filter.c_filter_increase_by_small.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_filter.c_filter_increase_by_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time_filter_small = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@NUM_FILTER_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @filter_increase_by_small(%struct.time_filter_small* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.time_filter_small*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.time_filter_small* %0, %struct.time_filter_small** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %10 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr i8, i8* %8, i64 %15
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %13, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %20 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i8* %18, i8** %23, align 8
  store i32 1, i32* %7, align 4
  br label %24

24:                                               ; preds = %50, %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %30 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %36 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %34, i32* %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %44 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i8* %42, i8** %49, align 8
  br label %50

50:                                               ; preds = %28
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %24

53:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
