; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_848xx_set_led.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_848xx_set_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_reg_set = type { i32, i32, i32, i32, i32, i32 }
%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i32 }

@elink_848xx_set_led.reg_set = internal global [6 x %struct.elink_reg_set] [%struct.elink_reg_set { i32 134, i32 133, i32 128, i32 0, i32 0, i32 0 }, %struct.elink_reg_set { i32 134, i32 132, i32 24, i32 0, i32 0, i32 0 }, %struct.elink_reg_set { i32 134, i32 130, i32 6, i32 0, i32 0, i32 0 }, %struct.elink_reg_set { i32 134, i32 131, i32 0, i32 0, i32 0, i32 0 }, %struct.elink_reg_set { i32 134, i32 128, i32 129, i32 0, i32 0, i32 0 }, %struct.elink_reg_set { i32 135, i32 65531, i32 65533, i32 0, i32 0, i32 0 }], align 16
@MDIO_PMA_REG_8481_LINK_SIGNAL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_84833_CTL_LED_CTL_1 = common dso_local global i32 0, align 4
@MDIO_PMA_REG_84823_CTL_LED_CTL_1 = common dso_local global i32 0, align 4
@MDIO_PMA_REG_84823_LED3_STRETCH_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.elink_phy*)* @elink_848xx_set_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_848xx_set_led(%struct.bxe_softc* %0, %struct.elink_phy* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.elink_phy* %1, %struct.elink_phy** %4, align 8
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %9 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %10 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %11 = call i32 @elink_cl45_read(%struct.bxe_softc* %8, %struct.elink_phy* %9, i32 134, i32 %10, i32* %5)
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 65024
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, 146
  store i32 %15, i32* %5, align 4
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %17 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %18 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @elink_cl45_write(%struct.bxe_softc* %16, %struct.elink_phy* %17, i32 134, i32 %18, i32 %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %44, %2
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ARRAY_SIZE(%struct.elink_reg_set* getelementptr inbounds ([6 x %struct.elink_reg_set], [6 x %struct.elink_reg_set]* @elink_848xx_set_led.reg_set, i64 0, i64 0))
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %27 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [6 x %struct.elink_reg_set], [6 x %struct.elink_reg_set]* @elink_848xx_set_led.reg_set, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.elink_reg_set, %struct.elink_reg_set* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [6 x %struct.elink_reg_set], [6 x %struct.elink_reg_set]* @elink_848xx_set_led.reg_set, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.elink_reg_set, %struct.elink_reg_set* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [6 x %struct.elink_reg_set], [6 x %struct.elink_reg_set]* @elink_848xx_set_led.reg_set, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.elink_reg_set, %struct.elink_reg_set* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @elink_cl45_write(%struct.bxe_softc* %26, %struct.elink_phy* %27, i32 %32, i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %25
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %21

47:                                               ; preds = %21
  %48 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %49 = call i64 @elink_is_8483x_8485x(%struct.elink_phy* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @MDIO_PMA_REG_84833_CTL_LED_CTL_1, align 4
  store i32 %52, i32* %6, align 4
  br label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @MDIO_PMA_REG_84823_CTL_LED_CTL_1, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %57 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @MDIO_PMA_REG_84823_LED3_STRETCH_EN, align 4
  %60 = call i32 @elink_cl45_read_or_write(%struct.bxe_softc* %56, %struct.elink_phy* %57, i32 134, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.elink_reg_set*) #1

declare dso_local i64 @elink_is_8483x_8485x(%struct.elink_phy*) #1

declare dso_local i32 @elink_cl45_read_or_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
