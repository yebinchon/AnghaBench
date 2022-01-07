; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/comm/extr_comm.c_convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/comm/extr_comm.c_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"conversion buffer length overflow\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"internal mbstowcs() error\00", align 1
@iflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @convert(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @mbstowcs(i32* null, i8* %7, i64 0)
  store i64 %8, i64* %4, align 8
  %9 = icmp eq i64 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %58

11:                                               ; preds = %1
  %12 = load i32, i32* @SIZE_MAX, align 4
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 4
  %15 = load i64, i64* %4, align 8
  %16 = add i64 %15, 1
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  %23 = mul i64 %22, 4
  %24 = call i32* @malloc(i64 %23)
  store i32* %24, i32** %5, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  %29 = load i32*, i32** %5, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  %33 = call i64 @mbstowcs(i32* %29, i8* %30, i64 %32)
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i64, i64* @iflag, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load i32*, i32** %5, align 8
  store i32* %42, i32** %6, align 8
  br label %43

43:                                               ; preds = %52, %41
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @towlower(i32 %49)
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %47
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %6, align 8
  br label %43

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %38
  %57 = load i32*, i32** %5, align 8
  store i32* %57, i32** %2, align 8
  br label %58

58:                                               ; preds = %56, %10
  %59 = load i32*, i32** %2, align 8
  ret i32* %59
}

declare dso_local i64 @mbstowcs(i32*, i8*, i64) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @towlower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
