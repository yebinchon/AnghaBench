; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_init_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_init_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i32, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__*, %struct.msk_ring_data }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.msk_rxdesc*, i32 }
%struct.msk_rxdesc = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.msk_ring_data = type { %struct.TYPE_6__* }

@MSK_PUT_WM = common dso_local global i32 0, align 4
@MSK_RX_RING_CNT = common dso_local global i32 0, align 4
@MSK_RX_BUF_CNT = common dso_local global i32 0, align 4
@MSK_FLAG_DESCV2 = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@OP_TCPSTART = common dso_local global i32 0, align 4
@HW_OWNER = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@PREF_UNIT_PUT_IDX_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msk_if_softc*)* @msk_init_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msk_init_rx_ring(%struct.msk_if_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msk_if_softc*, align 8
  %4 = alloca %struct.msk_ring_data*, align 8
  %5 = alloca %struct.msk_rxdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %3, align 8
  %9 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %10 = call i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc* %9)
  %11 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %12 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %15 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @MSK_PUT_WM, align 4
  %18 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %19 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 5
  store i32 %17, i32* %20, align 8
  %21 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %22 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %21, i32 0, i32 5
  store %struct.msk_ring_data* %22, %struct.msk_ring_data** %4, align 8
  %23 = load %struct.msk_ring_data*, %struct.msk_ring_data** %4, align 8
  %24 = getelementptr inbounds %struct.msk_ring_data, %struct.msk_ring_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* @MSK_RX_RING_CNT, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @bzero(%struct.TYPE_6__* %25, i32 %29)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %56, %1
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MSK_RX_RING_CNT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %37 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  %39 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %39, i64 %41
  store %struct.msk_rxdesc* %42, %struct.msk_rxdesc** %5, align 8
  %43 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %44 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.msk_ring_data*, %struct.msk_ring_data** %4, align 8
  %46 = getelementptr inbounds %struct.msk_ring_data, %struct.msk_ring_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %52 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %51, i32 0, i32 0
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @MSK_RX_RING_CNT, align 4
  %55 = call i32 @MSK_INC(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %35
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load i32, i32* @MSK_RX_BUF_CNT, align 4
  store i32 %60, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %61 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %62 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MSK_FLAG_DESCV2, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %122

67:                                               ; preds = %59
  %68 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %69 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IFCAP_RXCSUM, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %122

76:                                               ; preds = %67
  %77 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %78 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  %80 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %80, i64 %82
  store %struct.msk_rxdesc* %83, %struct.msk_rxdesc** %5, align 8
  %84 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %85 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  %86 = load %struct.msk_ring_data*, %struct.msk_ring_data** %4, align 8
  %87 = getelementptr inbounds %struct.msk_ring_data, %struct.msk_ring_data* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %93 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %92, i32 0, i32 0
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %93, align 8
  %94 = load i32, i32* @ETHER_HDR_LEN, align 4
  %95 = shl i32 %94, 16
  %96 = load i32, i32* @ETHER_HDR_LEN, align 4
  %97 = or i32 %95, %96
  %98 = call i8* @htole32(i32 %97)
  %99 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %100 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i8* %98, i8** %102, align 8
  %103 = load i32, i32* @OP_TCPSTART, align 4
  %104 = load i32, i32* @HW_OWNER, align 4
  %105 = or i32 %103, %104
  %106 = call i8* @htole32(i32 %105)
  %107 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %5, align 8
  %108 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i8* %106, i8** %110, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @MSK_RX_RING_CNT, align 4
  %113 = call i32 @MSK_INC(i32 %111, i32 %112)
  %114 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %115 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MSK_RX_RING_CNT, align 4
  %119 = call i32 @MSK_INC(i32 %117, i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %76, %67, %59
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %138, %122
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %141

127:                                              ; preds = %123
  %128 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i64 @msk_newbuf(%struct.msk_if_softc* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @ENOBUFS, align 4
  store i32 %133, i32* %2, align 4
  br label %182

134:                                              ; preds = %127
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @MSK_RX_RING_CNT, align 4
  %137 = call i32 @MSK_RX_INC(i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %123

141:                                              ; preds = %123
  %142 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %143 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %147 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %151 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @bus_dmamap_sync(i32 %145, i32 %149, i32 %152)
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %156 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  store i32 %154, i32* %157, align 4
  %158 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %159 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %162 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @PREF_UNIT_PUT_IDX_REG, align 4
  %165 = call i32 @Y2_PREF_Q_ADDR(i32 %163, i32 %164)
  %166 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %167 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @MSK_RX_RING_CNT, align 4
  %171 = add nsw i32 %169, %170
  %172 = sub nsw i32 %171, 1
  %173 = load i32, i32* @MSK_RX_RING_CNT, align 4
  %174 = srem i32 %172, %173
  %175 = call i32 @CSR_WRITE_2(i32 %160, i32 %165, i32 %174)
  %176 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %177 = call i64 @msk_rx_fill(%struct.msk_if_softc* %176, i32 0)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %141
  %180 = load i32, i32* @ENOBUFS, align 4
  store i32 %180, i32* %2, align 4
  br label %182

181:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %181, %179, %132
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc*) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @MSK_INC(i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i64 @msk_newbuf(%struct.msk_if_softc*, i32) #1

declare dso_local i32 @MSK_RX_INC(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(i32, i32, i32) #1

declare dso_local i32 @Y2_PREF_Q_ADDR(i32, i32) #1

declare dso_local i64 @msk_rx_fill(%struct.msk_if_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
