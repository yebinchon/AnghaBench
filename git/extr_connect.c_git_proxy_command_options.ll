; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_git_proxy_command_options.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_git_proxy_command_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"core.gitproxy\00", align 1
@git_proxy_command = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c" for \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_proxy_command_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_proxy_command_options(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %100, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %9, align 4
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i64, i64* @git_proxy_command, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %105

23:                                               ; preds = %16
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @config_error_nonbool(i8* %27)
  store i32 %28, i32* %4, align 4
  br label %105

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @strstr(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strlen(i8* %35)
  store i32 %36, i32* %9, align 4
  br label %84

37:                                               ; preds = %29
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 5
  %40 = call i32 @strlen(i8* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 -1, i32* %9, align 4
  br label %83

45:                                               ; preds = %37
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 5
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @strncmp(i8* %47, i8* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %74, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %64, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 46
  br i1 %73, label %74, label %81

74:                                               ; preds = %63, %59
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %9, align 4
  br label %82

81:                                               ; preds = %63, %45
  store i32 -1, i32* %9, align 4
  br label %82

82:                                               ; preds = %81, %74
  br label %83

83:                                               ; preds = %82, %44
  br label %84

84:                                               ; preds = %83, %34
  %85 = load i32, i32* %9, align 4
  %86 = icmp sle i32 0, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 4
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @memcmp(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %94, %90, %87
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @xmemdupz(i8* %96, i32 %97)
  store i64 %98, i64* @git_proxy_command, align 8
  br label %99

99:                                               ; preds = %95, %84
  store i32 0, i32* %4, align 4
  br label %105

100:                                              ; preds = %3
  %101 = load i8*, i8** %5, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @git_default_config(i8* %101, i8* %102, i8* %103)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %100, %99, %26, %22
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @xmemdupz(i8*, i32) #1

declare dso_local i32 @git_default_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
