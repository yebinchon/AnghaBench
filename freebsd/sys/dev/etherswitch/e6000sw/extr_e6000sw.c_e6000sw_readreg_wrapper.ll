; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_readreg_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_readreg_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_GLOBAL2 = common dso_local global i32 0, align 4
@REG_NUM_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Wrong register address.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @e6000sw_readreg_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_readreg_wrapper(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32* @device_get_softc(i32 %7)
  store i32* %8, i32** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @REG_GLOBAL2, align 4
  %11 = mul nsw i32 %10, 32
  %12 = load i32, i32* @REG_NUM_MAX, align 4
  %13 = add nsw i32 %11, %12
  %14 = icmp sgt i32 %9, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @REG_PORT(i32* %17, i32 0)
  %19 = mul nsw i32 %18, 32
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15, %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = call i32* @device_get_softc(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = sdiv i32 %28, 32
  %30 = load i32, i32* %5, align 4
  %31 = srem i32 %30, 32
  %32 = call i32 @e6000sw_readreg(i32* %27, i32 %29, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %25, %21
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32* @device_get_softc(i32) #1

declare dso_local i32 @REG_PORT(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @e6000sw_readreg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
