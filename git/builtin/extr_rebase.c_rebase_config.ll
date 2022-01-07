; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_rebase_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_rebase_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rebase_options = type { i32, i8*, i8*, i32*, i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"rebase.stat\00", align 1
@REBASE_DIFFSTAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"rebase.autosquash\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"commit.gpgsign\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"rebase.autostash\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"rebase.reschedulefailedexec\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"rebase.usebuiltin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @rebase_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebase_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rebase_options*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.rebase_options*
  store %struct.rebase_options* %10, %struct.rebase_options** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @git_config_bool(i8* %15, i8* %16)
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* @REBASE_DIFFSTAT, align 4
  %21 = load %struct.rebase_options*, %struct.rebase_options** %8, align 8
  %22 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %32

25:                                               ; preds = %14
  %26 = load i32, i32* @REBASE_DIFFSTAT, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.rebase_options*, %struct.rebase_options** %8, align 8
  %29 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %25, %19
  store i32 0, i32* %4, align 4
  br label %101

33:                                               ; preds = %3
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @git_config_bool(i8* %38, i8* %39)
  %41 = load %struct.rebase_options*, %struct.rebase_options** %8, align 8
  %42 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  store i32 0, i32* %4, align 4
  br label %101

43:                                               ; preds = %33
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %43
  %48 = load %struct.rebase_options*, %struct.rebase_options** %8, align 8
  %49 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @free(i32* %50)
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @git_config_bool(i8* %52, i8* %53)
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = call i32* @xstrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %59

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32* [ %57, %56 ], [ null, %58 ]
  %61 = load %struct.rebase_options*, %struct.rebase_options** %8, align 8
  %62 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %61, i32 0, i32 3
  store i32* %60, i32** %62, align 8
  store i32 0, i32* %4, align 4
  br label %101

63:                                               ; preds = %43
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i8* @git_config_bool(i8* %68, i8* %69)
  %71 = load %struct.rebase_options*, %struct.rebase_options** %8, align 8
  %72 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  store i32 0, i32* %4, align 4
  br label %101

73:                                               ; preds = %63
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i8* @git_config_bool(i8* %78, i8* %79)
  %81 = load %struct.rebase_options*, %struct.rebase_options** %8, align 8
  %82 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  store i32 0, i32* %4, align 4
  br label %101

83:                                               ; preds = %73
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %5, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i8* @git_config_bool(i8* %88, i8* %89)
  %91 = icmp ne i8* %90, null
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = load %struct.rebase_options*, %struct.rebase_options** %8, align 8
  %95 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  store i32 0, i32* %4, align 4
  br label %101

96:                                               ; preds = %83
  %97 = load i8*, i8** %5, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @git_default_config(i8* %97, i8* %98, i8* %99)
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %96, %87, %77, %67, %59, %37, %32
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @git_config_bool(i8*, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @xstrdup(i8*) #1

declare dso_local i32 @git_default_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
