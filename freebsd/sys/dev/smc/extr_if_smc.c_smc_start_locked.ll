; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, %struct.smc_softc* }
%struct.smc_softc = type { i32, i32, i32, %struct.mbuf* }
%struct.mbuf = type { i32 }

@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ETHER_MAX_LEN = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"large packet discarded\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@PKT_CTRL_DATA_LEN = common dso_local global i32 0, align 4
@MMUCR = common dso_local global i32 0, align 4
@MMUCR_CMD_TX_ALLOC = common dso_local global i32 0, align 4
@TX_ALLOC_WAIT_TIME = common dso_local global i32 0, align 4
@IST = common dso_local global i32 0, align 4
@ALLOC_INT = common dso_local global i32 0, align 4
@ACK = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @smc_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.smc_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 3
  %10 = load %struct.smc_softc*, %struct.smc_softc** %9, align 8
  store %struct.smc_softc* %10, %struct.smc_softc** %3, align 8
  %11 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %12 = call i32 @SMC_ASSERT_LOCKED(%struct.smc_softc* %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %125

20:                                               ; preds = %1
  %21 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 2
  %23 = call i64 @IFQ_IS_EMPTY(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %125

26:                                               ; preds = %20
  %27 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 2
  %29 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %30 = call i32 @IFQ_DRV_DEQUEUE(i32* %28, %struct.mbuf* %29)
  %31 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %32 = call i32 @m_length(%struct.mbuf* %31, i32* null)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 1
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ETHER_MAX_LEN, align 4
  %39 = load i32, i32* @ETHER_CRC_LEN, align 4
  %40 = sub nsw i32 %38, %39
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %26
  %43 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %44 = call i32 @if_printf(%struct.ifnet* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %46 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %47 = call i32 @if_inc_counter(%struct.ifnet* %45, i32 %46, i32 1)
  %48 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %49 = call i32 @m_freem(%struct.mbuf* %48)
  br label %125

50:                                               ; preds = %26
  %51 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %57 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %58 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %57, i32 0, i32 3
  store %struct.mbuf* %56, %struct.mbuf** %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @PKT_CTRL_DATA_LEN, align 4
  %61 = add nsw i32 %59, %60
  %62 = ashr i32 %61, 8
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  store i32 1, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %50
  %67 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %68 = call i32 @smc_select_bank(%struct.smc_softc* %67, i32 2)
  %69 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %70 = call i32 @smc_mmu_wait(%struct.smc_softc* %69)
  %71 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %72 = load i32, i32* @MMUCR, align 4
  %73 = load i32, i32* @MMUCR_CMD_TX_ALLOC, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @smc_write_2(%struct.smc_softc* %71, i32 %72, i32 %75)
  %77 = load i32, i32* @TX_ALLOC_WAIT_TIME, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %91, %66
  %79 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %80 = load i32, i32* @IST, align 4
  %81 = call i32 @smc_read_1(%struct.smc_softc* %79, i32 %80)
  %82 = load i32, i32* @ALLOC_INT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %87 = load i32, i32* @ACK, align 4
  %88 = load i32, i32* @ALLOC_INT, align 4
  %89 = call i32 @smc_write_1(%struct.smc_softc* %86, i32 %87, i32 %88)
  br label %95

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %78, label %95

95:                                               ; preds = %91, %85
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %95
  %99 = load i32, i32* @ALLOC_INT, align 4
  %100 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %101 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %105 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IFCAP_POLLING, align 4
  %108 = and i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %98
  %111 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %112 = load i32, i32* @MSK, align 4
  %113 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %114 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @smc_write_1(%struct.smc_softc* %111, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %110, %98
  br label %125

118:                                              ; preds = %95
  %119 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %120 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %123 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %122, i32 0, i32 1
  %124 = call i32 @taskqueue_enqueue(i32 %121, i32* %123)
  br label %125

125:                                              ; preds = %118, %117, %42, %25, %19
  ret void
}

declare dso_local i32 @SMC_ASSERT_LOCKED(%struct.smc_softc*) #1

declare dso_local i64 @IFQ_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @m_length(%struct.mbuf*, i32*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @smc_select_bank(%struct.smc_softc*, i32) #1

declare dso_local i32 @smc_mmu_wait(%struct.smc_softc*) #1

declare dso_local i32 @smc_write_2(%struct.smc_softc*, i32, i32) #1

declare dso_local i32 @smc_read_1(%struct.smc_softc*, i32) #1

declare dso_local i32 @smc_write_1(%struct.smc_softc*, i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
