; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_cat_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_cat_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFLEN = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"write to stdout\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"read from fd %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, i32)* @cat_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cat_fd(i8* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @BUFLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @STDOUT_FILENO, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 (i32, ...) @write_retry(i32 %22, i8* %23, i64 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %4
  %34 = call i32 (i8*, ...) @maybe_warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %71

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %59, %35
  %37 = load i32, i32* %9, align 4
  %38 = trunc i64 %17 to i32
  %39 = call i32 @read(i32 %37, i8* %19, i32 %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %63

43:                                               ; preds = %36
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (i8*, ...) @maybe_warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %63

49:                                               ; preds = %43
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @infile_newdata(i32 %50)
  %52 = load i32, i32* @STDOUT_FILENO, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 (i32, ...) @write_retry(i32 %52, i8* %19, i32 %53)
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 (i8*, ...) @maybe_warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %63

59:                                               ; preds = %49
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %36

63:                                               ; preds = %57, %46, %42
  %64 = load i32*, i32** %8, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %71

71:                                               ; preds = %69, %33
  %72 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @write_retry(i32, ...) #2

declare dso_local i32 @maybe_warn(i8*, ...) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @infile_newdata(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
