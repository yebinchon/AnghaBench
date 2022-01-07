; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_include_condition_is_true.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_include_condition_is_true.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_options = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"gitdir:\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"gitdir/i:\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"onbranch:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_options*, i8*, i64)* @include_condition_is_true to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @include_condition_is_true(%struct.config_options* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.config_options* %0, %struct.config_options** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call i64 @skip_prefix_mem(i8* %8, i64 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, i64* %7)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.config_options*, %struct.config_options** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @include_by_gitdir(%struct.config_options* %13, i8* %14, i64 %15, i32 0)
  store i32 %16, i32* %4, align 4
  br label %39

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @skip_prefix_mem(i8* %18, i64 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %6, i64* %7)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.config_options*, %struct.config_options** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @include_by_gitdir(%struct.config_options* %23, i8* %24, i64 %25, i32 1)
  store i32 %26, i32* %4, align 4
  br label %39

27:                                               ; preds = %17
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @skip_prefix_mem(i8* %28, i64 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %6, i64* %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @include_by_branch(i8* %33, i64 %34)
  store i32 %35, i32* %4, align 4
  br label %39

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %32, %22, %12
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @skip_prefix_mem(i8*, i64, i8*, i8**, i64*) #1

declare dso_local i32 @include_by_gitdir(%struct.config_options*, i8*, i64, i32) #1

declare dso_local i32 @include_by_branch(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
