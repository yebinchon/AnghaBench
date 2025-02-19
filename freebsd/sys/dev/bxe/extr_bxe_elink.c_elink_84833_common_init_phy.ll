; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_84833_common_init_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_84833_common_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@MISC_REGISTERS_GPIO_OUTPUT_LOW = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"84833 reset pulse on pin values 0x%x\0A\00", align 1
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32*, i32*, i32, i32)* @elink_84833_common_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_84833_common_init_phy(%struct.bxe_softc* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @elink_84833_get_reset_gpios(%struct.bxe_softc* %12, i32* %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_LOW, align 4
  %19 = call i32 @elink_cb_gpio_mult_write(%struct.bxe_softc* %16, i32 %17, i32 %18)
  %20 = call i32 @DELAY(i32 10)
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_HIGH, align 4
  %24 = call i32 @elink_cb_gpio_mult_write(%struct.bxe_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ELINK_STATUS_OK, align 4
  ret i32 %28
}

declare dso_local i32 @elink_84833_get_reset_gpios(%struct.bxe_softc*, i32*, i32) #1

declare dso_local i32 @elink_cb_gpio_mult_write(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
