; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_is_sfp_module_plugged.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_is_sfp_module_plugged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { i32, i32, i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@ELINK_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_phy*, %struct.elink_params*)* @elink_is_sfp_module_plugged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_is_sfp_module_plugged(%struct.elink_phy* %0, %struct.elink_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.elink_params* %1, %struct.elink_params** %5, align 8
  %10 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %11 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %10, i32 0, i32 3
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  store %struct.bxe_softc* %12, %struct.bxe_softc** %6, align 8
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %14 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %15 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %18 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %21 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @elink_get_mod_abs_int_cfg(%struct.bxe_softc* %13, i32 %16, i32 %19, i32 %22, i32* %7, i32* %8)
  %24 = load i64, i64* @ELINK_STATUS_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @elink_cb_gpio_read(%struct.bxe_softc* %28, i32 %29, i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %36

35:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34, %26
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @elink_get_mod_abs_int_cfg(%struct.bxe_softc*, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @elink_cb_gpio_read(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
