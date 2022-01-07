; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_link_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_link_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@AGE_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@AGE_MAC_CFG = common dso_local global i32 0, align 4
@AGE_DMA_CFG = common dso_local global i32 0, align 4
@DMA_CFG_RD_ENB = common dso_local global i32 0, align 4
@DMA_CFG_WR_ENB = common dso_local global i32 0, align 4
@MAC_CFG_TX_ENB = common dso_local global i32 0, align 4
@MAC_CFG_RX_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @age_link_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_link_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.age_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.age_softc*
  store %struct.age_softc* %10, %struct.age_softc** %5, align 8
  %11 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %12 = call i32 @AGE_LOCK(%struct.age_softc* %11)
  %13 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %14 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.mii_data* @device_get_softc(i32 %15)
  store %struct.mii_data* %16, %struct.mii_data** %6, align 8
  %17 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %18 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %17, i32 0, i32 1
  %19 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  store %struct.ifnet* %19, %struct.ifnet** %7, align 8
  %20 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %21 = icmp eq %struct.mii_data* %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %2
  %23 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %24 = icmp eq %struct.ifnet* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25, %22, %2
  %33 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %34 = call i32 @AGE_UNLOCK(%struct.age_softc* %33)
  br label %100

35:                                               ; preds = %25
  %36 = load i32, i32* @AGE_FLAG_LINK, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %39 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %43 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFM_AVALID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %35
  %49 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %50 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IFM_SUBTYPE(i32 %51)
  switch i32 %52, label %59 [
    i32 128, label %53
    i32 129, label %53
    i32 130, label %53
  ]

53:                                               ; preds = %48, %48, %48
  %54 = load i32, i32* @AGE_FLAG_LINK, align 4
  %55 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %56 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %60

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %53
  br label %61

61:                                               ; preds = %60, %35
  %62 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %63 = call i32 @age_stop_rxmac(%struct.age_softc* %62)
  %64 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %65 = call i32 @age_stop_txmac(%struct.age_softc* %64)
  %66 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %67 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @AGE_FLAG_LINK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %61
  %73 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %74 = call i32 @age_mac_config(%struct.age_softc* %73)
  %75 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %76 = load i32, i32* @AGE_MAC_CFG, align 4
  %77 = call i32 @CSR_READ_4(%struct.age_softc* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %79 = load i32, i32* @AGE_DMA_CFG, align 4
  %80 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %81 = load i32, i32* @AGE_DMA_CFG, align 4
  %82 = call i32 @CSR_READ_4(%struct.age_softc* %80, i32 %81)
  %83 = load i32, i32* @DMA_CFG_RD_ENB, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @DMA_CFG_WR_ENB, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @CSR_WRITE_4(%struct.age_softc* %78, i32 %79, i32 %86)
  %88 = load i32, i32* @MAC_CFG_TX_ENB, align 4
  %89 = load i32, i32* @MAC_CFG_RX_ENB, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %94 = load i32, i32* @AGE_MAC_CFG, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @CSR_WRITE_4(%struct.age_softc* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %72, %61
  %98 = load %struct.age_softc*, %struct.age_softc** %5, align 8
  %99 = call i32 @AGE_UNLOCK(%struct.age_softc* %98)
  br label %100

100:                                              ; preds = %97, %32
  ret void
}

declare dso_local i32 @AGE_LOCK(%struct.age_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @AGE_UNLOCK(%struct.age_softc*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @age_stop_rxmac(%struct.age_softc*) #1

declare dso_local i32 @age_stop_txmac(%struct.age_softc*) #1

declare dso_local i32 @age_mac_config(%struct.age_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.age_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.age_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
