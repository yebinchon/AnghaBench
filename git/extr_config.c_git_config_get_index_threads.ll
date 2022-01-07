; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_config_get_index_threads.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_config_get_index_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"GIT_TEST_INDEX_THREADS\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"index.threads\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_get_index_threads(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = call i32 @git_env_ulong(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** %3, align 8
  store i32 %10, i32* %11, align 4
  store i32 0, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = call i32 @git_config_get_bool_or_int(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %4, i32* %5)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 1
  %23 = load i32*, i32** %3, align 8
  store i32 %22, i32* %23, align 4
  br label %27

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %3, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %18
  store i32 0, i32* %2, align 4
  br label %29

28:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @git_env_ulong(i8*, i32) #1

declare dso_local i32 @git_config_get_bool_or_int(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
