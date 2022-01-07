; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_get_accent_definition_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_get_accent_definition_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32** }

@number = common dso_local global i8* null, align 8
@F_ACC = common dso_local global i64 0, align 8
@L_ACC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"duplicated accent key definition\00", align 1
@token = common dso_local global i8 0, align 1
@letter = common dso_local global i8* null, align 8
@NUM_ACCENTCHARS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"too many accented characters, ignored\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @get_accent_definition_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_accent_definition_line(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %8 = load i8*, i8** @number, align 8
  %9 = call i64 @ACC(i8* %8)
  %10 = load i64, i64* @F_ACC, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** @number, align 8
  %14 = call i64 @ACC(i8* %13)
  %15 = load i64, i64* @L_ACC, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %1
  store i32 -1, i32* %2, align 4
  br label %126

18:                                               ; preds = %12
  %19 = load i8*, i8** @number, align 8
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %18
  %33 = call signext i8 (...) @yylex()
  store i8 %33, i8* @token, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %55 [
    i32 129, label %35
    i32 128, label %45
  ]

35:                                               ; preds = %32
  %36 = load i8*, i8** @letter, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 %37, i64* %44, align 8
  br label %56

45:                                               ; preds = %32
  %46 = load i8*, i8** @number, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 %47, i64* %54, align 8
  br label %56

55:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %126

56:                                               ; preds = %45, %35
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %92, %90, %56
  %58 = call signext i8 (...) @yylex()
  store i8 %58, i8* @token, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 40
  br i1 %60, label %61, label %123

61:                                               ; preds = %57
  %62 = call signext i8 (...) @yylex()
  store i8 %62, i8* @token, align 1
  %63 = sext i8 %62 to i32
  switch i32 %63, label %70 [
    i32 129, label %64
    i32 128, label %67
  ]

64:                                               ; preds = %61
  %65 = load i8*, i8** @letter, align 8
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %5, align 4
  br label %71

67:                                               ; preds = %61
  %68 = load i8*, i8** @number, align 8
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %5, align 4
  br label %71

70:                                               ; preds = %61
  store i32 -1, i32* %2, align 4
  br label %126

71:                                               ; preds = %67, %64
  %72 = call signext i8 (...) @yylex()
  store i8 %72, i8* @token, align 1
  %73 = sext i8 %72 to i32
  switch i32 %73, label %80 [
    i32 129, label %74
    i32 128, label %77
  ]

74:                                               ; preds = %71
  %75 = load i8*, i8** @letter, align 8
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %6, align 4
  br label %81

77:                                               ; preds = %71
  %78 = load i8*, i8** @number, align 8
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* %6, align 4
  br label %81

80:                                               ; preds = %71
  store i32 -1, i32* %2, align 4
  br label %126

81:                                               ; preds = %77, %74
  %82 = call signext i8 (...) @yylex()
  store i8 %82, i8* @token, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 41
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 -1, i32* %2, align 4
  br label %126

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @NUM_ACCENTCHARS, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %57

92:                                               ; preds = %86
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %93, i32* %106, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 %107, i32* %120, align 4
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %57

123:                                              ; preds = %57
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %123, %85, %80, %70, %55, %17
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i64 @ACC(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local signext i8 @yylex(...) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
