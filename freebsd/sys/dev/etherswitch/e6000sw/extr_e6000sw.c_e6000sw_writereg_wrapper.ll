; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_writereg_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_writereg_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_GLOBAL2 = common dso_local global i32 0, align 4
@REG_NUM_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Wrong register address.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @e6000sw_writereg_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_writereg_wrapper(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32* @device_get_softc(i32 %9)
  store i32* %10, i32** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @REG_GLOBAL2, align 4
  %13 = mul nsw i32 %12, 32
  %14 = load i32, i32* @REG_NUM_MAX, align 4
  %15 = add nsw i32 %13, %14
  %16 = icmp sgt i32 %11, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @REG_PORT(i32* %19, i32 0)
  %21 = mul nsw i32 %20, 32
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17, %3
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %36

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = call i32* @device_get_softc(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %30, 5
  %32 = load i32, i32* %6, align 4
  %33 = srem i32 %32, 32
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @e6000sw_writereg(i32* %29, i32 %31, i32 %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %27, %23
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32* @device_get_softc(i32) #1

declare dso_local i32 @REG_PORT(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @e6000sw_writereg(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
