; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_biosmptable.c_biosmptable_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ncpus/extr_biosmptable.c_biosmptable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"MPTable: Found CPU APIC ID %d %s\00", align 1
@PROCENTRY_FLAG_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"unknown mptable entry type (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @biosmptable_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 (...) @memopen()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %108

11:                                               ; preds = %0
  %12 = call %struct.TYPE_8__* (...) @biosmptable_find_mpfps()
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %93

16:                                               ; preds = %11
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 2, i32* %6, align 4
  br label %92

22:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @PTOV(i32 %25)
  %27 = call %struct.TYPE_8__* @biosmptable_check_mpcth(i32 %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %3, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %91

30:                                               ; preds = %22
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 1
  %33 = bitcast %struct.TYPE_8__* %32 to i8*
  store i8* %33, i8** %4, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %86, %30
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %89

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %81 [
    i32 0, label %44
    i32 1, label %72
    i32 2, label %75
    i32 3, label %78
    i32 4, label %78
  ]

44:                                               ; preds = %40
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = bitcast i8* %47 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %5, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = trunc i32 %51 to i8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PROCENTRY_FLAG_EN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %61 = call i32 (i8*, i8, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8 signext %52, i8* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PROCENTRY_FLAG_EN, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %44
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %44
  br label %85

72:                                               ; preds = %40
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 4
  store i8* %74, i8** %4, align 8
  br label %85

75:                                               ; preds = %40
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  store i8* %77, i8** %4, align 8
  br label %85

78:                                               ; preds = %40, %40
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  store i8* %80, i8** %4, align 8
  br label %85

81:                                               ; preds = %40
  %82 = load i8*, i8** %4, align 8
  %83 = load i8, i8* %82, align 1
  %84 = call i32 (i8*, i8, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8 signext %83)
  br label %90

85:                                               ; preds = %78, %75, %72, %71
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %34

89:                                               ; preds = %34
  br label %90

90:                                               ; preds = %89, %81
  br label %91

91:                                               ; preds = %90, %22
  br label %92

92:                                               ; preds = %91, %21
  br label %93

93:                                               ; preds = %92, %15
  %94 = call i32 (...) @memclose()
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = icmp ne %struct.TYPE_8__* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = call i32 @free(%struct.TYPE_8__* %98)
  br label %100

100:                                              ; preds = %97, %93
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %102 = icmp ne %struct.TYPE_8__* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %105 = call i32 @free(%struct.TYPE_8__* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %1, align 4
  br label %108

108:                                              ; preds = %106, %10
  %109 = load i32, i32* %1, align 4
  ret i32 %109
}

declare dso_local i32 @memopen(...) #1

declare dso_local %struct.TYPE_8__* @biosmptable_find_mpfps(...) #1

declare dso_local %struct.TYPE_8__* @biosmptable_check_mpcth(i32) #1

declare dso_local i32 @PTOV(i32) #1

declare dso_local i32 @warnx(i8*, i8 signext, ...) #1

declare dso_local i32 @memclose(...) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
