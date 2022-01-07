; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_prepare_format_display.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_prepare_format_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i64, i32, i32, %struct.ref* }

@.str = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"fetch.output\00", align 1
@compact_format = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"compact\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"configuration fetch.output contains invalid value %s\00", align 1
@REF_STATUS_REJECT_SHALLOW = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref*)* @prepare_format_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_format_display(%struct.ref* %0) #0 {
  %2 = alloca %struct.ref*, align 8
  %3 = alloca %struct.ref*, align 8
  %4 = alloca i8*, align 8
  store %struct.ref* %0, %struct.ref** %2, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = call i32 @git_config_get_string_const(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %4)
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcasecmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* @compact_format, align 4
  br label %20

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 1, i32* @compact_format, align 4
  br label %19

15:                                               ; preds = %10
  %16 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @die(i32 %16, i8* %17)
  br label %19

19:                                               ; preds = %15, %14
  br label %20

20:                                               ; preds = %19, %9
  %21 = load %struct.ref*, %struct.ref** %2, align 8
  store %struct.ref* %21, %struct.ref** %3, align 8
  br label %22

22:                                               ; preds = %46, %20
  %23 = load %struct.ref*, %struct.ref** %3, align 8
  %24 = icmp ne %struct.ref* %23, null
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load %struct.ref*, %struct.ref** %3, align 8
  %27 = getelementptr inbounds %struct.ref, %struct.ref* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @REF_STATUS_REJECT_SHALLOW, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %25
  %32 = load %struct.ref*, %struct.ref** %3, align 8
  %33 = getelementptr inbounds %struct.ref, %struct.ref* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.ref*, %struct.ref** %3, align 8
  %38 = getelementptr inbounds %struct.ref, %struct.ref* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strcmp(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36, %31, %25
  br label %46

43:                                               ; preds = %36
  %44 = load %struct.ref*, %struct.ref** %3, align 8
  %45 = call i32 @adjust_refcol_width(%struct.ref* %44)
  br label %46

46:                                               ; preds = %43, %42
  %47 = load %struct.ref*, %struct.ref** %3, align 8
  %48 = getelementptr inbounds %struct.ref, %struct.ref* %47, i32 0, i32 3
  %49 = load %struct.ref*, %struct.ref** %48, align 8
  store %struct.ref* %49, %struct.ref** %3, align 8
  br label %22

50:                                               ; preds = %22
  ret void
}

declare dso_local i32 @git_config_get_string_const(i8*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @adjust_refcol_width(%struct.ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
