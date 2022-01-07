; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/locate/locate/extr_locate.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/locate/locate/extr_locate.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"0Scd:il:ms\00", align 1
@separator = common dso_local global i8 0, align 1
@f_statistic = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@f_limit = common dso_local global i32 0, align 4
@_PATH_FCODES = common dso_local global i8* null, align 8
@f_icase = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"mmap(2) not implemented\00", align 1
@f_mmap = common dso_local global i32 0, align 4
@f_silent = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"LOCATE_PATH\00", align 1
@UCHAR_MAX = common dso_local global i32 0, align 4
@myctype = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@f_stdin = common dso_local global i32 0, align 4
@counter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8** null, i8*** %7, align 8
  %9 = load i32, i32* @LC_ALL, align 4
  %10 = call i32 @setlocale(i32 %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %35, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %36

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %33 [
    i32 48, label %18
    i32 83, label %19
    i32 108, label %20
    i32 100, label %23
    i32 105, label %28
    i32 109, label %29
    i32 115, label %31
    i32 99, label %32
  ]

18:                                               ; preds = %16
  store i8 0, i8* @separator, align 1
  br label %35

19:                                               ; preds = %16
  store i32 1, i32* @f_statistic, align 4
  br label %35

20:                                               ; preds = %16
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i32 @atoi(i8* %21)
  store i32 %22, i32* @f_limit, align 4
  br label %35

23:                                               ; preds = %16
  %24 = load i8**, i8*** %7, align 8
  %25 = load i8*, i8** @optarg, align 8
  %26 = load i8*, i8** @_PATH_FCODES, align 8
  %27 = call i8** @colon(i8** %24, i8* %25, i8* %26)
  store i8** %27, i8*** %7, align 8
  br label %35

28:                                               ; preds = %16
  store i32 1, i32* @f_icase, align 4
  br label %35

29:                                               ; preds = %16
  %30 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %35

31:                                               ; preds = %16
  store i32 0, i32* @f_mmap, align 4
  br label %35

32:                                               ; preds = %16
  store i32 1, i32* @f_silent, align 4
  br label %35

33:                                               ; preds = %16
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %32, %31, %29, %28, %23, %20, %19, %18
  br label %11

36:                                               ; preds = %11
  %37 = load i64, i64* @optind, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 %37
  store i8** %39, i8*** %5, align 8
  %40 = load i64, i64* @optind, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load i32, i32* @f_statistic, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = call i32 (...) @usage()
  br label %52

52:                                               ; preds = %50, %47, %36
  %53 = load i8**, i8*** %7, align 8
  %54 = icmp eq i8** %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i8**, i8*** %7, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %55, %52
  %60 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i8* %60, i8** %8, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** %8, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62, %59
  %68 = load i8**, i8*** %7, align 8
  %69 = load i8*, i8** @_PATH_FCODES, align 8
  %70 = load i8*, i8** @_PATH_FCODES, align 8
  %71 = call i8** @colon(i8** %68, i8* %69, i8* %70)
  store i8** %71, i8*** %7, align 8
  br label %77

72:                                               ; preds = %62
  %73 = load i8**, i8*** %7, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** @_PATH_FCODES, align 8
  %76 = call i8** @colon(i8** %73, i8* %74, i8* %75)
  store i8** %76, i8*** %7, align 8
  br label %77

77:                                               ; preds = %72, %67
  br label %78

78:                                               ; preds = %77, %55
  %79 = load i32, i32* @f_icase, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %78
  %82 = load i32, i32* @UCHAR_MAX, align 4
  %83 = icmp slt i32 %82, 4096
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %97, %84
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @UCHAR_MAX, align 4
  %88 = add nsw i32 %87, 1
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @tolower(i32 %91) #4
  %93 = load i32*, i32** @myctype, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %85

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100, %81, %78
  br label %102

102:                                              ; preds = %131, %101
  %103 = load i8**, i8*** %7, align 8
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %8, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %132

106:                                              ; preds = %102
  %107 = load i8**, i8*** %7, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i32 1
  store i8** %108, i8*** %7, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  store i32 1, i32* @f_stdin, align 4
  br label %114

113:                                              ; preds = %106
  store i32 0, i32* @f_stdin, align 4
  br label %114

114:                                              ; preds = %113, %112
  store i32 0, i32* @f_mmap, align 4
  %115 = load i32, i32* @f_mmap, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i32, i32* @f_stdin, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* @f_statistic, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120, %117, %114
  %124 = load i8*, i8** %8, align 8
  %125 = load i8**, i8*** %5, align 8
  %126 = call i32 @search_fopen(i8* %124, i8** %125)
  br label %131

127:                                              ; preds = %120
  %128 = load i8*, i8** %8, align 8
  %129 = load i8**, i8*** %5, align 8
  %130 = call i32 @search_mmap(i8* %128, i8** %129)
  br label %131

131:                                              ; preds = %127, %123
  br label %102

132:                                              ; preds = %102
  %133 = load i32, i32* @f_silent, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* @counter, align 4
  %137 = call i32 @print_matches(i32 %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = call i32 @exit(i32 0) #5
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8** @colon(i8**, i8*, i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @getenv(i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @search_fopen(i8*, i8**) #1

declare dso_local i32 @search_mmap(i8*, i8**) #1

declare dso_local i32 @print_matches(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
