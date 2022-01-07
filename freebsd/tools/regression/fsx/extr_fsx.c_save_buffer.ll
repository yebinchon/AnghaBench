; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_save_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_save_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSIZE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"fsx flaw: overflow in save_buffer\0A\00", align 1
@lite = common dso_local global i64 0, align 8
@SEEK_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"save_buffer: lseek eof\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"save_buffer: .fsxgood file too short... will save 0x%llx bytes instead of 0x%llx\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"save_buffer: lseek 0\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"save_buffer write\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"save_buffer: short write, 0x%x bytes instead of 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_buffer(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  br label %73

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @SSIZE_MAX, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = call i32 @prt(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @exit(i32 67) #3
  unreachable

23:                                               ; preds = %16
  %24 = load i64, i64* @lite, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SEEK_END, align 4
  %29 = call i64 @lseek(i32 %27, i64 0, i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @prterr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %45

34:                                               ; preds = %26
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @warn(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i32 %40, i64 %41)
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %38, %34
  br label %45

45:                                               ; preds = %44, %32
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SEEK_SET, align 4
  %49 = call i64 @lseek(i32 %47, i64 0, i32 %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 @prterr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %46
  %55 = load i32, i32* %6, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @write(i32 %55, i8* %56, i64 %57)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %54
  %63 = load i64, i64* %8, align 8
  %64 = icmp eq i64 %63, -1
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @prterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %72

67:                                               ; preds = %62
  %68 = load i64, i64* %8, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %67, %65
  br label %73

73:                                               ; preds = %15, %72, %54
  ret void
}

declare dso_local i32 @prt(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @prterr(i8*) #1

declare dso_local i32 @warn(i8*, i32, i64) #1

declare dso_local i64 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
