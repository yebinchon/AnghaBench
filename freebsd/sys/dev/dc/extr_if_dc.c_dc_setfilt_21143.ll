; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_setfilt_21143.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_setfilt_21143.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32, i32, i32, i32, i32, %struct.ifnet*, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.ifnet = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, %struct.mbuf**, i32 }
%struct.mbuf = type { i32 }
%struct.TYPE_3__ = type { %struct.dc_desc* }
%struct.dc_desc = type { i32, i32, i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@DC_TX_LIST_CNT = common dso_local global i32 0, align 4
@DC_SFRAME_LEN = common dso_local global i32 0, align 4
@DC_TXCTL_SETUP = common dso_local global i32 0, align 4
@DC_TXCTL_TLINK = common dso_local global i32 0, align 4
@DC_FILTER_HASHPERF = common dso_local global i32 0, align 4
@DC_TXCTL_FINT = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@DC_NETCFG = common dso_local global i32 0, align 4
@DC_NETCFG_RX_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@DC_NETCFG_RX_ALLMULTI = common dso_local global i32 0, align 4
@dc_hash_maddr_21143 = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@DC_TXSTAT_OWN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@DC_TXSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*)* @dc_setfilt_21143 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_setfilt_21143(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dc_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ifnet*, align 8
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
  store %struct.ifnet* %18, %struct.ifnet** %8, align 8
  %19 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %20 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %24 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DC_TX_LIST_CNT, align 4
  %28 = call i32 @DC_INC(i32 %26, i32 %27)
  %29 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %30 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %35 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.dc_desc*, %struct.dc_desc** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %37, i64 %39
  store %struct.dc_desc* %40, %struct.dc_desc** %5, align 8
  %41 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %42 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @DC_SFRAME_LEN, align 4
  %47 = call i32 @bzero(i32* %45, i32 %46)
  %48 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %49 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @DC_ADDR_LO(i32 %50)
  %52 = call i32 @htole32(i32 %51)
  %53 = load %struct.dc_desc*, %struct.dc_desc** %5, align 8
  %54 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @DC_SFRAME_LEN, align 4
  %56 = load i32, i32* @DC_TXCTL_SETUP, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @DC_TXCTL_TLINK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @DC_FILTER_HASHPERF, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @DC_TXCTL_FINT, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @htole32(i32 %63)
  %65 = load %struct.dc_desc*, %struct.dc_desc** %5, align 8
  %66 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %68 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = bitcast i32* %70 to %struct.mbuf*
  %72 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %73 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load %struct.mbuf**, %struct.mbuf*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %75, i64 %77
  store %struct.mbuf* %71, %struct.mbuf** %78, align 8
  %79 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %80 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IFF_PROMISC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %1
  %86 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %87 = load i32, i32* @DC_NETCFG, align 4
  %88 = load i32, i32* @DC_NETCFG_RX_PROMISC, align 4
  %89 = call i32 @DC_SETBIT(%struct.dc_softc* %86, i32 %87, i32 %88)
  br label %95

90:                                               ; preds = %1
  %91 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %92 = load i32, i32* @DC_NETCFG, align 4
  %93 = load i32, i32* @DC_NETCFG_RX_PROMISC, align 4
  %94 = call i32 @DC_CLRBIT(%struct.dc_softc* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %97 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @IFF_ALLMULTI, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %104 = load i32, i32* @DC_NETCFG, align 4
  %105 = load i32, i32* @DC_NETCFG_RX_ALLMULTI, align 4
  %106 = call i32 @DC_SETBIT(%struct.dc_softc* %103, i32 %104, i32 %105)
  br label %112

107:                                              ; preds = %95
  %108 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %109 = load i32, i32* @DC_NETCFG, align 4
  %110 = load i32, i32* @DC_NETCFG_RX_ALLMULTI, align 4
  %111 = call i32 @DC_CLRBIT(%struct.dc_softc* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %102
  %113 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %114 = load i32, i32* @dc_hash_maddr_21143, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @if_foreach_llmaddr(%struct.ifnet* %113, i32 %114, i32* %115)
  %117 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IFF_BROADCAST, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %112
  %124 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %125 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %126 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @dc_mchash_le(%struct.dc_softc* %124, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = and i32 %129, 15
  %131 = shl i32 1, %130
  %132 = call i32 @htole32(i32 %131)
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %6, align 4
  %135 = ashr i32 %134, 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %132
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %123, %112
  %141 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %142 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %141, i32 0, i32 5
  %143 = load %struct.ifnet*, %struct.ifnet** %142, align 8
  %144 = call i32 @IF_LLADDR(%struct.ifnet* %143)
  %145 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %146 = call i32 @bcopy(i32 %144, i32* %15, i32 %145)
  %147 = getelementptr inbounds i32, i32* %15, i64 0
  %148 = load i32, i32* %147, align 16
  %149 = call i32 @DC_SP_MAC(i32 %148)
  %150 = load i32*, i32** %7, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 39
  store i32 %149, i32* %151, align 4
  %152 = getelementptr inbounds i32, i32* %15, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @DC_SP_MAC(i32 %153)
  %155 = load i32*, i32** %7, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 40
  store i32 %154, i32* %156, align 4
  %157 = getelementptr inbounds i32, i32* %15, i64 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @DC_SP_MAC(i32 %158)
  %160 = load i32*, i32** %7, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 41
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @DC_TXSTAT_OWN, align 4
  %163 = call i32 @htole32(i32 %162)
  %164 = load %struct.dc_desc*, %struct.dc_desc** %5, align 8
  %165 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %167 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %170 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %173 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @bus_dmamap_sync(i32 %168, i32 %171, i32 %174)
  %176 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %177 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %180 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %183 = call i32 @bus_dmamap_sync(i32 %178, i32 %181, i32 %182)
  %184 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %185 = load i32, i32* @DC_TXSTART, align 4
  %186 = call i32 @CSR_WRITE_4(%struct.dc_softc* %184, i32 %185, i32 -1)
  %187 = call i32 @DELAY(i32 10000)
  %188 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %189 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %188, i32 0, i32 0
  store i32 5, i32* %189, align 8
  %190 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %190)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DC_INC(i32, i32) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @htole32(i32) #2

declare dso_local i32 @DC_ADDR_LO(i32) #2

declare dso_local i32 @DC_SETBIT(%struct.dc_softc*, i32, i32) #2

declare dso_local i32 @DC_CLRBIT(%struct.dc_softc*, i32, i32) #2

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #2

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
