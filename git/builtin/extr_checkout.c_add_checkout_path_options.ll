; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_add_checkout_path_options.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_add_checkout_path_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout_opts = type { i32, i32, i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ours\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"checkout our version for unmerged files\00", align 1
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"theirs\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"checkout their version for unmerged files\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"patch\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"select hunks interactively\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"ignore-skip-worktree-bits\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"do not limit pathspecs to sparse entries only\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.option* (%struct.checkout_opts*, %struct.option*)* @add_checkout_path_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.option* @add_checkout_path_options(%struct.checkout_opts* %0, %struct.option* %1) #0 {
  %3 = alloca %struct.checkout_opts*, align 8
  %4 = alloca %struct.option*, align 8
  %5 = alloca [5 x %struct.option], align 16
  %6 = alloca %struct.option*, align 8
  store %struct.checkout_opts* %0, %struct.checkout_opts** %3, align 8
  store %struct.option* %1, %struct.option** %4, align 8
  %7 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %5, i64 0, i64 0
  %8 = load %struct.checkout_opts*, %struct.checkout_opts** %3, align 8
  %9 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %8, i32 0, i32 2
  %10 = call i32 @N_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %12 = call i32 @OPT_SET_INT_F(i8 signext 50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %9, i32 %10, i32 2, i32 %11)
  %13 = getelementptr inbounds %struct.option, %struct.option* %7, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.option, %struct.option* %7, i64 1
  %15 = load %struct.checkout_opts*, %struct.checkout_opts** %3, align 8
  %16 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %15, i32 0, i32 2
  %17 = call i32 @N_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %18 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %19 = call i32 @OPT_SET_INT_F(i8 signext 51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %16, i32 %17, i32 3, i32 %18)
  %20 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %22 = load %struct.checkout_opts*, %struct.checkout_opts** %3, align 8
  %23 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %22, i32 0, i32 1
  %24 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %25 = call i32 @OPT_BOOL(i8 signext 112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %23, i32 %24)
  %26 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %28 = load %struct.checkout_opts*, %struct.checkout_opts** %3, align 8
  %29 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %28, i32 0, i32 0
  %30 = call i32 @N_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %31 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32* %29, i32 %30)
  %32 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.option, %struct.option* %27, i64 1
  %34 = call i32 (...) @OPT_END()
  %35 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.option*, %struct.option** %4, align 8
  %37 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %5, i64 0, i64 0
  %38 = call %struct.option* @parse_options_concat(%struct.option* %36, %struct.option* %37)
  store %struct.option* %38, %struct.option** %6, align 8
  %39 = load %struct.option*, %struct.option** %4, align 8
  %40 = call i32 @free(%struct.option* %39)
  %41 = load %struct.option*, %struct.option** %6, align 8
  ret %struct.option* %41
}

declare dso_local i32 @OPT_SET_INT_F(i8 signext, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i32*, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local %struct.option* @parse_options_concat(%struct.option*, %struct.option*) #1

declare dso_local i32 @free(%struct.option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
