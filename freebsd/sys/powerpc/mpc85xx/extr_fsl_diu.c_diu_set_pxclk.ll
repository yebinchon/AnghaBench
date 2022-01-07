; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_diu.c_diu_set_pxclk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_diu.c_diu_set_pxclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Unable to get bus frequency\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@OCP85XX_CLKDVDR_PXCKEN = common dso_local global i32 0, align 4
@OCP85XX_CLKDVDR = common dso_local global i32 0, align 4
@OCP85XX_CLKDVDR_PXCKINV = common dso_local global i32 0, align 4
@OCP85XX_CLKDVDR_PXCLK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @diu_set_pxclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diu_set_pxclk(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @device_get_parent(i32 %10)
  %12 = call i32 @ofw_bus_get_node(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = call i64 (...) @mpc85xx_get_platform_clock()
  store i64 %13, i64* %7, align 8
  %14 = icmp ule i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = mul i32 %20, 1000
  store i32 %21, i32* %5, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = udiv i32 %23, 2
  %25 = zext i32 %24 to i64
  %26 = add i64 %22, %25
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = udiv i64 %26, %28
  %30 = call i32 @max(i64 %29, i32 2)
  %31 = call i32 @min(i32 %30, i32 255)
  %32 = shl i32 %31, 16
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @OCP85XX_CLKDVDR_PXCKEN, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @OCP85XX_CLKDVDR, align 4
  %37 = call i32 @ccsr_read4(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @OCP85XX_CLKDVDR_PXCKEN, align 4
  %39 = load i32, i32* @OCP85XX_CLKDVDR_PXCKINV, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @OCP85XX_CLKDVDR_PXCLK_MASK, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @OCP85XX_CLKDVDR, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ccsr_write4(i32 %46, i32 %47)
  %49 = load i32, i32* @OCP85XX_CLKDVDR, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @ccsr_write4(i32 %49, i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %19, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @mpc85xx_get_platform_clock(...) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @ccsr_read4(i32) #1

declare dso_local i32 @ccsr_write4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
