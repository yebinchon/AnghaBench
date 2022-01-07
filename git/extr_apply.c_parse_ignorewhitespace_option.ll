; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_parse_ignorewhitespace_option.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_parse_ignorewhitespace_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@ignore_ws_none = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@ignore_ws_change = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"unrecognized whitespace ignore option '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, i8*)* @parse_ignorewhitespace_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ignorewhitespace_option(%struct.apply_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apply_state*, align 8
  %5 = alloca i8*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20, %16, %12, %8, %2
  %25 = load i32, i32* @ignore_ws_none, align 4
  %26 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %27 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %40

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ignore_ws_change, align 4
  %34 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %35 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %40

36:                                               ; preds = %28
  %37 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @error(i32 %37, i8* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %32, %24
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
