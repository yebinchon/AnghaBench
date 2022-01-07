; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_prune.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@show_only = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"do not remove, show only\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"report pruned working trees\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"expire\00", align 1
@expire = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"expire working trees older than <time>\00", align 1
@TIME_MAX = common dso_local global i32 0, align 4
@worktree_usage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @prune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prune(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [4 x %struct.option], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %7, i64 0, i64 0
  %9 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @OPT__DRY_RUN(i32* @show_only, i32 %9)
  %11 = getelementptr inbounds %struct.option, %struct.option* %8, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.option, %struct.option* %8, i64 1
  %13 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @OPT__VERBOSE(i32* @verbose, i32 %13)
  %15 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.option, %struct.option* %12, i64 1
  %17 = call i32 @N_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 @OPT_EXPIRY_DATE(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* @expire, i32 %17)
  %19 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %21 = call i32 (...) @OPT_END()
  %22 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @TIME_MAX, align 4
  store i32 %23, i32* @expire, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %7, i64 0, i64 0
  %28 = load i32, i32* @worktree_usage, align 4
  %29 = call i32 @parse_options(i32 %24, i8** %25, i8* %26, %struct.option* %27, i32 %28, i32 0)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @worktree_usage, align 4
  %34 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %7, i64 0, i64 0
  %35 = call i32 @usage_with_options(i32 %33, %struct.option* %34)
  br label %36

36:                                               ; preds = %32, %3
  %37 = call i32 (...) @prune_worktrees()
  ret i32 0
}

declare dso_local i32 @OPT__DRY_RUN(i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT__VERBOSE(i32*, i32) #1

declare dso_local i32 @OPT_EXPIRY_DATE(i32, i8*, i32*, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i32 @prune_worktrees(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
