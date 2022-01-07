; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_clpinbyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_clpinbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLPIP_SHAKE = common dso_local global i32 0, align 4
@ctrecvl = common dso_local global i32* null, align 8
@ctrecvh = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @clpinbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clpinbyte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ppb_rstr(i32 %9)
  %11 = load i32, i32* @CLPIP_SHAKE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %54

19:                                               ; preds = %14
  br label %8

20:                                               ; preds = %8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ppb_rstr(i32 %21)
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ppb_wdtr(i32 %24, i32 16)
  br label %26

26:                                               ; preds = %38, %20
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ppb_rstr(i32 %27)
  %29 = load i32, i32* @CLPIP_SHAKE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %54

38:                                               ; preds = %33
  br label %26

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ppb_rstr(i32 %40)
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ppb_wdtr(i32 %43, i32 0)
  %45 = load i32*, i32** @ctrecvl, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** @ctrecvh, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %48, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %39, %37, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ppb_rstr(i32) #1

declare dso_local i32 @ppb_wdtr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
