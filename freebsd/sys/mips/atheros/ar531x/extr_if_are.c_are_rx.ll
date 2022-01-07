; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.are_softc = type { %struct.TYPE_6__, i32, %struct.TYPE_4__, %struct.ifnet* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.are_rxdesc* }
%struct.are_rxdesc = type { i32, i64, %struct.mbuf*, i32 }
%struct.mbuf = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.ifnet*, i64 }
%struct.TYPE_4__ = type { %struct.are_desc* }
%struct.are_desc = type { i32, i64, i32 }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ARE_RX_RING_CNT = common dso_local global i32 0, align 4
@ADSTAT_OWN = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@ADSTAT_Rx_DE = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@ADCTL_ER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to allocate buffer\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.are_softc*)* @are_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @are_rx(%struct.are_softc* %0) #0 {
  %2 = alloca %struct.are_softc*, align 8
  %3 = alloca %struct.are_rxdesc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.are_desc*, align 8
  %10 = alloca %struct.mbuf*, align 8
  store %struct.are_softc* %0, %struct.are_softc** %2, align 8
  %11 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %12 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %11, i32 0, i32 3
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %4, align 8
  %14 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %15 = call i32 @ARE_LOCK_ASSERT(%struct.are_softc* %14)
  %16 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %17 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %21 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %25 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %29 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @bus_dmamap_sync(i32 %23, i32 %27, i32 %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %184, %1
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ARE_RX_RING_CNT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %188

36:                                               ; preds = %32
  %37 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %38 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.are_desc*, %struct.are_desc** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %40, i64 %42
  store %struct.are_desc* %43, %struct.are_desc** %9, align 8
  %44 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %45 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load %struct.are_rxdesc*, %struct.are_rxdesc** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.are_rxdesc, %struct.are_rxdesc* %47, i64 %49
  store %struct.are_rxdesc* %50, %struct.are_rxdesc** %3, align 8
  %51 = load %struct.are_rxdesc*, %struct.are_rxdesc** %3, align 8
  %52 = getelementptr inbounds %struct.are_rxdesc, %struct.are_rxdesc* %51, i32 0, i32 2
  %53 = load %struct.mbuf*, %struct.mbuf** %52, align 8
  store %struct.mbuf* %53, %struct.mbuf** %10, align 8
  %54 = load %struct.are_desc*, %struct.are_desc** %9, align 8
  %55 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ADSTAT_OWN, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @ADSTAT_OWN, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %36
  br label %188

62:                                               ; preds = %36
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = load %struct.are_desc*, %struct.are_desc** %9, align 8
  %66 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ADSTAT_Rx_LENGTH(i32 %67)
  store i32 %68, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 64
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %73 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %74 = call i32 @if_inc_counter(%struct.ifnet* %72, i32 %73, i32 1)
  br label %126

75:                                               ; preds = %62
  %76 = load %struct.are_desc*, %struct.are_desc** %9, align 8
  %77 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ADSTAT_Rx_DE, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %125

82:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  %83 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %84 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.are_rxdesc*, %struct.are_rxdesc** %3, align 8
  %88 = getelementptr inbounds %struct.are_rxdesc, %struct.are_rxdesc* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %91 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @bus_dmamap_sync(i32 %86, i32 %89, i32 %92)
  %94 = load %struct.are_rxdesc*, %struct.are_rxdesc** %3, align 8
  %95 = getelementptr inbounds %struct.are_rxdesc, %struct.are_rxdesc* %94, i32 0, i32 2
  %96 = load %struct.mbuf*, %struct.mbuf** %95, align 8
  store %struct.mbuf* %96, %struct.mbuf** %10, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* @ETHER_CRC_LEN, align 8
  %100 = sub nsw i64 %98, %99
  %101 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %102 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %104 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i64 %100, i64* %105, align 8
  %106 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %107 = call i32 @are_fixup_rx(%struct.mbuf* %106)
  %108 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %109 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %110 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store %struct.ifnet* %108, %struct.ifnet** %111, align 8
  %112 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %113 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %114 = call i32 @if_inc_counter(%struct.ifnet* %112, i32 %113, i32 1)
  %115 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %116 = call i32 @ARE_UNLOCK(%struct.are_softc* %115)
  %117 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 0
  %119 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %118, align 8
  %120 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %121 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %122 = call i32 %119(%struct.ifnet* %120, %struct.mbuf* %121)
  %123 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %124 = call i32 @ARE_LOCK(%struct.are_softc* %123)
  br label %125

125:                                              ; preds = %82, %75
  br label %126

126:                                              ; preds = %125, %71
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load %struct.are_rxdesc*, %struct.are_rxdesc** %3, align 8
  %131 = getelementptr inbounds %struct.are_rxdesc, %struct.are_rxdesc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.are_desc*, %struct.are_desc** %9, align 8
  %134 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.are_rxdesc*, %struct.are_rxdesc** %3, align 8
  %136 = getelementptr inbounds %struct.are_rxdesc, %struct.are_rxdesc* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.are_desc*, %struct.are_desc** %9, align 8
  %139 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  %140 = load %struct.are_desc*, %struct.are_desc** %9, align 8
  %141 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %140, i32 0, i32 2
  store i32 0, i32* %141, align 8
  br label %171

142:                                              ; preds = %126
  %143 = load i32, i32* @ADSTAT_OWN, align 4
  %144 = load %struct.are_desc*, %struct.are_desc** %9, align 8
  %145 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.are_desc*, %struct.are_desc** %9, align 8
  %147 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %146, i32 0, i32 2
  store i32 0, i32* %147, align 8
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @ARE_RX_RING_CNT, align 4
  %150 = sub nsw i32 %149, 1
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %142
  %153 = load i32, i32* @ADCTL_ER, align 4
  %154 = load %struct.are_desc*, %struct.are_desc** %9, align 8
  %155 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %152, %142
  %159 = load %struct.are_desc*, %struct.are_desc** %9, align 8
  %160 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  %161 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %162 = load i32, i32* %5, align 4
  %163 = call i64 @are_newbuf(%struct.are_softc* %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %158
  %166 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %167 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @device_printf(i32 %168, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %188

170:                                              ; preds = %158
  br label %171

171:                                              ; preds = %170, %129
  %172 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %173 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %177 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %181 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @bus_dmamap_sync(i32 %175, i32 %179, i32 %182)
  br label %184

184:                                              ; preds = %171
  %185 = load i32, i32* %5, align 4
  %186 = load i32, i32* @ARE_RX_RING_CNT, align 4
  %187 = call i32 @ARE_INC(i32 %185, i32 %186)
  br label %32

188:                                              ; preds = %165, %61, %32
  %189 = load i32, i32* %6, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %208

191:                                              ; preds = %188
  %192 = load i32, i32* %5, align 4
  %193 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %194 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %197 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %201 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %205 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @bus_dmamap_sync(i32 %199, i32 %203, i32 %206)
  br label %208

208:                                              ; preds = %191, %188
  ret void
}

declare dso_local i32 @ARE_LOCK_ASSERT(%struct.are_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @ADSTAT_Rx_LENGTH(i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @are_fixup_rx(%struct.mbuf*) #1

declare dso_local i32 @ARE_UNLOCK(%struct.are_softc*) #1

declare dso_local i32 @ARE_LOCK(%struct.are_softc*) #1

declare dso_local i64 @are_newbuf(%struct.are_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ARE_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
