; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_getint.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_getint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MIN = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@gargv = common dso_local global i32* null, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @getint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getint(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i64 @getnum(i64* %4, i32* %5, i32 1)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @INT_MIN, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @INT_MAX, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14, %10
  %19 = load i32*, i32** @gargv, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ERANGE, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22)
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %18, %14
  %25 = load i64, i64* %4, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32*, i32** %3, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @getnum(i64*, i32*, i32) #1

declare dso_local i32 @warnx(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
