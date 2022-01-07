; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_io.c_diag2.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_io.c_diag2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@found_err = common dso_local global i32 0, align 4
@output = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"/**INDENT** %s@%d: \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@line_no = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@stderr = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"%s@%d: \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diag2(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i32 1, i32* @found_err, align 4
  br label %8

8:                                                ; preds = %7, %2
  %9 = load i64, i64* @output, align 8
  %10 = load i64, i64* @stdout, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load i64, i64* @stdout, align 8
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %18 = load i32, i32* @line_no, align 4
  %19 = call i32 (i64, i8*, ...) @fprintf(i64 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18)
  %20 = load i64, i64* @stdout, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i64, i8*, ...) @fprintf(i64 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  %23 = load i64, i64* @stdout, align 8
  %24 = call i32 (i64, i8*, ...) @fprintf(i64 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %38

25:                                               ; preds = %8
  %26 = load i64, i64* @stderr, align 8
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i32, i32* @line_no, align 4
  %32 = call i32 (i64, i8*, ...) @fprintf(i64 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %30, i32 %31)
  %33 = load i64, i64* @stderr, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 (i64, i8*, ...) @fprintf(i64 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  %36 = load i64, i64* @stderr, align 8
  %37 = call i32 (i64, i8*, ...) @fprintf(i64 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %38

38:                                               ; preds = %25, %12
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
