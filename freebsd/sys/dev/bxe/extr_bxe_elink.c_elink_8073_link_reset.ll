; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8073_link_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8073_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Setting 8073 port %d into low power mode\0A\00", align 1
@MISC_REGISTERS_GPIO_2 = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_phy*, %struct.elink_params*)* @elink_8073_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_8073_link_reset(%struct.elink_phy* %0, %struct.elink_params* %1) #0 {
  %3 = alloca %struct.elink_phy*, align 8
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.elink_phy* %0, %struct.elink_phy** %3, align 8
  store %struct.elink_params* %1, %struct.elink_params** %4, align 8
  %7 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %8 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %7, i32 0, i32 1
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  store %struct.bxe_softc* %9, %struct.bxe_softc** %5, align 8
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %11 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %15 = call i32 @SC_PATH(%struct.bxe_softc* %14)
  store i32 %15, i32* %6, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %18 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %25 = load i32, i32* @MISC_REGISTERS_GPIO_2, align 4
  %26 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_LOW, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @elink_cb_gpio_write(%struct.bxe_softc* %24, i32 %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #1

declare dso_local i32 @SC_PATH(%struct.bxe_softc*) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @elink_cb_gpio_write(%struct.bxe_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
