; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/pipe/extr_big_pipe_test.c_write_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/pipe/extr_big_pipe_test.c_write_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"select failed\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"select returned unexpected value %d\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"write failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64)* @write_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_frame(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %9

9:                                                ; preds = %45, %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %9
  %13 = call i32 @FD_ZERO(i32* %7)
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @FD_SET(i32 %14, i32* %7)
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @select(i32 %17, i32* null, i32* %7, i32* null, i32* null)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %12
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @write(i32 %31, i8* %32, i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EAGAIN, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = call i32 @exit(i32 1) #3
  unreachable

45:                                               ; preds = %30
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %6, align 8
  br label %9

54:                                               ; preds = %9
  ret void
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
