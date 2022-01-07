; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_cmd_checkout.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_cmd_checkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout_opts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"create and checkout a new branch\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"create/reset and checkout a branch\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"create reflog for new branch\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"guess\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"second guess 'git checkout <no-such-branch>' (default)\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"use overlay mode (default)\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@checkout_usage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_checkout(i32 %0, i8** %1, i8* %2) #0 {
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
  %12 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 14
  %13 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @OPT_STRING(i8 signext 98, i32* null, i32* %12, i32 %13, i32 %14)
  %16 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.option, %struct.option* %11, i64 1
  %18 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 13
  %19 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @OPT_STRING(i8 signext 66, i32* null, i32* %18, i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %24 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 0
  %25 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 @OPT_BOOL(i8 signext 108, i8* null, i32* %24, i32 %25)
  %27 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.option, %struct.option* %23, i64 1
  %29 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 1
  %30 = call i32 @N_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %31 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %29, i32 %30)
  %32 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.option, %struct.option* %28, i64 1
  %34 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 2
  %35 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %36 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %34, i32 %35)
  %37 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.option, %struct.option* %33, i64 1
  %39 = call i32 (...) @OPT_END()
  %40 = getelementptr inbounds %struct.option, %struct.option* %38, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = call i32 @memset(%struct.checkout_opts* %7, i32 0, i32 64)
  %42 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 3
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 4
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 5
  store i32 1, i32* %45, align 4
  %46 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 6
  store i32 1, i32* %46, align 8
  %47 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 7
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 8
  store i32 1, i32* %48, align 8
  %49 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 12
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 9
  store i32 1, i32* %50, align 4
  %51 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 2
  store i32 -1, i32* %51, align 8
  %52 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 10
  store i32 -2, i32* %52, align 8
  %53 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 11
  store i32 -2, i32* %53, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %65

56:                                               ; preds = %3
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 3
  store i32 0, i32* %63, align 4
  %64 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %7, i32 0, i32 4
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %56, %3
  %66 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %9, i64 0, i64 0
  %67 = call %struct.option* @parse_options_dup(%struct.option* %66)
  store %struct.option* %67, %struct.option** %8, align 8
  %68 = load %struct.option*, %struct.option** %8, align 8
  %69 = call %struct.option* @add_common_options(%struct.checkout_opts* %7, %struct.option* %68)
  store %struct.option* %69, %struct.option** %8, align 8
  %70 = load %struct.option*, %struct.option** %8, align 8
  %71 = call %struct.option* @add_common_switch_branch_options(%struct.checkout_opts* %7, %struct.option* %70)
  store %struct.option* %71, %struct.option** %8, align 8
  %72 = load %struct.option*, %struct.option** %8, align 8
  %73 = call %struct.option* @add_checkout_path_options(%struct.checkout_opts* %7, %struct.option* %72)
  store %struct.option* %73, %struct.option** %8, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.option*, %struct.option** %8, align 8
  %78 = load i32, i32* @checkout_usage, align 4
  %79 = call i32 @checkout_main(i32 %74, i8** %75, i8* %76, %struct.checkout_opts* %7, %struct.option* %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.option*, %struct.option** %8, align 8
  %81 = call i32 @FREE_AND_NULL(%struct.option* %80)
  %82 = load i32, i32* %10, align 4
  ret i32 %82
}

declare dso_local i32 @OPT_STRING(i8 signext, i32*, i32*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i32*, i32) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @memset(%struct.checkout_opts*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.option* @parse_options_dup(%struct.option*) #1

declare dso_local %struct.option* @add_common_options(%struct.checkout_opts*, %struct.option*) #1

declare dso_local %struct.option* @add_common_switch_branch_options(%struct.checkout_opts*, %struct.option*) #1

declare dso_local %struct.option* @add_checkout_path_options(%struct.checkout_opts*, %struct.option*) #1

declare dso_local i32 @checkout_main(i32, i8**, i8*, %struct.checkout_opts*, %struct.option*, i32) #1

declare dso_local i32 @FREE_AND_NULL(%struct.option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
