; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_parse_whitespace_option.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_parse_whitespace_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i8*, i64 }

@warn_on_ws_error = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"nowarn\00", align 1
@nowarn_ws_error = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@die_on_ws_error = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"error-all\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"fix\00", align 1
@correct_ws_error = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"unrecognized whitespace option '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, i8*)* @parse_whitespace_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_whitespace_option(%struct.apply_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apply_state*, align 8
  %5 = alloca i8*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** @warn_on_ws_error, align 8
  %10 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %11 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  store i32 0, i32* %3, align 4
  br label %62

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** @warn_on_ws_error, align 8
  %18 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %19 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  store i32 0, i32* %3, align 4
  br label %62

20:                                               ; preds = %12
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** @nowarn_ws_error, align 8
  %26 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %27 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  store i32 0, i32* %3, align 4
  br label %62

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** @die_on_ws_error, align 8
  %34 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %35 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  store i32 0, i32* %3, align 4
  br label %62

36:                                               ; preds = %28
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** @die_on_ws_error, align 8
  %42 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %43 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %45 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  store i32 0, i32* %3, align 4
  br label %62

46:                                               ; preds = %36
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50, %46
  %55 = load i8*, i8** @correct_ws_error, align 8
  %56 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %57 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  store i32 0, i32* %3, align 4
  br label %62

58:                                               ; preds = %50
  %59 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @error(i32 %59, i8* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %54, %40, %32, %24, %16, %8
  %63 = load i32, i32* %3, align 4
  ret i32 %63
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
