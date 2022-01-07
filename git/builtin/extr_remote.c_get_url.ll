; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_get_url.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_get_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote = type { i8**, i32, i8**, i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"query push URLs rather than fetch URLs\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"return all URLs\00", align 1
@builtin_remote_geturl_usage = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"No such remote '%s'\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"no URLs configured for remote '%s'\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @get_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_url(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.remote*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca [3 x %struct.option], align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %13 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %12, i64 0, i64 0
  %14 = call i32 @N_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %6, i32 %14)
  %16 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %18 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %7, i32 %18)
  %20 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %22 = call i32 (...) @OPT_END()
  %23 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %12, i64 0, i64 0
  %27 = load i32, i32* @builtin_remote_geturl_usage, align 4
  %28 = call i32 @parse_options(i32 %24, i8** %25, i32* null, %struct.option* %26, i32 %27, i32 0)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @builtin_remote_geturl_usage, align 4
  %33 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %12, i64 0, i64 0
  %34 = call i32 @usage_with_options(i32 %32, %struct.option* %33)
  br label %35

35:                                               ; preds = %31, %2
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call %struct.remote* @remote_get(i8* %39)
  store %struct.remote* %40, %struct.remote** %9, align 8
  %41 = load %struct.remote*, %struct.remote** %9, align 8
  %42 = call i32 @remote_is_configured(%struct.remote* %41, i32 1)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %35
  %45 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @die(i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %44, %35
  store i32 0, i32* %11, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.remote*, %struct.remote** %9, align 8
  %53 = getelementptr inbounds %struct.remote, %struct.remote* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  store i8** %54, i8*** %10, align 8
  %55 = load %struct.remote*, %struct.remote** %9, align 8
  %56 = getelementptr inbounds %struct.remote, %struct.remote* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load %struct.remote*, %struct.remote** %9, align 8
  %63 = getelementptr inbounds %struct.remote, %struct.remote* %62, i32 0, i32 2
  %64 = load i8**, i8*** %63, align 8
  store i8** %64, i8*** %10, align 8
  %65 = load %struct.remote*, %struct.remote** %9, align 8
  %66 = getelementptr inbounds %struct.remote, %struct.remote* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %61, %58
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @die(i32 %72, i8* %73)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %90, %78
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i8**, i8*** %10, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @printf_ln(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %79

93:                                               ; preds = %79
  br label %98

94:                                               ; preds = %75
  %95 = load i8**, i8*** %10, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @printf_ln(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %94, %93
  ret i32 0
}

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i32*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local %struct.remote* @remote_get(i8*) #1

declare dso_local i32 @remote_is_configured(%struct.remote*, i32) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @printf_ln(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
