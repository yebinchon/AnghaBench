; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_cmd_restore.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_cmd_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout_opts = type { i32, i32, i32, i32, i32, i8*, i64, i64, i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"<tree-ish>\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"which tree-ish to checkout from\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"staged\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"restore the index\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"worktree\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"restore the working tree (default)\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"ignore-unmerged\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"ignore unmerged entries\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"use overlay mode\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"--ignore-unmerged\00", align 1
@restore_usage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_restore(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.checkout_opts, align 8
  %8 = alloca %struct.option*, align 8
  %9 = alloca [6 x %struct.option], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %9, i64 0, i64 0
  %12 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 8
  %13 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @OPT_STRING(i8 signext 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.option, %struct.option* %11, i64 1
  %17 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 0
  %18 = call i32 @N_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %19 = call i32 @OPT_BOOL(i8 signext 83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %17, i32 %18)
  %20 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %22 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 1
  %23 = call i32 @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %24 = call i32 @OPT_BOOL(i8 signext 87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %22, i32 %23)
  %25 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %27 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 2
  %28 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %29 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32* %27, i32 %28)
  %30 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.option, %struct.option* %26, i64 1
  %32 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 3
  %33 = call i32 @N_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %34 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* %32, i32 %33)
  %35 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.option, %struct.option* %31, i64 1
  %37 = call i32 (...) @OPT_END()
  %38 = getelementptr inbounds %struct.option, %struct.option* %36, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = call i32 @memset(%struct.checkout_opts* %7, i32 0, i32 56)
  %40 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 4
  store i32 1, i32* %41, align 8
  %42 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 3
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 1
  store i32 -2, i32* %45, align 4
  %46 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 5
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %46, align 8
  %47 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %9, i64 0, i64 0
  %48 = call %struct.option* @parse_options_dup(%struct.option* %47)
  store %struct.option* %48, %struct.option** %8, align 8
  %49 = load %struct.option*, %struct.option** %8, align 8
  %50 = call %struct.option* @add_common_options(%struct.checkout_opts* %7, %struct.option* %49)
  store %struct.option* %50, %struct.option** %8, align 8
  %51 = load %struct.option*, %struct.option** %8, align 8
  %52 = call %struct.option* @add_checkout_path_options(%struct.checkout_opts* %7, %struct.option* %51)
  store %struct.option* %52, %struct.option** %8, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i8**, i8*** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.option*, %struct.option** %8, align 8
  %57 = load i32, i32* @restore_usage, align 4
  %58 = call i32 @checkout_main(i32 %53, i8** %54, i8* %55, %struct.checkout_opts* %7, %struct.option* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.option*, %struct.option** %8, align 8
  %60 = call i32 @FREE_AND_NULL(%struct.option* %59)
  %61 = load i32, i32* %10, align 4
  ret i32 %61
}

declare dso_local i32 @OPT_STRING(i8 signext, i8*, i32*, i8*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i32*, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @memset(%struct.checkout_opts*, i32, i32) #1

declare dso_local %struct.option* @parse_options_dup(%struct.option*) #1

declare dso_local %struct.option* @add_common_options(%struct.checkout_opts*, %struct.option*) #1

declare dso_local %struct.option* @add_checkout_path_options(%struct.checkout_opts*, %struct.option*) #1

declare dso_local i32 @checkout_main(i32, i8**, i8*, %struct.checkout_opts*, %struct.option*, i32) #1

declare dso_local i32 @FREE_AND_NULL(%struct.option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
