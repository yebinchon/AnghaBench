; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_trace.c_trace.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_trace.c_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_file = type { i32 }

@traceout = common dso_local global i64 0, align 8
@stderr = common dso_local global i64 0, align 8
@trace_flags = common dso_local global i32 0, align 4
@TRACE_CONT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TRACE_ARGS = common dso_local global i32 0, align 4
@LPAREN = common dso_local global i8 0, align 1
@EOS = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@TRACE_QUOTE = common dso_local global i32 0, align 4
@lquote = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rquote = common dso_local global i8* null, align 8
@COMMA = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@RPAREN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c" -> ???\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s(...)\00", align 1
@TRACE_EXPANSION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @trace(i8** %0, i32 %1, %struct.input_file* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_file*, align 8
  %8 = alloca [3 x i8], align 1
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.input_file* %2, %struct.input_file** %7, align 8
  %10 = load i64, i64* @traceout, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* @stderr, align 8
  store i64 %13, i64* @traceout, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load %struct.input_file*, %struct.input_file** %7, align 8
  %16 = call i32 @print_header(%struct.input_file* %15)
  %17 = load i32, i32* @trace_flags, align 4
  %18 = load i32, i32* @TRACE_CONT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load i64, i64* @traceout, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i64, i8*, ...) @fprintf(i64 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.input_file*, %struct.input_file** %7, align 8
  %28 = call i32 @print_header(%struct.input_file* %27)
  br label %29

29:                                               ; preds = %21, %14
  %30 = load i64, i64* @traceout, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i64, i8*, ...) @fprintf(i64 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @trace_flags, align 4
  %36 = load i32, i32* @TRACE_ARGS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %90

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %42, label %90

42:                                               ; preds = %39
  %43 = load i8, i8* @LPAREN, align 1
  %44 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  store i8 %43, i8* %44, align 1
  %45 = load i8, i8* @EOS, align 1
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 1
  store i8 %45, i8* %46, align 1
  store i32 2, i32* %9, align 4
  br label %47

47:                                               ; preds = %83, %42
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %47
  %52 = load i64, i64* @traceout, align 8
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %54 = load i32, i32* @trace_flags, align 4
  %55 = load i32, i32* @TRACE_QUOTE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i8*, i8** @lquote, align 8
  br label %61

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i8* [ %59, %58 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %60 ]
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* @trace_flags, align 4
  %69 = load i32, i32* @TRACE_QUOTE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i8*, i8** @rquote, align 8
  br label %75

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i8* [ %73, %72 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %74 ]
  %77 = call i32 (i64, i8*, ...) @fprintf(i64 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %53, i8* %62, i8* %67, i8* %76)
  %78 = load i8, i8* @COMMA, align 1
  %79 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  store i8 %78, i8* %79, align 1
  %80 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 1
  store i8 32, i8* %80, align 1
  %81 = load i8, i8* @EOS, align 1
  %82 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  store i8 %81, i8* %82, align 1
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %47

86:                                               ; preds = %47
  %87 = load i64, i64* @traceout, align 8
  %88 = load i32, i32* @RPAREN, align 4
  %89 = call i32 (i64, i8*, ...) @fprintf(i64 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %86, %39, %29
  %91 = load i32, i32* @trace_flags, align 4
  %92 = load i32, i32* @TRACE_CONT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %90
  %96 = load i64, i64* @traceout, align 8
  %97 = call i32 (i64, i8*, ...) @fprintf(i64 %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %98 = load %struct.input_file*, %struct.input_file** %7, align 8
  %99 = call i32 @print_header(%struct.input_file* %98)
  %100 = load i64, i64* @traceout, align 8
  %101 = load i32, i32* %6, align 4
  %102 = icmp sgt i32 %101, 2
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i64, i8*, ...) @fprintf(i64 %100, i8* %104, i8* %107)
  br label %109

109:                                              ; preds = %95, %90
  %110 = load i32, i32* @trace_flags, align 4
  %111 = load i32, i32* @TRACE_EXPANSION, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i64 (...) @buffer_mark()
  store i64 %115, i64* %4, align 8
  br label %120

116:                                              ; preds = %109
  %117 = load i64, i64* @traceout, align 8
  %118 = call i32 (i64, i8*, ...) @fprintf(i64 %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %119 = load i64, i64* @SIZE_MAX, align 8
  store i64 %119, i64* %4, align 8
  br label %120

120:                                              ; preds = %116, %114
  %121 = load i64, i64* %4, align 8
  ret i64 %121
}

declare dso_local i32 @print_header(%struct.input_file*) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i64 @buffer_mark(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
