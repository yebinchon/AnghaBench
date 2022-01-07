; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, %struct.dc_chain_data, %struct.dc_list_data, %struct.ifnet* }
%struct.dc_chain_data = type { i32**, i32*, i32**, i32* }
%struct.dc_list_data = type { %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@DC_NETCFG = common dso_local global i32 0, align 4
@DC_NETCFG_RX_ON = common dso_local global i32 0, align 4
@DC_NETCFG_TX_ON = common dso_local global i32 0, align 4
@DC_IMR = common dso_local global i32 0, align 4
@DC_TXADDR = common dso_local global i32 0, align 4
@DC_RXADDR = common dso_local global i32 0, align 4
@DC_RX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@DC_RX_LIST_SZ = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@DC_TX_LIST_CNT = common dso_local global i32 0, align 4
@DC_TXCTL_SETUP = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@DC_TX_LIST_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*)* @dc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_stop(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.dc_list_data*, align 8
  %5 = alloca %struct.dc_chain_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %2, align 8
  %9 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %10 = call i32 @DC_LOCK_ASSERT(%struct.dc_softc* %9)
  %11 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %11, i32 0, i32 14
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %3, align 8
  %14 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %14, i32 0, i32 13
  store %struct.dc_list_data* %15, %struct.dc_list_data** %4, align 8
  %16 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %17 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %16, i32 0, i32 12
  store %struct.dc_chain_data* %17, %struct.dc_chain_data** %5, align 8
  %18 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %19 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %18, i32 0, i32 11
  %20 = call i32 @callout_stop(i32* %19)
  %21 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %22 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %21, i32 0, i32 10
  %23 = call i32 @callout_stop(i32* %22)
  %24 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %25 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %24, i32 0, i32 9
  store i64 0, i64* %25, align 8
  %26 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %27 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %26, i32 0, i32 8
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %29 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %37 = load i32, i32* @DC_NETCFG, align 4
  %38 = call i32 @CSR_READ_4(%struct.dc_softc* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @DC_NETCFG_RX_ON, align 4
  %41 = load i32, i32* @DC_NETCFG_TX_ON, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %1
  %46 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %47 = load i32, i32* @DC_NETCFG, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @DC_NETCFG_RX_ON, align 4
  %50 = load i32, i32* @DC_NETCFG_TX_ON, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %48, %52
  %54 = call i32 @CSR_WRITE_4(%struct.dc_softc* %46, i32 %47, i32 %53)
  br label %55

55:                                               ; preds = %45, %1
  %56 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %57 = load i32, i32* @DC_IMR, align 4
  %58 = call i32 @CSR_WRITE_4(%struct.dc_softc* %56, i32 %57, i32 0)
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @DC_NETCFG_RX_ON, align 4
  %61 = load i32, i32* @DC_NETCFG_TX_ON, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %67 = call i32 @dc_netcfg_wait(%struct.dc_softc* %66)
  br label %68

68:                                               ; preds = %65, %55
  %69 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %70 = load i32, i32* @DC_TXADDR, align 4
  %71 = call i32 @CSR_WRITE_4(%struct.dc_softc* %69, i32 %70, i32 0)
  %72 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %73 = load i32, i32* @DC_RXADDR, align 4
  %74 = call i32 @CSR_WRITE_4(%struct.dc_softc* %72, i32 %73, i32 0)
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %127, %68
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @DC_RX_LIST_CNT, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %130

79:                                               ; preds = %75
  %80 = load %struct.dc_chain_data*, %struct.dc_chain_data** %5, align 8
  %81 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %80, i32 0, i32 2
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %126

88:                                               ; preds = %79
  %89 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %90 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.dc_chain_data*, %struct.dc_chain_data** %5, align 8
  %93 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %100 = call i32 @bus_dmamap_sync(i32 %91, i32 %98, i32 %99)
  %101 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %102 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.dc_chain_data*, %struct.dc_chain_data** %5, align 8
  %105 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @bus_dmamap_unload(i32 %103, i32 %110)
  %112 = load %struct.dc_chain_data*, %struct.dc_chain_data** %5, align 8
  %113 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %112, i32 0, i32 2
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @m_freem(i32* %118)
  %120 = load %struct.dc_chain_data*, %struct.dc_chain_data** %5, align 8
  %121 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %120, i32 0, i32 2
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  store i32* null, i32** %125, align 8
  br label %126

126:                                              ; preds = %88, %79
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %75

130:                                              ; preds = %75
  %131 = load %struct.dc_list_data*, %struct.dc_list_data** %4, align 8
  %132 = getelementptr inbounds %struct.dc_list_data, %struct.dc_list_data* %131, i32 0, i32 1
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* @DC_RX_LIST_SZ, align 4
  %135 = call i32 @bzero(%struct.TYPE_2__* %133, i32 %134)
  %136 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %137 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %140 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %143 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @bus_dmamap_sync(i32 %138, i32 %141, i32 %144)
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %222, %130
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @DC_TX_LIST_CNT, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %225

150:                                              ; preds = %146
  %151 = load %struct.dc_chain_data*, %struct.dc_chain_data** %5, align 8
  %152 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %221

159:                                              ; preds = %150
  %160 = load %struct.dc_list_data*, %struct.dc_list_data** %4, align 8
  %161 = getelementptr inbounds %struct.dc_list_data, %struct.dc_list_data* %160, i32 0, i32 0
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @le32toh(i32 %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @DC_TXCTL_SETUP, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %159
  %174 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %175 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %178 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %181 = call i32 @bus_dmamap_sync(i32 %176, i32 %179, i32 %180)
  br label %214

182:                                              ; preds = %159
  %183 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %184 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.dc_chain_data*, %struct.dc_chain_data** %5, align 8
  %187 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %194 = call i32 @bus_dmamap_sync(i32 %185, i32 %192, i32 %193)
  %195 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %196 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.dc_chain_data*, %struct.dc_chain_data** %5, align 8
  %199 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @bus_dmamap_unload(i32 %197, i32 %204)
  %206 = load %struct.dc_chain_data*, %struct.dc_chain_data** %5, align 8
  %207 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %206, i32 0, i32 0
  %208 = load i32**, i32*** %207, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %208, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @m_freem(i32* %212)
  br label %214

214:                                              ; preds = %182, %173
  %215 = load %struct.dc_chain_data*, %struct.dc_chain_data** %5, align 8
  %216 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %215, i32 0, i32 0
  %217 = load i32**, i32*** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %217, i64 %219
  store i32* null, i32** %220, align 8
  br label %221

221:                                              ; preds = %214, %150
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %146

225:                                              ; preds = %146
  %226 = load %struct.dc_list_data*, %struct.dc_list_data** %4, align 8
  %227 = getelementptr inbounds %struct.dc_list_data, %struct.dc_list_data* %226, i32 0, i32 0
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %227, align 8
  %229 = load i32, i32* @DC_TX_LIST_SZ, align 4
  %230 = call i32 @bzero(%struct.TYPE_2__* %228, i32 %229)
  %231 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %232 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %235 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %238 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %239 = or i32 %237, %238
  %240 = call i32 @bus_dmamap_sync(i32 %233, i32 %236, i32 %239)
  ret void
}

declare dso_local i32 @DC_LOCK_ASSERT(%struct.dc_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CSR_READ_4(%struct.dc_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @dc_netcfg_wait(%struct.dc_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
