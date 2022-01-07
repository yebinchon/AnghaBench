; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_beacon.c_r92c_beacon_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_beacon.c_r92c_beacon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.r92c_tx_desc = type { i32, i32, i32, i32 }

@R92C_FLAGS0_BMCAST = common dso_local global i32 0, align 4
@R92C_FLAGS0_FSG = common dso_local global i32 0, align 4
@R92C_FLAGS0_LSG = common dso_local global i32 0, align 4
@R92C_TXDW1_QSEL = common dso_local global i32 0, align 4
@R92C_TXDW1_QSEL_BEACON = common dso_local global i32 0, align 4
@R92C_TXDW1_RAID = common dso_local global i32 0, align 4
@R92C_RAID_11B = common dso_local global i32 0, align 4
@R92C_TXDW4_DRVRATE = common dso_local global i32 0, align 4
@R92C_TXDW4_SEQ_SEL = common dso_local global i32 0, align 4
@R92C_TXDW4_PORT_ID = common dso_local global i32 0, align 4
@R92C_TXDW5_DATARATE = common dso_local global i32 0, align 4
@RTWN_RIDX_CCK1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92c_beacon_init(%struct.rtwn_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r92c_tx_desc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.r92c_tx_desc*
  store %struct.r92c_tx_desc* %9, %struct.r92c_tx_desc** %7, align 8
  %10 = load i32, i32* @R92C_FLAGS0_BMCAST, align 4
  %11 = load i32, i32* @R92C_FLAGS0_FSG, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @R92C_FLAGS0_LSG, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %7, align 8
  %16 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @R92C_TXDW1_QSEL, align 4
  %20 = load i32, i32* @R92C_TXDW1_QSEL_BEACON, align 4
  %21 = call i32 @SM(i32 %19, i32 %20)
  %22 = load i32, i32* @R92C_TXDW1_RAID, align 4
  %23 = load i32, i32* @R92C_RAID_11B, align 4
  %24 = call i32 @SM(i32 %22, i32 %23)
  %25 = or i32 %21, %24
  %26 = call i32 @htole32(i32 %25)
  %27 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %7, align 8
  %28 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @rtwn_r92c_tx_setup_macid(%struct.rtwn_softc* %31, i8* %32, i32 %33)
  %35 = load i32, i32* @R92C_TXDW4_DRVRATE, align 4
  %36 = call i32 @htole32(i32 %35)
  %37 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %7, align 8
  %38 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @R92C_TXDW4_SEQ_SEL, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @SM(i32 %41, i32 %42)
  %44 = call i32 @htole32(i32 %43)
  %45 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %7, align 8
  %46 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @R92C_TXDW4_PORT_ID, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @SM(i32 %49, i32 %50)
  %52 = call i32 @htole32(i32 %51)
  %53 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %7, align 8
  %54 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @R92C_TXDW5_DATARATE, align 4
  %58 = load i32, i32* @RTWN_RIDX_CCK1, align 4
  %59 = call i32 @SM(i32 %57, i32 %58)
  %60 = call i32 @htole32(i32 %59)
  %61 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %7, align 8
  %62 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  ret void
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @rtwn_r92c_tx_setup_macid(%struct.rtwn_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
