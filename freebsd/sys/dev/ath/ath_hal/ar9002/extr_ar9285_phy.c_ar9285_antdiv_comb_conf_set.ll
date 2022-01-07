; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_phy.c_ar9285_antdiv_comb_conf_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285_phy.c_ar9285_antdiv_comb_conf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@AR_PHY_MULTICHAIN_GAIN_CTL = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_MAIN_LNACONF = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_ALT_LNACONF = common dso_local global i32 0, align 4
@AR_PHY_9285_FAST_DIV_BIAS = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_MAIN_LNACONF_S = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_ALT_LNACONF_S = common dso_local global i32 0, align 4
@AR_PHY_9285_FAST_DIV_BIAS_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9285_antdiv_comb_conf_set(%struct.ath_hal* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = load i32, i32* @AR_PHY_MULTICHAIN_GAIN_CTL, align 4
  %8 = call i32 @OS_REG_READ(%struct.ath_hal* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @AR_PHY_9285_ANT_DIV_MAIN_LNACONF, align 4
  %10 = load i32, i32* @AR_PHY_9285_ANT_DIV_ALT_LNACONF, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @AR_PHY_9285_FAST_DIV_BIAS, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AR_PHY_9285_ANT_DIV_MAIN_LNACONF_S, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* @AR_PHY_9285_ANT_DIV_MAIN_LNACONF, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AR_PHY_9285_ANT_DIV_ALT_LNACONF_S, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* @AR_PHY_9285_ANT_DIV_ALT_LNACONF, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AR_PHY_9285_FAST_DIV_BIAS_S, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @AR_PHY_9285_FAST_DIV_BIAS, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %45 = load i32, i32* @AR_PHY_MULTICHAIN_GAIN_CTL, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @OS_REG_WRITE(%struct.ath_hal* %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
