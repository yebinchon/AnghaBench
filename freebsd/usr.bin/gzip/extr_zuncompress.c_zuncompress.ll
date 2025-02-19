; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_zuncompress.c_zuncompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_zuncompress.c_zuncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZE = common dso_local global i32 0, align 4
@compressed_prelen = common dso_local global i64 0, align 8
@compressed_pre = common dso_local global i8* null, align 8
@tflag = common dso_local global i64 0, align 8
@total_compressed_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64, i32*)* @zuncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zuncompress(i32* %0, i32* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @BUFSIZE, align 4
  %16 = call i8* @malloc(i32 %15)
  store i8* %16, i8** %14, align 8
  %17 = load i8*, i8** %14, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %62

20:                                               ; preds = %5
  %21 = load i64, i64* %10, align 8
  store i64 %21, i64* @compressed_prelen, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** %9, align 8
  store i8* %25, i8** @compressed_pre, align 8
  br label %27

26:                                               ; preds = %20
  store i8* null, i8** @compressed_pre, align 8
  br label %27

27:                                               ; preds = %26, %24
  br label %28

28:                                               ; preds = %48, %27
  %29 = load i8*, i8** %14, align 8
  %30 = load i32, i32* @BUFSIZE, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @fread(i8* %29, i32 1, i32 %30, i32* %31)
  store i32 %32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load i64, i64* @tflag, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i8*, i8** %14, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i64 @fwrite(i8* %38, i32 1, i32 %39, i32* %40)
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @free(i8* %46)
  store i32 -1, i32* %6, align 4
  br label %62

48:                                               ; preds = %37, %34
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %13, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load i32*, i32** %11, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @total_compressed_bytes, align 4
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %45, %19
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
