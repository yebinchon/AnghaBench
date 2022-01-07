; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_serdes_power.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_serdes_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E6000SW_SERDES_DEV = common dso_local global i32 0, align 4
@E6000SW_SERDES_SGMII_CTL = common dso_local global i32 0, align 4
@E6000SW_SERDES_PDOWN = common dso_local global i32 0, align 4
@E6000SW_SERDES_PCS_CTL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @e6000sw_serdes_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e6000sw_serdes_power(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @E6000SW_SERDES_DEV, align 4
  %11 = load i32, i32* @E6000SW_SERDES_SGMII_CTL, align 4
  %12 = call i32 @e6000sw_read_xmdio(i32 %8, i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* @E6000SW_SERDES_PDOWN, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @E6000SW_SERDES_PDOWN, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @E6000SW_SERDES_DEV, align 4
  %28 = load i32, i32* @E6000SW_SERDES_SGMII_CTL, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @e6000sw_write_xmdio(i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @E6000SW_SERDES_DEV, align 4
  %34 = load i32, i32* @E6000SW_SERDES_PCS_CTL1, align 4
  %35 = call i32 @e6000sw_read_xmdio(i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = load i32, i32* @E6000SW_SERDES_PDOWN, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %47

42:                                               ; preds = %24
  %43 = load i32, i32* @E6000SW_SERDES_PDOWN, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @E6000SW_SERDES_DEV, align 4
  %51 = load i32, i32* @E6000SW_SERDES_PCS_CTL1, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @e6000sw_write_xmdio(i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @e6000sw_read_xmdio(i32, i32, i32, i32) #1

declare dso_local i32 @e6000sw_write_xmdio(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
