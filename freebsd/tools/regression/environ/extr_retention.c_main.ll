; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/environ/extr_retention.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/environ/extr_retention.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@environ = common dso_local global i32* null, align 8
@envName = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ok %d - getenv(\22%s\22)\0A\00", align 1
@envValSmall = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"ok %d - setenv(\22%s\22, \22%s\22, 1)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ok %d - unsetenv(\22%s\22)\0A\00", align 1
@envValLarge = common dso_local global i8* null, align 8
@envValAny = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"ok %d - setenv(\22%s\22, \22%s\22, 0)\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"ok %d - old variables point to valid memory\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32* null, i32** @environ, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** @envName, align 8
  %13 = call i8* @getenv(i8* %12)
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i32, i32* %11, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %11, align 4
  %20 = load i8*, i8** @envName, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %19, i8* %20)
  %22 = load i8*, i8** @envName, align 8
  %23 = load i8*, i8** @envValSmall, align 8
  %24 = call i64 @setenv(i8* %22, i8* %23, i32 1)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %17
  %27 = load i8*, i8** @envName, align 8
  %28 = call i8* @getenv(i8* %27)
  store i8* %28, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** @envValSmall, align 8
  %33 = call i64 @strcmp(i8* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %26, %17
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  %40 = load i8*, i8** @envName, align 8
  %41 = load i8*, i8** @envValSmall, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %39, i8* %40, i8* %41)
  %43 = load i8*, i8** @envName, align 8
  %44 = call i32 @unsetenv(i8* %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %50, label %46

46:                                               ; preds = %37
  %47 = load i8*, i8** @envName, align 8
  %48 = call i8* @getenv(i8* %47)
  store i8* %48, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %37
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  %55 = load i8*, i8** @envName, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %54, i8* %55)
  %57 = load i8*, i8** @envName, align 8
  %58 = load i8*, i8** @envValLarge, align 8
  %59 = call i64 @setenv(i8* %57, i8* %58, i32 1)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %52
  %62 = load i8*, i8** @envName, align 8
  %63 = call i8* @getenv(i8* %62)
  store i8* %63, i8** %8, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** @envValLarge, align 8
  %68 = call i64 @strcmp(i8* %66, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65, %61, %52
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  %75 = load i8*, i8** @envName, align 8
  %76 = load i8*, i8** @envValLarge, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %74, i8* %75, i8* %76)
  %78 = load i8*, i8** @envName, align 8
  %79 = load i8*, i8** @envValSmall, align 8
  %80 = call i64 @setenv(i8* %78, i8* %79, i32 1)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %72
  %83 = load i8*, i8** @envName, align 8
  %84 = call i8* @getenv(i8* %83)
  store i8* %84, i8** %9, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** @envValSmall, align 8
  %89 = call i64 @strcmp(i8* %87, i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86, %82, %72
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %86
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  %96 = load i8*, i8** @envName, align 8
  %97 = load i8*, i8** @envValSmall, align 8
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %95, i8* %96, i8* %97)
  %99 = load i8*, i8** @envName, align 8
  %100 = load i8*, i8** @envValAny, align 8
  %101 = call i64 @setenv(i8* %99, i8* %100, i32 0)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %93
  %104 = load i8*, i8** @envName, align 8
  %105 = call i8* @getenv(i8* %104)
  store i8* %105, i8** %10, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = load i8*, i8** %10, align 8
  %109 = load i8*, i8** @envValAny, align 8
  %110 = call i64 @strcmp(i8* %108, i8* %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107, %103, %93
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  %117 = load i8*, i8** @envName, align 8
  %118 = load i8*, i8** @envValAny, align 8
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %116, i8* %117, i8* %118)
  %120 = load i8*, i8** %6, align 8
  %121 = load i8*, i8** @envValSmall, align 8
  %122 = call i64 @strcmp(i8* %120, i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %114
  %125 = load i8*, i8** %8, align 8
  %126 = load i8*, i8** @envValSmall, align 8
  %127 = call i64 @strcmp(i8* %125, i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load i8*, i8** %9, align 8
  %131 = load i8*, i8** @envValSmall, align 8
  %132 = call i64 @strcmp(i8* %130, i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129, %124, %114
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %129
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @EXIT_SUCCESS, align 4
  %141 = call i32 @exit(i32 %140) #3
  unreachable
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @setenv(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @unsetenv(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
