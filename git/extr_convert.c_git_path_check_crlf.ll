; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_git_path_check_crlf.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_git_path_check_crlf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_check_item = type { i8* }

@CRLF_TEXT = common dso_local global i32 0, align 4
@CRLF_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@CRLF_TEXT_INPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@CRLF_AUTO = common dso_local global i32 0, align 4
@CRLF_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attr_check_item*)* @git_path_check_crlf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_path_check_crlf(%struct.attr_check_item* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.attr_check_item*, align 8
  %4 = alloca i8*, align 8
  store %struct.attr_check_item* %0, %struct.attr_check_item** %3, align 8
  %5 = load %struct.attr_check_item*, %struct.attr_check_item** %3, align 8
  %6 = getelementptr inbounds %struct.attr_check_item, %struct.attr_check_item* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @ATTR_TRUE(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @CRLF_TEXT, align 4
  store i32 %12, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @ATTR_FALSE(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @CRLF_BINARY, align 4
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @ATTR_UNSET(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %38

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @CRLF_TEXT_INPUT, align 4
  store i32 %29, i32* %2, align 4
  br label %42

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @CRLF_AUTO, align 4
  store i32 %35, i32* %2, align 4
  br label %42

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37, %23
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* @CRLF_UNDEFINED, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %34, %28, %17, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @ATTR_TRUE(i8*) #1

declare dso_local i64 @ATTR_FALSE(i8*) #1

declare dso_local i64 @ATTR_UNSET(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
