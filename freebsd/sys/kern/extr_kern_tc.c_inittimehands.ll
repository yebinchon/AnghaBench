; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_inittimehands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_inittimehands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timehands = type { %struct.timehands* }

@.str = private unnamed_addr constant [33 x i8] c"kern.timecounter.timehands_count\00", align 1
@timehands_count = common dso_local global i32 0, align 4
@ths = common dso_local global %struct.timehands* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @inittimehands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inittimehands(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.timehands*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* @timehands_count)
  %6 = load i32, i32* @timehands_count, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* @timehands_count, align 4
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i32, i32* @timehands_count, align 4
  %11 = load %struct.timehands*, %struct.timehands** @ths, align 8
  %12 = call i32 @nitems(%struct.timehands* %11)
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.timehands*, %struct.timehands** @ths, align 8
  %16 = call i32 @nitems(%struct.timehands* %15)
  store i32 %16, i32* @timehands_count, align 4
  br label %17

17:                                               ; preds = %14, %9
  store i32 1, i32* %4, align 4
  %18 = load %struct.timehands*, %struct.timehands** @ths, align 8
  %19 = getelementptr inbounds %struct.timehands, %struct.timehands* %18, i64 0
  store %struct.timehands* %19, %struct.timehands** %3, align 8
  br label %20

20:                                               ; preds = %31, %17
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @timehands_count, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.timehands*, %struct.timehands** @ths, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.timehands, %struct.timehands* %25, i64 %27
  %29 = load %struct.timehands*, %struct.timehands** %3, align 8
  %30 = getelementptr inbounds %struct.timehands, %struct.timehands* %29, i32 0, i32 0
  store %struct.timehands* %28, %struct.timehands** %30, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load %struct.timehands*, %struct.timehands** @ths, align 8
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds %struct.timehands, %struct.timehands* %32, i64 %35
  store %struct.timehands* %36, %struct.timehands** %3, align 8
  br label %20

37:                                               ; preds = %20
  %38 = load %struct.timehands*, %struct.timehands** @ths, align 8
  %39 = getelementptr inbounds %struct.timehands, %struct.timehands* %38, i64 0
  %40 = load %struct.timehands*, %struct.timehands** %3, align 8
  %41 = getelementptr inbounds %struct.timehands, %struct.timehands* %40, i32 0, i32 0
  store %struct.timehands* %39, %struct.timehands** %41, align 8
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @nitems(%struct.timehands*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
