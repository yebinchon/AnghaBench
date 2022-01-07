; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_add_common_switch_branch_options.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_add_common_switch_branch_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout_opts = type { i32, i32, i32, i32, i32, i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"detach HEAD at named commit\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"track\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"set upstream info for new branch\00", align 1
@BRANCH_TRACK_EXPLICIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"force checkout (throw away local modifications)\00", align 1
@PARSE_OPT_NOCOMPLETE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"orphan\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"new-branch\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"new unparented branch\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"overwrite-ignore\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"update ignored files (default)\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"ignore-other-worktrees\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"do not check if another worktree is holding the given ref\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.option* (%struct.checkout_opts*, %struct.option*)* @add_common_switch_branch_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.option* @add_common_switch_branch_options(%struct.checkout_opts* %0, %struct.option* %1) #0 {
  %3 = alloca %struct.checkout_opts*, align 8
  %4 = alloca %struct.option*, align 8
  %5 = alloca [7 x %struct.option], align 16
  %6 = alloca %struct.option*, align 8
  store %struct.checkout_opts* %0, %struct.checkout_opts** %3, align 8
  store %struct.option* %1, %struct.option** %4, align 8
  %7 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %5, i64 0, i64 0
  %8 = load %struct.checkout_opts*, %struct.checkout_opts** %3, align 8
  %9 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %8, i32 0, i32 5
  %10 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @OPT_BOOL(i8 signext 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %9, i32 %10)
  %12 = getelementptr inbounds %struct.option, %struct.option* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.option, %struct.option* %7, i64 1
  %14 = load %struct.checkout_opts*, %struct.checkout_opts** %3, align 8
  %15 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %14, i32 0, i32 4
  %16 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i32, i32* @BRANCH_TRACK_EXPLICIT, align 4
  %18 = call i32 @OPT_SET_INT(i8 signext 116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %15, i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %21 = load %struct.checkout_opts*, %struct.checkout_opts** %3, align 8
  %22 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %21, i32 0, i32 3
  %23 = call i32 @N_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32, i32* @PARSE_OPT_NOCOMPLETE, align 4
  %25 = call i32 @OPT__FORCE(i32* %22, i32 %23, i32 %24)
  %26 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.option, %struct.option* %20, i64 1
  %28 = load %struct.checkout_opts*, %struct.checkout_opts** %3, align 8
  %29 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %28, i32 0, i32 2
  %30 = call i32 @N_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %31 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %32 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %29, i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.option, %struct.option* %27, i64 1
  %35 = load %struct.checkout_opts*, %struct.checkout_opts** %3, align 8
  %36 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %35, i32 0, i32 1
  %37 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %38 = load i32, i32* @PARSE_OPT_NOCOMPLETE, align 4
  %39 = call i32 @OPT_BOOL_F(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32* %36, i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.option, %struct.option* %34, i64 1
  %42 = load %struct.checkout_opts*, %struct.checkout_opts** %3, align 8
  %43 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %42, i32 0, i32 0
  %44 = call i32 @N_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0))
  %45 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32* %43, i32 %44)
  %46 = getelementptr inbounds %struct.option, %struct.option* %41, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.option, %struct.option* %41, i64 1
  %48 = call i32 (...) @OPT_END()
  %49 = getelementptr inbounds %struct.option, %struct.option* %47, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.option*, %struct.option** %4, align 8
  %51 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %5, i64 0, i64 0
  %52 = call %struct.option* @parse_options_concat(%struct.option* %50, %struct.option* %51)
  store %struct.option* %52, %struct.option** %6, align 8
  %53 = load %struct.option*, %struct.option** %4, align 8
  %54 = call i32 @free(%struct.option* %53)
  %55 = load %struct.option*, %struct.option** %6, align 8
  ret %struct.option* %55
}

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_SET_INT(i8 signext, i8*, i32*, i32, i32) #1

declare dso_local i32 @OPT__FORCE(i32*, i32, i32) #1

declare dso_local i32 @OPT_STRING(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @OPT_BOOL_F(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local %struct.option* @parse_options_concat(%struct.option*, %struct.option*) #1

declare dso_local i32 @free(%struct.option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
