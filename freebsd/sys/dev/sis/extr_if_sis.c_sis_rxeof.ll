; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i32, i64, i32, i32, %struct.sis_rxdesc*, %struct.sis_desc*, %struct.ifnet* }
%struct.sis_rxdesc = type { %struct.mbuf* }
%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ifnet* }
%struct.sis_desc = type { i32 }
%struct.ifnet = type { i32, i32, i32 (%struct.ifnet*, %struct.mbuf*)* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@SIS_CMDSTS_OWN = common dso_local global i32 0, align 4
@SIS_CMDSTS_BUFLEN = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@ETHER_MAX_LEN = common dso_local global i32 0, align 4
@ETHER_VLAN_ENCAP_LEN = common dso_local global i32 0, align 4
@SIS_RXSTAT_GIANT = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@SIS_RXSTAT_COLL = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@SIS_RX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sis_softc*)* @sis_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_rxeof(%struct.sis_softc* %0) #0 {
  %2 = alloca %struct.sis_softc*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.sis_rxdesc*, align 8
  %6 = alloca %struct.sis_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sis_softc* %0, %struct.sis_softc** %2, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %13 = call i32 @SIS_LOCK_ASSERT(%struct.sis_softc* %12)
  %14 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %15 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %18 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %21 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @bus_dmamap_sync(i32 %16, i32 %19, i32 %22)
  %24 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %25 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %28 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %27, i32 0, i32 6
  %29 = load %struct.ifnet*, %struct.ifnet** %28, align 8
  store %struct.ifnet* %29, %struct.ifnet** %4, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %145, %1
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %151

37:                                               ; preds = %30
  %38 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %39 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %38, i32 0, i32 5
  %40 = load %struct.sis_desc*, %struct.sis_desc** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sis_desc, %struct.sis_desc* %40, i64 %42
  store %struct.sis_desc* %43, %struct.sis_desc** %6, align 8
  %44 = load %struct.sis_desc*, %struct.sis_desc** %6, align 8
  %45 = getelementptr inbounds %struct.sis_desc, %struct.sis_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32toh(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @SIS_CMDSTS_OWN, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %151

53:                                               ; preds = %37
  %54 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %55 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %54, i32 0, i32 4
  %56 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %56, i64 %58
  store %struct.sis_rxdesc* %59, %struct.sis_rxdesc** %5, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @SIS_CMDSTS_BUFLEN, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @ETHER_CRC_LEN, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %10, align 4
  %65 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %53
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @ETHER_MAX_LEN, align 4
  %74 = load i32, i32* @ETHER_VLAN_ENCAP_LEN, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* @ETHER_CRC_LEN, align 4
  %77 = sub nsw i32 %75, %76
  %78 = icmp sle i32 %72, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load i32, i32* @SIS_RXSTAT_GIANT, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %79, %71, %53
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @SIS_RXSTAT_ERROR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %90 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %91 = call i32 @if_inc_counter(%struct.ifnet* %89, i32 %90, i32 1)
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @SIS_RXSTAT_COLL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %98 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %99 = call i32 @if_inc_counter(%struct.ifnet* %97, i32 %98, i32 1)
  br label %100

100:                                              ; preds = %96, %88
  %101 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %5, align 8
  %102 = call i32 @sis_discard_rxbuf(%struct.sis_rxdesc* %101)
  br label %145

103:                                              ; preds = %84
  %104 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %5, align 8
  %105 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %104, i32 0, i32 0
  %106 = load %struct.mbuf*, %struct.mbuf** %105, align 8
  store %struct.mbuf* %106, %struct.mbuf** %3, align 8
  %107 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %108 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %5, align 8
  %109 = call i64 @sis_newbuf(%struct.sis_softc* %107, %struct.sis_rxdesc* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %113 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %114 = call i32 @if_inc_counter(%struct.ifnet* %112, i32 %113, i32 1)
  %115 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %5, align 8
  %116 = call i32 @sis_discard_rxbuf(%struct.sis_rxdesc* %115)
  br label %145

117:                                              ; preds = %103
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %120 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %122 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  store i32 %118, i32* %123, align 8
  %124 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %125 = call i32 @sis_fixup_rx(%struct.mbuf* %124)
  %126 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %127 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %128 = call i32 @if_inc_counter(%struct.ifnet* %126, i32 %127, i32 1)
  %129 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %130 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %131 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  store %struct.ifnet* %129, %struct.ifnet** %132, align 8
  %133 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %134 = call i32 @SIS_UNLOCK(%struct.sis_softc* %133)
  %135 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %136 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %135, i32 0, i32 2
  %137 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %136, align 8
  %138 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %139 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %140 = call i32 %137(%struct.ifnet* %138, %struct.mbuf* %139)
  %141 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %142 = call i32 @SIS_LOCK(%struct.sis_softc* %141)
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %117, %111, %100
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @SIS_RX_LIST_CNT, align 4
  %148 = call i32 @SIS_INC(i32 %146, i32 %147)
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %30

151:                                              ; preds = %52, %30
  %152 = load i32, i32* %7, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %168

154:                                              ; preds = %151
  %155 = load i32, i32* %8, align 4
  %156 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %157 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %159 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %162 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %165 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %166 = or i32 %164, %165
  %167 = call i32 @bus_dmamap_sync(i32 %160, i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %154, %151
  %169 = load i32, i32* %9, align 4
  ret i32 %169
}

declare dso_local i32 @SIS_LOCK_ASSERT(%struct.sis_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i64 @SIS_RXSTAT_ERROR(i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @sis_discard_rxbuf(%struct.sis_rxdesc*) #1

declare dso_local i64 @sis_newbuf(%struct.sis_softc*, %struct.sis_rxdesc*) #1

declare dso_local i32 @sis_fixup_rx(%struct.mbuf*) #1

declare dso_local i32 @SIS_UNLOCK(%struct.sis_softc*) #1

declare dso_local i32 @SIS_LOCK(%struct.sis_softc*) #1

declare dso_local i32 @SIS_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
