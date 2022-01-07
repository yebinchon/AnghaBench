; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fstyp/extr_fstyp.c_read_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fstyp/extr_fstyp.c_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot seek to %jd\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot malloc %zd bytes of memory\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_buf(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* @SEEK_SET, align 4
  %14 = call i32 @fseek(i32* %11, i64 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i8* null, i8** %4, align 8
  br label %47

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = call i8* @malloc(i64 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  %28 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  store i8* null, i8** %4, align 8
  br label %47

29:                                               ; preds = %21
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @fread(i8* %30, i64 %31, i32 1, i32* %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 1
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @feof(i32* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %36
  store i8* null, i8** %4, align 8
  br label %47

45:                                               ; preds = %29
  %46 = load i8*, i8** %10, align 8
  store i8* %46, i8** %4, align 8
  br label %47

47:                                               ; preds = %45, %44, %26, %17
  %48 = load i8*, i8** %4, align 8
  ret i8* %48
}

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @feof(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
