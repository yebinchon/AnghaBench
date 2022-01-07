; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_config.c_option_parse_type.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_config.c_option_parse_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@TYPE_BOOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@TYPE_INT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"bool-or-int\00", align 1
@TYPE_BOOL_OR_INT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@TYPE_PATH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"expiry-date\00", align 1
@TYPE_EXPIRY_DATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@TYPE_COLOR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"unrecognized --type argument, %s\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"only one type at a time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @option_parse_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option_parse_type(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.option*, %struct.option** %5, align 8
  %14 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %4, align 4
  br label %87

16:                                               ; preds = %3
  %17 = load %struct.option*, %struct.option** %5, align 8
  %18 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %68, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @TYPE_BOOL, align 4
  store i32 %27, i32* %8, align 4
  br label %67

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @TYPE_INT, align 4
  store i32 %33, i32* %8, align 4
  br label %66

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @TYPE_BOOL_OR_INT, align 4
  store i32 %39, i32* %8, align 4
  br label %65

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @TYPE_PATH, align 4
  store i32 %45, i32* %8, align 4
  br label %64

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @TYPE_EXPIRY_DATE, align 4
  store i32 %51, i32* %8, align 4
  br label %63

52:                                               ; preds = %46
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @TYPE_COLOR, align 4
  store i32 %57, i32* %8, align 4
  br label %62

58:                                               ; preds = %52
  %59 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @die(i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %58, %56
  br label %63

63:                                               ; preds = %62, %50
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %38
  br label %66

66:                                               ; preds = %65, %32
  br label %67

67:                                               ; preds = %66, %26
  br label %68

68:                                               ; preds = %67, %16
  %69 = load %struct.option*, %struct.option** %5, align 8
  %70 = getelementptr inbounds %struct.option, %struct.option* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %9, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %82 = call i32 @error(i32 %81)
  %83 = call i32 (...) @usage_builtin_config()
  br label %84

84:                                               ; preds = %80, %75, %68
  %85 = load i32, i32* %8, align 4
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %84, %12
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @usage_builtin_config(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
