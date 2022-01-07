; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_mdio_emac_per_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_mdio_emac_per_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.elink_params = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ELINK_INT_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.elink_params*)* @elink_set_mdio_emac_per_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_set_mdio_emac_per_phy(%struct.bxe_softc* %0, %struct.elink_params* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.elink_params* %1, %struct.elink_params** %4, align 8
  %6 = load i64, i64* @ELINK_INT_PHY, align 8
  store i64 %6, i64* %5, align 8
  br label %7

7:                                                ; preds = %26, %2
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %10 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %15 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %16 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %19 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @elink_set_mdio_clk(%struct.bxe_softc* %14, i32 %17, i32 %24)
  br label %26

26:                                               ; preds = %13
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %7

29:                                               ; preds = %7
  ret void
}

declare dso_local i32 @elink_set_mdio_clk(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
