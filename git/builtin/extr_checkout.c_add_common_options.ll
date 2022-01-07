; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_add_common_options.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_add_common_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout_opts = type { i32, i32, i32, i32 }
%struct.option = type { i8*, i8*, i8*, i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"suppress progress reporting\00", align 1
@OPTION_CALLBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"recurse-submodules\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"checkout\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"control recursive updating of submodules\00", align 1
@PARSE_OPT_OPTARG = common dso_local global i32 0, align 4
@option_parse_recurse_submodules_worktree_updater = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"force progress reporting\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"perform a 3-way merge with the new branch\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"conflict\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"conflict style (merge or diff3)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.option* (%struct.checkout_opts*, %struct.option*)* @add_common_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.option* @add_common_options(%struct.checkout_opts* %0, %struct.option* %1) #0 {
  %3 = alloca %struct.checkout_opts*, align 8
  %4 = alloca %struct.option*, align 8
  %5 = alloca [6 x %struct.option], align 16
  %6 = alloca %struct.option*, align 8
  store %struct.checkout_opts* %0, %struct.checkout_opts** %3, align 8
  store %struct.option* %1, %struct.option** %4, align 8
  %7 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %5, i64 0, i64 0
  %8 = load %struct.checkout_opts*, %struct.checkout_opts** %3, align 8
  %9 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %8, i32 0, i32 3
  %10 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  call void @OPT__QUIET(%struct.option* sret %7, i32* %9, i32 %10)
  %11 = getelementptr inbounds %struct.option, %struct.option* %7, i64 1
  %12 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  %13 = load i32, i32* @OPTION_CALLBACK, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %12, align 16
  %16 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 1
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 16
  %18 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 3
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 4
  store i32 ptrtoint ([9 x i8]* @.str.2 to i32), i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 5
  store i32* bitcast ([41 x i8]* @.str.3 to i32*), i32** %20, align 16
  %21 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 6
  %22 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 7
  %24 = load i32, i32* @option_parse_recurse_submodules_worktree_updater, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.option, %struct.option* %11, i64 1
  %26 = load %struct.checkout_opts*, %struct.checkout_opts** %3, align 8
  %27 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %26, i32 0, i32 2
  %28 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %25, i8 signext 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %27, i32 %28)
  %29 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %30 = load %struct.checkout_opts*, %struct.checkout_opts** %3, align 8
  %31 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %30, i32 0, i32 1
  %32 = call i32 @N_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %29, i8 signext 109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %31, i32 %32)
  %33 = getelementptr inbounds %struct.option, %struct.option* %29, i64 1
  %34 = load %struct.checkout_opts*, %struct.checkout_opts** %3, align 8
  %35 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %34, i32 0, i32 0
  %36 = call i32 @N_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %37 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %33, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %35, i32 %36, i32 %37)
  %38 = getelementptr inbounds %struct.option, %struct.option* %33, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %38)
  %39 = load %struct.option*, %struct.option** %4, align 8
  %40 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %5, i64 0, i64 0
  %41 = call %struct.option* @parse_options_concat(%struct.option* %39, %struct.option* %40)
  store %struct.option* %41, %struct.option** %6, align 8
  %42 = load %struct.option*, %struct.option** %4, align 8
  %43 = call i32 @free(%struct.option* %42)
  %44 = load %struct.option*, %struct.option** %6, align 8
  ret %struct.option* %44
}

declare dso_local void @OPT__QUIET(%struct.option* sret, i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local void @OPT_BOOL(%struct.option* sret, i8 signext, i8*, i32*, i32) #1

declare dso_local void @OPT_STRING(%struct.option* sret, i32, i8*, i32*, i32, i32) #1

declare dso_local void @OPT_END(%struct.option* sret, ...) #1

declare dso_local %struct.option* @parse_options_concat(%struct.option*, %struct.option*) #1

declare dso_local i32 @free(%struct.option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
