; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_parse_cover_from_description.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_parse_cover_from_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@COVER_FROM_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@COVER_FROM_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@COVER_FROM_SUBJECT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@COVER_FROM_AUTO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"%s: invalid cover from description mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_cover_from_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cover_from_description(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @COVER_FROM_MESSAGE, align 4
  store i32 %11, i32* %2, align 4
  br label %44

12:                                               ; preds = %6
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @COVER_FROM_NONE, align 4
  store i32 %17, i32* %2, align 4
  br label %44

18:                                               ; preds = %12
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @COVER_FROM_MESSAGE, align 4
  store i32 %23, i32* %2, align 4
  br label %44

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @COVER_FROM_SUBJECT, align 4
  store i32 %29, i32* %2, align 4
  br label %44

30:                                               ; preds = %24
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @COVER_FROM_AUTO, align 4
  store i32 %35, i32* %2, align 4
  br label %44

36:                                               ; preds = %30
  %37 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @die(i32 %37, i8* %38)
  br label %40

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %10, %16, %22, %28, %34, %43
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
