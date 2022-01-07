; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_get_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_line.buf = internal global i8* null, align 8
@get_line.bufsize = internal global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i64*)* @get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_line(i32* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i8* @fgetln(i32* %8, i64* %7)
  store i8* %9, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %66

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = sub i64 %14, 1
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 10
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %20, %12
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  %26 = load i64, i64* @get_line.bufsize, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %32, %28
  %30 = load i64, i64* @get_line.bufsize, align 8
  %31 = add i64 %30, 1024
  store i64 %31, i64* @get_line.bufsize, align 8
  br label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 1
  %35 = load i64, i64* @get_line.bufsize, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %29, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** @get_line.buf, align 8
  %39 = load i64, i64* @get_line.bufsize, align 8
  %40 = call i8* @realloc(i8* %38, i64 %39)
  store i8* %40, i8** @get_line.buf, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  %44 = call i32 @err(i32 %43, i32* null)
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i8*, i8** @get_line.buf, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, 1
  %51 = call i32 @memcpy(i8* %47, i8* %48, i64 %50)
  %52 = load i8*, i8** @get_line.buf, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 10, i8* %55, align 1
  %56 = load i8*, i8** @get_line.buf, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i64*, i64** %5, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %46
  %62 = load i64, i64* %7, align 8
  %63 = load i64*, i64** %5, align 8
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %46
  %65 = load i8*, i8** @get_line.buf, align 8
  store i8* %65, i8** %3, align 8
  br label %66

66:                                               ; preds = %64, %11
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
