; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_xgm_reset_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_xgm_reset_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i64, i32* }

@F_MAC_RESET_ = common dso_local global i32 0, align 4
@F_XGMAC_STOP_EN = common dso_local global i32 0, align 4
@A_XGM_PORT_CFG = common dso_local global i64 0, align 8
@F_PCS_RESET_ = common dso_local global i32 0, align 4
@F_XG2G_RESET_ = common dso_local global i32 0, align 4
@F_RGMII_RESET_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*)* @xgm_reset_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgm_reset_ctrl(%struct.cmac* %0) #0 {
  %2 = alloca %struct.cmac*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %2, align 8
  %6 = load %struct.cmac*, %struct.cmac** %2, align 8
  %7 = getelementptr inbounds %struct.cmac, %struct.cmac* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %3, align 8
  %9 = load i32, i32* @F_MAC_RESET_, align 4
  %10 = load i32, i32* @F_XGMAC_STOP_EN, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @is_10G(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* @A_XGM_PORT_CFG, align 8
  %18 = load %struct.cmac*, %struct.cmac** %2, align 8
  %19 = getelementptr inbounds %struct.cmac, %struct.cmac* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = call i32 @t3_read_reg(i32* %16, i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @F_PCS_RESET_, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @G_PORTSPEED(i32 %26)
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = load i32, i32* @F_XG2G_RESET_, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %15
  br label %51

34:                                               ; preds = %1
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @uses_xaui(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @F_PCS_RESET_, align 4
  %40 = load i32, i32* @F_XG2G_RESET_, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %50

44:                                               ; preds = %34
  %45 = load i32, i32* @F_RGMII_RESET_, align 4
  %46 = load i32, i32* @F_XG2G_RESET_, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %38
  br label %51

51:                                               ; preds = %50, %33
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @is_10G(i32*) #1

declare dso_local i32 @t3_read_reg(i32*, i64) #1

declare dso_local i32 @G_PORTSPEED(i32) #1

declare dso_local i64 @uses_xaui(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
