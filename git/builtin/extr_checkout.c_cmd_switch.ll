; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_cmd_switch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_cmd_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout_opts = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"create and switch to a new branch\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"force-create\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"create/reset and switch to a branch\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"guess\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"second guess 'git switch <no-such-branch>'\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"discard-changes\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"throw away local modifications\00", align 1
@switch_branch_usage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_switch(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.checkout_opts, align 8
  %8 = alloca %struct.option*, align 8
  %9 = alloca [5 x %struct.option], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.option* null, %struct.option** %8, align 8
  %11 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %9, i64 0, i64 0
  %12 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 11
  %13 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @N_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @OPT_STRING(i8 signext 99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %12, i32 %13, i32 %14)
  %16 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.option, %struct.option* %11, i64 1
  %18 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 10
  %19 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %21 = call i32 @OPT_STRING(i8 signext 67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %18, i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %24 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 0
  %25 = call i32 @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %26 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %24, i32 %25)
  %27 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.option, %struct.option* %23, i64 1
  %29 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 1
  %30 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %31 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32* %29, i32 %30)
  %32 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.option, %struct.option* %28, i64 1
  %34 = call i32 (...) @OPT_END()
  %35 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = call i32 @memset(%struct.checkout_opts* %7, i32 0, i32 64)
  %37 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 2
  store i32 1, i32* %38, align 8
  %39 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 9
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 8
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 3
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 7
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 6
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 4
  store i32 1, i32* %44, align 8
  %45 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 5
  store i32 -1, i32* %45, align 4
  %46 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %9, i64 0, i64 0
  %47 = call %struct.option* @parse_options_dup(%struct.option* %46)
  store %struct.option* %47, %struct.option** %8, align 8
  %48 = load %struct.option*, %struct.option** %8, align 8
  %49 = call %struct.option* @add_common_options(%struct.checkout_opts* %7, %struct.option* %48)
  store %struct.option* %49, %struct.option** %8, align 8
  %50 = load %struct.option*, %struct.option** %8, align 8
  %51 = call %struct.option* @add_common_switch_branch_options(%struct.checkout_opts* %7, %struct.option* %50)
  store %struct.option* %51, %struct.option** %8, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i8**, i8*** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.option*, %struct.option** %8, align 8
  %56 = load i32, i32* @switch_branch_usage, align 4
  %57 = call i32 @checkout_main(i32 %52, i8** %53, i8* %54, %struct.checkout_opts* %7, %struct.option* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load %struct.option*, %struct.option** %8, align 8
  %59 = call i32 @FREE_AND_NULL(%struct.option* %58)
  %60 = load i32, i32* %10, align 4
  ret i32 %60
}

declare dso_local i32 @OPT_STRING(i8 signext, i8*, i32*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @memset(%struct.checkout_opts*, i32, i32) #1

declare dso_local %struct.option* @parse_options_dup(%struct.option*) #1

declare dso_local %struct.option* @add_common_options(%struct.checkout_opts*, %struct.option*) #1

declare dso_local %struct.option* @add_common_switch_branch_options(%struct.checkout_opts*, %struct.option*) #1

declare dso_local i32 @checkout_main(i32, i8**, i8*, %struct.checkout_opts*, %struct.option*, i32) #1

declare dso_local i32 @FREE_AND_NULL(%struct.option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
