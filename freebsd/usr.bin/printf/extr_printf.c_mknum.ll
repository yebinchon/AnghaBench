; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_mknum.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_mknum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mknum.copy = internal global i8* null, align 8
@mknum.copy_size = internal global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8)* @mknum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mknum(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = add nsw i32 %10, 2
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @mknum.copy_size, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %17, 1023
  %19 = lshr i64 %18, 10
  %20 = shl i64 %19, 10
  store i64 %20, i64* %8, align 8
  %21 = load i8*, i8** @mknum.copy, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i8* @realloc(i8* %21, i64 %22)
  store i8* %23, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i8* null, i8** %3, align 8
  br label %52

29:                                               ; preds = %16
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** @mknum.copy, align 8
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* @mknum.copy_size, align 8
  br label %32

32:                                               ; preds = %29, %2
  %33 = load i8*, i8** @mknum.copy, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 %35, 3
  %37 = call i32 @memmove(i8* %33, i8* %34, i64 %36)
  %38 = load i8*, i8** @mknum.copy, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %39, 3
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 106, i8* %41, align 1
  %42 = load i8, i8* %5, align 1
  %43 = load i8*, i8** @mknum.copy, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %44, 2
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %42, i8* %46, align 1
  %47 = load i8*, i8** @mknum.copy, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** @mknum.copy, align 8
  store i8* %51, i8** %3, align 8
  br label %52

52:                                               ; preds = %32, %25
  %53 = load i8*, i8** %3, align 8
  ret i8* %53
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
