; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fast-export.c_parse_opt_signed_tag_mode.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fast-export.c_parse_opt_signed_tag_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@SIGNED_TAG_ABORT = common dso_local global i32 0, align 4
@signed_tag_mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"verbatim\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@VERBATIM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@WARN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"warn-strip\00", align 1
@WARN_STRIP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@STRIP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Unknown signed-tags mode: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @parse_opt_signed_tag_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opt_signed_tag_mode(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %3
  %15 = load i32, i32* @SIGNED_TAG_ABORT, align 4
  store i32 %15, i32* @signed_tag_mode, align 4
  br label %51

16:                                               ; preds = %10
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @VERBATIM, align 4
  store i32 %25, i32* @signed_tag_mode, align 4
  br label %50

26:                                               ; preds = %20
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @WARN, align 4
  store i32 %31, i32* @signed_tag_mode, align 4
  br label %49

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @WARN_STRIP, align 4
  store i32 %37, i32* @signed_tag_mode, align 4
  br label %48

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @STRIP, align 4
  store i32 %43, i32* @signed_tag_mode, align 4
  br label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %45)
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %36
  br label %49

49:                                               ; preds = %48, %30
  br label %50

50:                                               ; preds = %49, %24
  br label %51

51:                                               ; preds = %50, %14
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
