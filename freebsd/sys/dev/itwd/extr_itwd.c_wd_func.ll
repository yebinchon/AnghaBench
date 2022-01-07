; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/itwd/extr_itwd.c_wd_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/itwd/extr_itwd.c_wd_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WD_INTERVAL = common dso_local global i32 0, align 4
@WD_TO_1SEC = common dso_local global i32 0, align 4
@UINT8_MAX = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*)* @wd_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wd_func(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  %14 = load i32, i32* @WD_INTERVAL, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @WD_TO_1SEC, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @WD_TO_1SEC, align 4
  %23 = sub nsw i32 %21, %22
  %24 = shl i32 1, %23
  store i32 %24, i32* %8, align 4
  br label %26

25:                                               ; preds = %13
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @UINT8_MAX, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 0, i32* %32, align 4
  br label %34

33:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %30
  br label %36

35:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @superio_write(i8* %37, i32 115, i32 %38)
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @superio_read(i8* %40, i32 115)
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @superio_write(i8* %45, i32 115, i32 %46)
  br label %48

48:                                               ; preds = %44, %36
  ret void
}

declare dso_local i32 @superio_write(i8*, i32, i32) #1

declare dso_local i32 @superio_read(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
