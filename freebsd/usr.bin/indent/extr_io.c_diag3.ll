; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_io.c_diag3.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_io.c_diag3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@found_err = common dso_local global i32 0, align 4
@output = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"/**INDENT** %s@%d: \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@line_no = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@stderr = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"%s@%d: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diag3(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i32 1, i32* @found_err, align 4
  br label %10

10:                                               ; preds = %9, %3
  %11 = load i64, i64* @output, align 8
  %12 = load i64, i64* @stdout, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i64, i64* @stdout, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %20 = load i32, i32* @line_no, align 4
  %21 = call i32 (i64, i8*, ...) @fprintf(i64 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  %22 = load i64, i64* @stdout, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i64, i8*, ...) @fprintf(i64 %22, i8* %23, i32 %24)
  %26 = load i64, i64* @stdout, align 8
  %27 = call i32 (i64, i8*, ...) @fprintf(i64 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %42

28:                                               ; preds = %10
  %29 = load i64, i64* @stderr, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %34 = load i32, i32* @line_no, align 4
  %35 = call i32 (i64, i8*, ...) @fprintf(i64 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %33, i32 %34)
  %36 = load i64, i64* @stderr, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i64, i8*, ...) @fprintf(i64 %36, i8* %37, i32 %38)
  %40 = load i64, i64* @stderr, align 8
  %41 = call i32 (i64, i8*, ...) @fprintf(i64 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %42

42:                                               ; preds = %28, %14
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
