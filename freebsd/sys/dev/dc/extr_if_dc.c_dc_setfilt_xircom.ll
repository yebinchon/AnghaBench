; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_setfilt_xircom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_setfilt_xircom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32, i32, i32, i32, i32, %struct.ifnet*, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.ifnet = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, %struct.mbuf**, i32 }
%struct.mbuf = type { i32 }
%struct.TYPE_3__ = type { %struct.dc_desc* }
%struct.dc_desc = type { i32, i32, i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@DC_NETCFG = common dso_local global i32 0, align 4
@DC_NETCFG_TX_ON = common dso_local global i32 0, align 4
@DC_NETCFG_RX_ON = common dso_local global i32 0, align 4
@DC_TX_LIST_CNT = common dso_local global i32 0, align 4
@DC_SFRAME_LEN = common dso_local global i32 0, align 4
@DC_TXCTL_SETUP = common dso_local global i32 0, align 4
@DC_TXCTL_TLINK = common dso_local global i32 0, align 4
@DC_FILTER_HASHPERF = common dso_local global i32 0, align 4
@DC_TXCTL_FINT = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@DC_NETCFG_RX_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@DC_NETCFG_RX_ALLMULTI = common dso_local global i32 0, align 4
@dc_hash_maddr_xircom = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@DC_TXSTAT_OWN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@DC_TXSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*)* @dc_setfilt_xircom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_setfilt_xircom(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.dc_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %2, align 8
  %10 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %11 = add nsw i32 %10, 1
  %12 = sdiv i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %17 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %16, i32 0, i32 5
  %18 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  store %struct.ifnet* %18, %struct.ifnet** %5, align 8
  %19 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %20 = load i32, i32* @DC_NETCFG, align 4
  %21 = load i32, i32* @DC_NETCFG_TX_ON, align 4
  %22 = load i32, i32* @DC_NETCFG_RX_ON, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @DC_CLRBIT(%struct.dc_softc* %19, i32 %20, i32 %23)
  %25 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %26 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %30 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DC_TX_LIST_CNT, align 4
  %34 = call i32 @DC_INC(i32 %32, i32 %33)
  %35 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %36 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %41 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.dc_desc*, %struct.dc_desc** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %43, i64 %45
  store %struct.dc_desc* %46, %struct.dc_desc** %6, align 8
  %47 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %48 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %8, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* @DC_SFRAME_LEN, align 4
  %53 = call i32 @bzero(i32* %51, i32 %52)
  %54 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %55 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @DC_ADDR_LO(i32 %56)
  %58 = call i32 @htole32(i32 %57)
  %59 = load %struct.dc_desc*, %struct.dc_desc** %6, align 8
  %60 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @DC_SFRAME_LEN, align 4
  %62 = load i32, i32* @DC_TXCTL_SETUP, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @DC_TXCTL_TLINK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @DC_FILTER_HASHPERF, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @DC_TXCTL_FINT, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @htole32(i32 %69)
  %71 = load %struct.dc_desc*, %struct.dc_desc** %6, align 8
  %72 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %74 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = bitcast i32* %76 to %struct.mbuf*
  %78 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %79 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load %struct.mbuf**, %struct.mbuf*** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %81, i64 %83
  store %struct.mbuf* %77, %struct.mbuf** %84, align 8
  %85 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IFF_PROMISC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %1
  %92 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %93 = load i32, i32* @DC_NETCFG, align 4
  %94 = load i32, i32* @DC_NETCFG_RX_PROMISC, align 4
  %95 = call i32 @DC_SETBIT(%struct.dc_softc* %92, i32 %93, i32 %94)
  br label %101

96:                                               ; preds = %1
  %97 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %98 = load i32, i32* @DC_NETCFG, align 4
  %99 = load i32, i32* @DC_NETCFG_RX_PROMISC, align 4
  %100 = call i32 @DC_CLRBIT(%struct.dc_softc* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %91
  %102 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %103 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IFF_ALLMULTI, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %110 = load i32, i32* @DC_NETCFG, align 4
  %111 = load i32, i32* @DC_NETCFG_RX_ALLMULTI, align 4
  %112 = call i32 @DC_SETBIT(%struct.dc_softc* %109, i32 %110, i32 %111)
  br label %118

113:                                              ; preds = %101
  %114 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %115 = load i32, i32* @DC_NETCFG, align 4
  %116 = load i32, i32* @DC_NETCFG_RX_ALLMULTI, align 4
  %117 = call i32 @DC_CLRBIT(%struct.dc_softc* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %120 = load i32, i32* @dc_hash_maddr_xircom, align 4
  %121 = call i32 @if_foreach_llmaddr(%struct.ifnet* %119, i32 %120, i32** %8)
  %122 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %123 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @IFF_BROADCAST, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %118
  %129 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %130 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %131 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @dc_mchash_le(%struct.dc_softc* %129, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = and i32 %134, 15
  %136 = shl i32 1, %135
  %137 = call i32 @htole32(i32 %136)
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %7, align 4
  %140 = ashr i32 %139, 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %137
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %128, %118
  %146 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %147 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %146, i32 0, i32 5
  %148 = load %struct.ifnet*, %struct.ifnet** %147, align 8
  %149 = call i32 @IF_LLADDR(%struct.ifnet* %148)
  %150 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %151 = call i32 @bcopy(i32 %149, i32* %15, i32 %150)
  %152 = getelementptr inbounds i32, i32* %15, i64 0
  %153 = load i32, i32* %152, align 16
  %154 = call i32 @DC_SP_MAC(i32 %153)
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 %154, i32* %156, align 4
  %157 = getelementptr inbounds i32, i32* %15, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @DC_SP_MAC(i32 %158)
  %160 = load i32*, i32** %8, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  store i32 %159, i32* %161, align 4
  %162 = getelementptr inbounds i32, i32* %15, i64 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @DC_SP_MAC(i32 %163)
  %165 = load i32*, i32** %8, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  store i32 %164, i32* %166, align 4
  %167 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %168 = load i32, i32* @DC_NETCFG, align 4
  %169 = load i32, i32* @DC_NETCFG_TX_ON, align 4
  %170 = call i32 @DC_SETBIT(%struct.dc_softc* %167, i32 %168, i32 %169)
  %171 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %172 = load i32, i32* @DC_NETCFG, align 4
  %173 = load i32, i32* @DC_NETCFG_RX_ON, align 4
  %174 = call i32 @DC_SETBIT(%struct.dc_softc* %171, i32 %172, i32 %173)
  %175 = load i32, i32* @DC_TXSTAT_OWN, align 4
  %176 = call i32 @htole32(i32 %175)
  %177 = load %struct.dc_desc*, %struct.dc_desc** %6, align 8
  %178 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  %179 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %180 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %183 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %186 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @bus_dmamap_sync(i32 %181, i32 %184, i32 %187)
  %189 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %190 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %193 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %196 = call i32 @bus_dmamap_sync(i32 %191, i32 %194, i32 %195)
  %197 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %198 = load i32, i32* @DC_TXSTART, align 4
  %199 = call i32 @CSR_WRITE_4(%struct.dc_softc* %197, i32 %198, i32 -1)
  %200 = call i32 @DELAY(i32 1000)
  %201 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %202 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %201, i32 0, i32 0
  store i32 5, i32* %202, align 8
  %203 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %203)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DC_CLRBIT(%struct.dc_softc*, i32, i32) #2

declare dso_local i32 @DC_INC(i32, i32) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @htole32(i32) #2

declare dso_local i32 @DC_ADDR_LO(i32) #2

declare dso_local i32 @DC_SETBIT(%struct.dc_softc*, i32, i32) #2

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32**) #2

declare dso_local i32 @dc_mchash_le(%struct.dc_softc*, i32) #2

declare dso_local i32 @bcopy(i32, i32*, i32) #2

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #2

declare dso_local i32 @DC_SP_MAC(i32) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #2

declare dso_local i32 @DELAY(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
