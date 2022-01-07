; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fast-export.c_parse_opt_tag_of_filtered_mode.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fast-export.c_parse_opt_tag_of_filtered_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@TAG_FILTERING_ABORT = common dso_local global i32 0, align 4
@tag_of_filtered_mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"drop\00", align 1
@DROP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"rewrite\00", align 1
@REWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Unknown tag-of-filtered mode: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @parse_opt_tag_of_filtered_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opt_tag_of_filtered_mode(%struct.option* %0, i8* %1, i32 %2) #0 {
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
  %15 = load i32, i32* @TAG_FILTERING_ABORT, align 4
  store i32 %15, i32* @tag_of_filtered_mode, align 4
  br label %33

16:                                               ; preds = %10
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @DROP, align 4
  store i32 %21, i32* @tag_of_filtered_mode, align 4
  br label %32

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @REWRITE, align 4
  store i32 %27, i32* @tag_of_filtered_mode, align 4
  br label %31

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  store i32 %30, i32* %4, align 4
  br label %34

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %20
  br label %33

33:                                               ; preds = %32, %14
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
