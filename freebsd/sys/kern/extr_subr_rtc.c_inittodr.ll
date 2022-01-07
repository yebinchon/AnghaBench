; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rtc.c_inittodr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rtc.c_inittodr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"Warning: no time-of-day clock registered, \00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Warning: bad time from time-of-day clock, \00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Error reading time-of-day clock (%d), \00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"system time will not be set accurately\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inittodr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = call i32 @read_clocks(%struct.timespec* %3, i32 0)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %14 [
    i32 128, label %10
    i32 129, label %12
  ]

10:                                               ; preds = %8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %17

12:                                               ; preds = %8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %17

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %12, %10
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i64, i64* %2, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* %2, align 8
  br label %24

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i64 [ %22, %21 ], [ -1, %23 ]
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %1
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @tc_setclock(%struct.timespec* %3)
  br label %34

34:                                               ; preds = %32, %28
  ret void
}

declare dso_local i32 @read_clocks(%struct.timespec*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @tc_setclock(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
