; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i64, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, %struct.ifnet* }
%struct.TYPE_8__ = type { %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag* }
%struct.xl_chain_onefrag = type { %struct.TYPE_5__*, %struct.mbuf*, i32, %struct.xl_chain_onefrag* }
%struct.TYPE_5__ = type { i64 }
%struct.mbuf = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.ifnet* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32 (%struct.ifnet*, %struct.mbuf*)* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@XL_RXSTAT_LENMASK = common dso_local global i32 0, align 4
@XL_MAX_FRAMELEN = common dso_local global i32 0, align 4
@XL_RXSTAT_UP_ERROR = common dso_local global i32 0, align 4
@XL_RXSTAT_OVERSIZE = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@XL_RXSTAT_UP_CMPLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"bad receive status -- packet dropped\0A\00", align 1
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@XL_RXSTAT_IPCKOK = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@XL_RXSTAT_IPCKERR = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@XL_RXSTAT_TCPCOK = common dso_local global i32 0, align 4
@XL_RXSTAT_TCPCKERR = common dso_local global i32 0, align 4
@XL_RXSTAT_UDPCKOK = common dso_local global i32 0, align 4
@XL_RXSTAT_UDPCKERR = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@XL_UPLIST_PTR = common dso_local global i32 0, align 4
@XL_UPLIST_STATUS = common dso_local global i32 0, align 4
@XL_PKTSTAT_UP_STALLED = common dso_local global i32 0, align 4
@XL_COMMAND = common dso_local global i32 0, align 4
@XL_CMD_UP_STALL = common dso_local global i32 0, align 4
@XL_CMD_UP_UNSTALL = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xl_softc*)* @xl_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xl_rxeof(%struct.xl_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xl_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.xl_chain_onefrag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xl_softc* %0, %struct.xl_softc** %3, align 8
  %10 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %11 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %10, i32 0, i32 5
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %14 = call i32 @XL_LOCK_ASSERT(%struct.xl_softc* %13)
  br label %15

15:                                               ; preds = %265, %1
  %16 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %17 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %21 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %25 = call i32 @bus_dmamap_sync(i32 %19, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %252, %128, %90, %67, %15
  %27 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %28 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %29, align 8
  %31 = getelementptr inbounds %struct.xl_chain_onefrag, %struct.xl_chain_onefrag* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @le32toh(i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %253

37:                                               ; preds = %26
  %38 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %39 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %40, align 8
  store %struct.xl_chain_onefrag* %41, %struct.xl_chain_onefrag** %6, align 8
  %42 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %6, align 8
  %43 = getelementptr inbounds %struct.xl_chain_onefrag, %struct.xl_chain_onefrag* %42, i32 0, i32 3
  %44 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %43, align 8
  %45 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %46 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store %struct.xl_chain_onefrag* %44, %struct.xl_chain_onefrag** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @XL_RXSTAT_LENMASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @XL_MAX_FRAMELEN, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %37
  %57 = load i32, i32* @XL_RXSTAT_UP_ERROR, align 4
  %58 = load i32, i32* @XL_RXSTAT_OVERSIZE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %56, %37
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @XL_RXSTAT_UP_ERROR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %69 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %70 = call i32 @if_inc_counter(%struct.ifnet* %68, i32 %69, i32 1)
  %71 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %6, align 8
  %72 = getelementptr inbounds %struct.xl_chain_onefrag, %struct.xl_chain_onefrag* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %76 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %80 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %84 = call i32 @bus_dmamap_sync(i32 %78, i32 %82, i32 %83)
  br label %26

85:                                               ; preds = %62
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @XL_RXSTAT_UP_CMPLT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %112, label %90

90:                                               ; preds = %85
  %91 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %92 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %96 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %97 = call i32 @if_inc_counter(%struct.ifnet* %95, i32 %96, i32 1)
  %98 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %6, align 8
  %99 = getelementptr inbounds %struct.xl_chain_onefrag, %struct.xl_chain_onefrag* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %103 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %107 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %111 = call i32 @bus_dmamap_sync(i32 %105, i32 %109, i32 %110)
  br label %26

112:                                              ; preds = %85
  %113 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %114 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %6, align 8
  %117 = getelementptr inbounds %struct.xl_chain_onefrag, %struct.xl_chain_onefrag* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %120 = call i32 @bus_dmamap_sync(i32 %115, i32 %118, i32 %119)
  %121 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %6, align 8
  %122 = getelementptr inbounds %struct.xl_chain_onefrag, %struct.xl_chain_onefrag* %121, i32 0, i32 1
  %123 = load %struct.mbuf*, %struct.mbuf** %122, align 8
  store %struct.mbuf* %123, %struct.mbuf** %4, align 8
  %124 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %125 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %6, align 8
  %126 = call i64 @xl_newbuf(%struct.xl_softc* %124, %struct.xl_chain_onefrag* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %112
  %129 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %130 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %131 = call i32 @if_inc_counter(%struct.ifnet* %129, i32 %130, i32 1)
  %132 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %6, align 8
  %133 = getelementptr inbounds %struct.xl_chain_onefrag, %struct.xl_chain_onefrag* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  %136 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %137 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %141 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %145 = call i32 @bus_dmamap_sync(i32 %139, i32 %143, i32 %144)
  br label %26

146:                                              ; preds = %112
  %147 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %148 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %152 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %156 = call i32 @bus_dmamap_sync(i32 %150, i32 %154, i32 %155)
  %157 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %158 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %159 = call i32 @if_inc_counter(%struct.ifnet* %157, i32 %158, i32 1)
  %160 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %161 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %162 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  store %struct.ifnet* %160, %struct.ifnet** %163, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %166 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %168 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  store i32 %164, i32* %169, align 8
  %170 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %171 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @IFCAP_RXCSUM, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %233

176:                                              ; preds = %146
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @XL_RXSTAT_IPCKOK, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %176
  %182 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %183 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %184 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %182
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %181, %176
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @XL_RXSTAT_IPCKERR, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %188
  %194 = load i32, i32* @CSUM_IP_VALID, align 4
  %195 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %196 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %194
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %193, %188
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @XL_RXSTAT_TCPCOK, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* @XL_RXSTAT_TCPCKERR, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %205, %200
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* @XL_RXSTAT_UDPCKOK, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %232

215:                                              ; preds = %210
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @XL_RXSTAT_UDPCKERR, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %232, label %220

220:                                              ; preds = %215, %205
  %221 = load i32, i32* @CSUM_DATA_VALID, align 4
  %222 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %223 = or i32 %221, %222
  %224 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %225 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %223
  store i32 %228, i32* %226, align 4
  %229 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %230 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  store i32 65535, i32* %231, align 8
  br label %232

232:                                              ; preds = %220, %215, %210
  br label %233

233:                                              ; preds = %232, %146
  %234 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %235 = call i32 @XL_UNLOCK(%struct.xl_softc* %234)
  %236 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %237 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %236, i32 0, i32 2
  %238 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %237, align 8
  %239 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %240 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %241 = call i32 %238(%struct.ifnet* %239, %struct.mbuf* %240)
  %242 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %243 = call i32 @XL_LOCK(%struct.xl_softc* %242)
  %244 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %245 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %252, label %250

250:                                              ; preds = %233
  %251 = load i32, i32* %8, align 4
  store i32 %251, i32* %2, align 4
  br label %293

252:                                              ; preds = %233
  br label %26

253:                                              ; preds = %26
  %254 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %255 = load i32, i32* @XL_UPLIST_PTR, align 4
  %256 = call i32 @CSR_READ_4(%struct.xl_softc* %254, i32 %255)
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %265, label %258

258:                                              ; preds = %253
  %259 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %260 = load i32, i32* @XL_UPLIST_STATUS, align 4
  %261 = call i32 @CSR_READ_4(%struct.xl_softc* %259, i32 %260)
  %262 = load i32, i32* @XL_PKTSTAT_UP_STALLED, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %291

265:                                              ; preds = %258, %253
  %266 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %267 = load i32, i32* @XL_COMMAND, align 4
  %268 = load i32, i32* @XL_CMD_UP_STALL, align 4
  %269 = call i32 @CSR_WRITE_2(%struct.xl_softc* %266, i32 %267, i32 %268)
  %270 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %271 = call i32 @xl_wait(%struct.xl_softc* %270)
  %272 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %273 = load i32, i32* @XL_UPLIST_PTR, align 4
  %274 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %275 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @CSR_WRITE_4(%struct.xl_softc* %272, i32 %273, i32 %277)
  %279 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %280 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 0
  %282 = load %struct.xl_chain_onefrag*, %struct.xl_chain_onefrag** %281, align 8
  %283 = getelementptr inbounds %struct.xl_chain_onefrag, %struct.xl_chain_onefrag* %282, i64 0
  %284 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %285 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 1
  store %struct.xl_chain_onefrag* %283, %struct.xl_chain_onefrag** %286, align 8
  %287 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %288 = load i32, i32* @XL_COMMAND, align 4
  %289 = load i32, i32* @XL_CMD_UP_UNSTALL, align 4
  %290 = call i32 @CSR_WRITE_2(%struct.xl_softc* %287, i32 %288, i32 %289)
  br label %15

291:                                              ; preds = %258
  %292 = load i32, i32* %8, align 4
  store i32 %292, i32* %2, align 4
  br label %293

293:                                              ; preds = %291, %250
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i64) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @xl_newbuf(%struct.xl_softc*, %struct.xl_chain_onefrag*) #1

declare dso_local i32 @XL_UNLOCK(%struct.xl_softc*) #1

declare dso_local i32 @XL_LOCK(%struct.xl_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.xl_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.xl_softc*, i32, i32) #1

declare dso_local i32 @xl_wait(%struct.xl_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.xl_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
