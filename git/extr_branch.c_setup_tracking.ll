; ModuleID = '/home/carl/AnghaBench/git/extr_branch.c_setup_tracking.c'
source_filename = "/home/carl/AnghaBench/git/extr_branch.c_setup_tracking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracking = type { i32, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@BRANCH_CONFIG_VERBOSE = common dso_local global i32 0, align 4
@find_tracked_branch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Not tracking: ambiguous information for ref %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @setup_tracking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_tracking(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tracking, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @BRANCH_CONFIG_VERBOSE, align 4
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i32 [ 0, %13 ], [ %15, %14 ]
  store i32 %17, i32* %10, align 4
  %18 = call i32 @memset(%struct.tracking* %9, i32 0, i32 32)
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds %struct.tracking, %struct.tracking* %9, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @find_tracked_branch, align 4
  %23 = call i64 @for_each_remote(i32 %22, %struct.tracking* %9)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %66

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.tracking, %struct.tracking* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %33 [
    i32 130, label %32
    i32 129, label %32
    i32 128, label %32
  ]

32:                                               ; preds = %30, %30, %30
  br label %34

33:                                               ; preds = %30
  br label %66

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34, %26
  %36 = getelementptr inbounds %struct.tracking, %struct.tracking* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @die(i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %10, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds %struct.tracking, %struct.tracking* %9, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.tracking, %struct.tracking* %9, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.tracking, %struct.tracking* %9, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  br label %56

54:                                               ; preds = %43
  %55 = load i8*, i8** %6, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i8* [ %53, %51 ], [ %55, %54 ]
  %58 = call i64 @install_branch_config(i32 %44, i8* %45, i32 %47, i8* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @exit(i32 -1) #3
  unreachable

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.tracking, %struct.tracking* %9, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %62, %33, %25
  ret void
}

declare dso_local i32 @memset(%struct.tracking*, i32, i32) #1

declare dso_local i64 @for_each_remote(i32, %struct.tracking*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @install_branch_config(i32, i8*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
