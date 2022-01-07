; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/script/extr_script.c_consume.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/script/extr_script.c_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_CUR = common dso_local global i32 0, align 4
@DEF_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot read buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i8*, i32)* @consume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @consume(i32* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* @SEEK_CUR, align 4
  %16 = call i32 @fseeko(i32* %13, i64 %14, i32 %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @err(i32 1, i8* null)
  br label %20

20:                                               ; preds = %18, %12
  br label %42

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %37, %21
  %23 = load i64, i64* %6, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i32, i32* @DEF_BUF, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @MIN(i32 %26, i64 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @fread(i8* %29, i32 1, i64 %30, i32* %31)
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %25
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %6, align 8
  %40 = sub i64 %39, %38
  store i64 %40, i64* %6, align 8
  br label %22

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41, %20
  ret void
}

declare dso_local i32 @fseeko(i32*, i64, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
