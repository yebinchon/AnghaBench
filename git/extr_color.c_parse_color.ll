; ModuleID = '/home/carl/AnghaBench/git/extr_color.c_parse_color.c'
source_filename = "/home/carl/AnghaBench/git/extr_color.c_parse_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color = type { i32, i8*, i32, i32, i32 }

@parse_color.color_names = internal constant [8 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@COLOR_NORMAL = common dso_local global i8* null, align 8
@COLOR_RGB = common dso_local global i8* null, align 8
@COLOR_ANSI = common dso_local global i8* null, align 8
@COLOR_256 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.color*, i8*, i32)* @parse_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_color(%struct.color* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.color*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.color* %0, %struct.color** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @match_word(i8* %11, i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i8*, i8** @COLOR_NORMAL, align 8
  %17 = load %struct.color*, %struct.color** %5, align 8
  %18 = getelementptr inbounds %struct.color, %struct.color* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  store i32 0, i32* %4, align 4
  br label %128

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 35
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load %struct.color*, %struct.color** %5, align 8
  %32 = getelementptr inbounds %struct.color, %struct.color* %31, i32 0, i32 4
  %33 = call i32 @get_hex_color(i8* %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %28
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  %38 = load %struct.color*, %struct.color** %5, align 8
  %39 = getelementptr inbounds %struct.color, %struct.color* %38, i32 0, i32 3
  %40 = call i32 @get_hex_color(i8* %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 5
  %45 = load %struct.color*, %struct.color** %5, align 8
  %46 = getelementptr inbounds %struct.color, %struct.color* %45, i32 0, i32 2
  %47 = call i32 @get_hex_color(i8* %44, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load i8*, i8** @COLOR_RGB, align 8
  %51 = load %struct.color*, %struct.color** %5, align 8
  %52 = getelementptr inbounds %struct.color, %struct.color* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  store i32 0, i32* %4, align 4
  br label %128

53:                                               ; preds = %42, %35, %28
  br label %54

54:                                               ; preds = %53, %22, %19
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %76, %54
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @parse_color.color_names, i64 0, i64 0))
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i8*], [8 x i8*]* @parse_color.color_names, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @match_word(i8* %60, i32 %61, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load i8*, i8** @COLOR_ANSI, align 8
  %70 = load %struct.color*, %struct.color** %5, align 8
  %71 = getelementptr inbounds %struct.color, %struct.color* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.color*, %struct.color** %5, align 8
  %74 = getelementptr inbounds %struct.color, %struct.color* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  store i32 0, i32* %4, align 4
  br label %128

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %55

79:                                               ; preds = %55
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @strtol(i8* %80, i8** %8, i32 10)
  store i64 %81, i64* %10, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp eq i64 %86, %88
  br i1 %89, label %90, label %127

90:                                               ; preds = %79
  %91 = load i64, i64* %10, align 8
  %92 = icmp slt i64 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %126

94:                                               ; preds = %90
  %95 = load i64, i64* %10, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i8*, i8** @COLOR_NORMAL, align 8
  %99 = load %struct.color*, %struct.color** %5, align 8
  %100 = getelementptr inbounds %struct.color, %struct.color* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  store i32 0, i32* %4, align 4
  br label %128

101:                                              ; preds = %94
  %102 = load i64, i64* %10, align 8
  %103 = icmp slt i64 %102, 8
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load i8*, i8** @COLOR_ANSI, align 8
  %106 = load %struct.color*, %struct.color** %5, align 8
  %107 = getelementptr inbounds %struct.color, %struct.color* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load i64, i64* %10, align 8
  %109 = trunc i64 %108 to i32
  %110 = load %struct.color*, %struct.color** %5, align 8
  %111 = getelementptr inbounds %struct.color, %struct.color* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  store i32 0, i32* %4, align 4
  br label %128

112:                                              ; preds = %101
  %113 = load i64, i64* %10, align 8
  %114 = icmp slt i64 %113, 256
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load i8*, i8** @COLOR_256, align 8
  %117 = load %struct.color*, %struct.color** %5, align 8
  %118 = getelementptr inbounds %struct.color, %struct.color* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load i64, i64* %10, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.color*, %struct.color** %5, align 8
  %122 = getelementptr inbounds %struct.color, %struct.color* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  store i32 0, i32* %4, align 4
  br label %128

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125, %93
  br label %127

127:                                              ; preds = %126, %79
  store i32 -1, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %115, %104, %97, %68, %49, %15
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i64 @match_word(i8*, i32, i8*) #1

declare dso_local i32 @get_hex_color(i8*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
