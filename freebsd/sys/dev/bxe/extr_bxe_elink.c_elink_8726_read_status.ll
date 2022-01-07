; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8726_read_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8726_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i64 }

@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_PHY_IDENTIFIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Tx is disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*)* @elink_8726_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elink_8726_read_status(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2) #0 {
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_vars*, align 8
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.elink_params* %1, %struct.elink_params** %5, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %6, align 8
  %10 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %11 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %10, i32 0, i32 0
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  store %struct.bxe_softc* %12, %struct.bxe_softc** %7, align 8
  %13 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %14 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %15 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %16 = call i64 @elink_8706_8726_read_status(%struct.elink_phy* %13, %struct.elink_params* %14, %struct.elink_vars* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %21 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %22 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %23 = load i32, i32* @MDIO_PMA_REG_PHY_IDENTIFIER, align 4
  %24 = call i32 @elink_cl45_read(%struct.bxe_softc* %20, %struct.elink_phy* %21, i32 %22, i32 %23, i32* %8)
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 32768
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %30 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  %31 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %32 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %28, %19
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i64, i64* %9, align 8
  ret i64 %35
}

declare dso_local i64 @elink_8706_8726_read_status(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
