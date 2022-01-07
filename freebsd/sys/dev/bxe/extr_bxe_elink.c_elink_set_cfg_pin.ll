; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_cfg_pin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_cfg_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@PIN_CFG_NA = common dso_local global i64 0, align 8
@PIN_CFG_EPIO0 = common dso_local global i64 0, align 8
@PIN_CFG_GPIO0_P0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i64, i64)* @elink_set_cfg_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_set_cfg_pin(%struct.bxe_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @PIN_CFG_NA, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %38

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @PIN_CFG_EPIO0, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @PIN_CFG_EPIO0, align 8
  %21 = sub nsw i64 %19, %20
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @elink_set_epio(%struct.bxe_softc* %18, i64 %21, i64 %22)
  br label %38

24:                                               ; preds = %13
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @PIN_CFG_GPIO0_P0, align 8
  %27 = sub nsw i64 %25, %26
  %28 = and i64 %27, 3
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @PIN_CFG_GPIO0_P0, align 8
  %31 = sub nsw i64 %29, %30
  %32 = ashr i64 %31, 2
  store i64 %32, i64* %8, align 8
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @elink_cb_gpio_write(%struct.bxe_softc* %33, i64 %34, i64 %35, i64 %36)
  br label %38

38:                                               ; preds = %12, %24, %17
  ret void
}

declare dso_local i32 @elink_set_epio(%struct.bxe_softc*, i64, i64) #1

declare dso_local i32 @elink_cb_gpio_write(%struct.bxe_softc*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
