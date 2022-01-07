; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { %struct.TYPE_3__, i32, %struct.ifnet* }
%struct.TYPE_3__ = type { i64, i32, %struct.ale_rx_page* }
%struct.ale_rx_page = type { i32*, i32, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32, i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rx_rs = type { i32, i32, i32, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"garbled seq: %u, expected: %u -- resetting!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ALE_RD_ERROR = common dso_local global i32 0, align 4
@ALE_RD_CRC = common dso_local global i32 0, align 4
@ALE_RD_CODE = common dso_local global i32 0, align 4
@ALE_RD_DRIBBLE = common dso_local global i32 0, align 4
@ALE_RD_RUNT = common dso_local global i32 0, align 4
@ALE_RD_OFLOW = common dso_local global i32 0, align 4
@ALE_RD_TRUNC = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@ALE_RD_IPV4 = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@ALE_RD_VLAN = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ale_softc*, i32)* @ale_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ale_rxeof(%struct.ale_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ale_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ale_rx_page*, align 8
  %7 = alloca %struct.rx_rs*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ale_softc* %0, %struct.ale_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.ale_softc*, %struct.ale_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %16, i32 0, i32 2
  %18 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  store %struct.ifnet* %18, %struct.ifnet** %8, align 8
  %19 = load %struct.ale_softc*, %struct.ale_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load %struct.ale_rx_page*, %struct.ale_rx_page** %21, align 8
  %23 = load %struct.ale_softc*, %struct.ale_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %22, i64 %26
  store %struct.ale_rx_page* %27, %struct.ale_rx_page** %6, align 8
  %28 = load %struct.ale_rx_page*, %struct.ale_rx_page** %6, align 8
  %29 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ale_rx_page*, %struct.ale_rx_page** %6, align 8
  %32 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %35 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @bus_dmamap_sync(i32 %30, i32 %33, i32 %36)
  %38 = load %struct.ale_rx_page*, %struct.ale_rx_page** %6, align 8
  %39 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ale_rx_page*, %struct.ale_rx_page** %6, align 8
  %42 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %45 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @bus_dmamap_sync(i32 %40, i32 %43, i32 %46)
  %48 = load %struct.ale_rx_page*, %struct.ale_rx_page** %6, align 8
  %49 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %52

52:                                               ; preds = %216, %2
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %219

56:                                               ; preds = %52
  %57 = load %struct.ale_rx_page*, %struct.ale_rx_page** %6, align 8
  %58 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %219

63:                                               ; preds = %56
  %64 = load %struct.ale_rx_page*, %struct.ale_rx_page** %6, align 8
  %65 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ale_rx_page*, %struct.ale_rx_page** %6, align 8
  %68 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to %struct.rx_rs*
  store %struct.rx_rs* %72, %struct.rx_rs** %7, align 8
  %73 = load %struct.rx_rs*, %struct.rx_rs** %7, align 8
  %74 = getelementptr inbounds %struct.rx_rs, %struct.rx_rs* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le32toh(i32 %75)
  %77 = call i32 @ALE_RX_SEQNO(i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.ale_softc*, %struct.ale_softc** %4, align 8
  %79 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %63
  %85 = load i64, i64* @bootverbose, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load %struct.ale_softc*, %struct.ale_softc** %4, align 8
  %89 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.ale_softc*, %struct.ale_softc** %4, align 8
  %93 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %95)
  br label %97

97:                                               ; preds = %87, %84
  %98 = load i32, i32* @EIO, align 4
  store i32 %98, i32* %3, align 4
  br label %227

99:                                               ; preds = %63
  %100 = load %struct.ale_softc*, %struct.ale_softc** %4, align 8
  %101 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.rx_rs*, %struct.rx_rs** %7, align 8
  %106 = getelementptr inbounds %struct.rx_rs, %struct.rx_rs* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le32toh(i32 %107)
  %109 = call i32 @ALE_RX_BYTES(i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load %struct.rx_rs*, %struct.rx_rs** %7, align 8
  %111 = getelementptr inbounds %struct.rx_rs, %struct.rx_rs* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le32toh(i32 %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @ALE_RD_ERROR, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %99
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @ALE_RD_CRC, align 4
  %121 = load i32, i32* @ALE_RD_CODE, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @ALE_RD_DRIBBLE, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @ALE_RD_RUNT, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @ALE_RD_OFLOW, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @ALE_RD_TRUNC, align 4
  %130 = or i32 %128, %129
  %131 = and i32 %119, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %118
  %134 = load %struct.ale_softc*, %struct.ale_softc** %4, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @ale_rx_update_page(%struct.ale_softc* %134, %struct.ale_rx_page** %6, i32 %135, i32* %11)
  br label %216

137:                                              ; preds = %118
  br label %138

138:                                              ; preds = %137, %99
  %139 = load %struct.rx_rs*, %struct.rx_rs** %7, align 8
  %140 = getelementptr inbounds %struct.rx_rs, %struct.rx_rs* %139, i64 1
  %141 = bitcast %struct.rx_rs* %140 to i8*
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @ETHER_CRC_LEN, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load i32, i32* @ETHER_ALIGN, align 4
  %146 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %147 = call %struct.mbuf* @m_devget(i8* %141, i32 %144, i32 %145, %struct.ifnet* %146, i32* null)
  store %struct.mbuf* %147, %struct.mbuf** %9, align 8
  %148 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %149 = icmp eq %struct.mbuf* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %138
  %151 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %152 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %153 = call i32 @if_inc_counter(%struct.ifnet* %151, i32 %152, i32 1)
  %154 = load %struct.ale_softc*, %struct.ale_softc** %4, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @ale_rx_update_page(%struct.ale_softc* %154, %struct.ale_rx_page** %6, i32 %155, i32* %11)
  br label %216

157:                                              ; preds = %138
  %158 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %159 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @IFCAP_RXCSUM, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %157
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @ALE_RD_IPV4, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.ale_softc*, %struct.ale_softc** %4, align 8
  %171 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @ale_rxcsum(%struct.ale_softc* %170, %struct.mbuf* %171, i32 %172)
  br label %174

174:                                              ; preds = %169, %164, %157
  %175 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %176 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %202

181:                                              ; preds = %174
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* @ALE_RD_VLAN, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %202

186:                                              ; preds = %181
  %187 = load %struct.rx_rs*, %struct.rx_rs** %7, align 8
  %188 = getelementptr inbounds %struct.rx_rs, %struct.rx_rs* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @le32toh(i32 %189)
  %191 = call i32 @ALE_RX_VLAN(i32 %190)
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @ALE_RX_VLAN_TAG(i32 %192)
  %194 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %195 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  store i32 %193, i32* %196, align 4
  %197 = load i32, i32* @M_VLANTAG, align 4
  %198 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %199 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %186, %181, %174
  %203 = load %struct.ale_softc*, %struct.ale_softc** %4, align 8
  %204 = call i32 @ALE_UNLOCK(%struct.ale_softc* %203)
  %205 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %206 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %205, i32 0, i32 1
  %207 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %206, align 8
  %208 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %209 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %210 = call i32 %207(%struct.ifnet* %208, %struct.mbuf* %209)
  %211 = load %struct.ale_softc*, %struct.ale_softc** %4, align 8
  %212 = call i32 @ALE_LOCK(%struct.ale_softc* %211)
  %213 = load %struct.ale_softc*, %struct.ale_softc** %4, align 8
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @ale_rx_update_page(%struct.ale_softc* %213, %struct.ale_rx_page** %6, i32 %214, i32* %11)
  br label %216

216:                                              ; preds = %202, %150, %133
  %217 = load i32, i32* %15, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %15, align 4
  br label %52

219:                                              ; preds = %62, %52
  %220 = load i32, i32* %5, align 4
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  br label %225

223:                                              ; preds = %219
  %224 = load i32, i32* @EAGAIN, align 4
  br label %225

225:                                              ; preds = %223, %222
  %226 = phi i32 [ 0, %222 ], [ %224, %223 ]
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %225, %97
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @ALE_RX_SEQNO(i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @ALE_RX_BYTES(i32) #1

declare dso_local i32 @ale_rx_update_page(%struct.ale_softc*, %struct.ale_rx_page**, i32, i32*) #1

declare dso_local %struct.mbuf* @m_devget(i8*, i32, i32, %struct.ifnet*, i32*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ale_rxcsum(%struct.ale_softc*, %struct.mbuf*, i32) #1

declare dso_local i32 @ALE_RX_VLAN(i32) #1

declare dso_local i32 @ALE_RX_VLAN_TAG(i32) #1

declare dso_local i32 @ALE_UNLOCK(%struct.ale_softc*) #1

declare dso_local i32 @ALE_LOCK(%struct.ale_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
