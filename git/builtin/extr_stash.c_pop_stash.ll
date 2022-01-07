; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_pop_stash.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_pop_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stash_info = type { i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"be quiet, only report errors\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"attempt to recreate the index\00", align 1
@git_stash_pop_usage = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"The stash entry is kept in case you need it again.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @pop_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop_stash(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stash_info, align 4
  %12 = alloca [3 x %struct.option], align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %12, i64 0, i64 0
  %14 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @OPT__QUIET(i32* %10, i32 %14)
  %16 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %18 = call i32 @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32 %18)
  %20 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %22 = call i32 (...) @OPT_END()
  %23 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i8**, i8*** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %12, i64 0, i64 0
  %28 = load i32, i32* @git_stash_pop_usage, align 4
  %29 = call i32 @parse_options(i32 %24, i8** %25, i8* %26, %struct.option* %27, i32 %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i8**, i8*** %6, align 8
  %32 = call i64 @get_stash_info(%struct.stash_info* %11, i32 %30, i8** %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %51

35:                                               ; preds = %3
  %36 = call i32 @assert_stash_ref(%struct.stash_info* %11)
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @do_apply_stash(i8* %37, %struct.stash_info* %11, i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %44 = call i32 @printf_ln(i32 %43)
  br label %48

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @do_drop_stash(%struct.stash_info* %11, i32 %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = call i32 @free_stash_info(%struct.stash_info* %11)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %34
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @OPT__QUIET(i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i64 @get_stash_info(%struct.stash_info*, i32, i8**) #1

declare dso_local i32 @assert_stash_ref(%struct.stash_info*) #1

declare dso_local i32 @do_apply_stash(i8*, %struct.stash_info*, i32, i32) #1

declare dso_local i32 @printf_ln(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @do_drop_stash(%struct.stash_info*, i32) #1

declare dso_local i32 @free_stash_info(%struct.stash_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
