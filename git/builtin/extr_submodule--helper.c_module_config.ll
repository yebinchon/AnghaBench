; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"check-writeable\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"check if it is safe to write to the .gitmodules file\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"unset the config in the .gitmodules file\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"git submodule--helper config <name> [<value>]\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"git submodule--helper config --unset <name>\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"git submodule--helper config --check-writeable\00", align 1
@PARSE_OPT_KEEP_ARGV0 = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [66 x i8] c"please make sure that the .gitmodules file is in the working tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @module_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_config(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x %struct.option], align 4
  %10 = alloca [4 x i8*], align 16
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %9, i64 0, i64 0
  %13 = call i8* @N_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %8, i8* %13, i32 1)
  %15 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.option, %struct.option* %12, i64 1
  %17 = call i8* @N_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 @OPT_CMDMODE(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %8, i8* %17, i32 2)
  %19 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %21 = call i32 (...) @OPT_END()
  %22 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %24 = call i8* @N_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 1
  %26 = call i8* @N_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  store i8* %26, i8** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 1
  %28 = call i8* @N_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  store i8* %28, i8** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* null, i8** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i8**, i8*** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %9, i64 0, i64 0
  %34 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %35 = load i32, i32* @PARSE_OPT_KEEP_ARGV0, align 4
  %36 = call i32 @parse_options(i32 %30, i8** %31, i8* %32, %struct.option* %33, i8** %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %47

39:                                               ; preds = %3
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = call i64 (...) @is_writing_gitmodules_ok()
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 -1
  store i32 %46, i32* %4, align 4
  br label %93

47:                                               ; preds = %39, %3
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @the_repository, align 4
  %55 = load i8**, i8*** %6, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @print_config_from_gitmodules(i32 %54, i8* %57)
  store i32 %58, i32* %4, align 4
  br label %93

59:                                               ; preds = %50, %47
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %89

68:                                               ; preds = %65, %59
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i8**, i8*** %6, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 2
  %74 = load i8*, i8** %73, align 8
  br label %76

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i8* [ %74, %71 ], [ null, %75 ]
  store i8* %77, i8** %11, align 8
  %78 = call i64 (...) @is_writing_gitmodules_ok()
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0))
  %82 = call i32 @die(i32 %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i8**, i8*** %6, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @config_set_in_gitmodules_file_gently(i8* %86, i8* %87)
  store i32 %88, i32* %4, align 4
  br label %93

89:                                               ; preds = %65, %62
  %90 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %91 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %9, i64 0, i64 0
  %92 = call i32 @usage_with_options(i8** %90, %struct.option* %91)
  br label %93

93:                                               ; preds = %89, %83, %53, %42
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @OPT_CMDMODE(i32, i8*, i32*, i8*, i32) #1

declare dso_local i8* @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #1

declare dso_local i64 @is_writing_gitmodules_ok(...) #1

declare dso_local i32 @print_config_from_gitmodules(i32, i8*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @config_set_in_gitmodules_file_gently(i8*, i8*) #1

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
