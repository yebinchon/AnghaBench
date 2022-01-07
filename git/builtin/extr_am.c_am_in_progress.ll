; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_am_in_progress.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_am_in_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am_state = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.am_state*)* @am_in_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am_in_progress(%struct.am_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.am_state*, align 8
  %4 = alloca %struct.stat, align 4
  store %struct.am_state* %0, %struct.am_state** %3, align 8
  %5 = load %struct.am_state*, %struct.am_state** %3, align 8
  %6 = getelementptr inbounds %struct.am_state, %struct.am_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @lstat(i32 %7, %struct.stat* %4)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @S_ISDIR(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %39

16:                                               ; preds = %10
  %17 = load %struct.am_state*, %struct.am_state** %3, align 8
  %18 = call i32 @am_path(%struct.am_state* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = call i64 @lstat(i32 %18, %struct.stat* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @S_ISREG(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %16
  store i32 0, i32* %2, align 4
  br label %39

27:                                               ; preds = %21
  %28 = load %struct.am_state*, %struct.am_state** %3, align 8
  %29 = call i32 @am_path(%struct.am_state* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i64 @lstat(i32 %29, %struct.stat* %4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @S_ISREG(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %27
  store i32 0, i32* %2, align 4
  br label %39

38:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %37, %26, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @am_path(%struct.am_state*, i8*) #1

declare dso_local i32 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
