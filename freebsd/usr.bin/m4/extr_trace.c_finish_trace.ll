; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_trace.c_finish_trace.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_trace.c_finish_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@traceout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@trace_flags = common dso_local global i32 0, align 4
@TRACE_QUOTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@lquote = common dso_local global i8* null, align 8
@rquote = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finish_trace(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @traceout, align 4
  %4 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @trace_flags, align 4
  %6 = load i32, i32* @TRACE_QUOTE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @traceout, align 4
  %11 = load i8*, i8** @lquote, align 8
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @traceout, align 4
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @dump_buffer(i32 %14, i64 %15)
  %17 = load i32, i32* @trace_flags, align 4
  %18 = load i32, i32* @TRACE_QUOTE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* @traceout, align 4
  %23 = load i8*, i8** @rquote, align 8
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %13
  %26 = load i32, i32* @traceout, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @dump_buffer(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
