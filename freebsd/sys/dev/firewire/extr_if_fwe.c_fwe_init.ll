; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwe.c_fwe_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwe.c_fwe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwe_softc = type { i64, i32, i32, %struct.TYPE_16__, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { %struct.firewire_comm* }
%struct.firewire_comm = type { i32 (%struct.firewire_comm*, i64)*, %struct.fw_xferq** }
%struct.fw_xferq = type { i32, i32, i32, %struct.fw_xfer*, i32, i32*, i32, i32, i32*, i64, i32, i32, i8* }
%struct.fw_xfer = type { i32, i8*, %struct.firewire_comm*, %struct.TYPE_15__, %struct.mbuf* }
%struct.TYPE_15__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 }
%struct.fwe_eth_softc = type { %struct.fwe_softc* }
%struct.fw_bulkxfer = type { i32, i8*, %struct.firewire_comm*, %struct.TYPE_15__, %struct.mbuf* }

@.str = private unnamed_addr constant [14 x i8] c"initializing\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@FWXFERQ_EXTBUF = common dso_local global i32 0, align 4
@FWXFERQ_HANDLER = common dso_local global i32 0, align 4
@FWXFERQ_STREAM = common dso_local global i32 0, align 4
@stream_ch = common dso_local global i32 0, align 4
@fwe_as_input = common dso_local global i32 0, align 4
@rx_queue_len = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@M_FWE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@TX_MAX_QUEUE = common dso_local global i32 0, align 4
@tx_speed = common dso_local global i32 0, align 4
@fwe_output_callback = common dso_local global i32 0, align 4
@FWXFERQ_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fwe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwe_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fwe_softc*, align 8
  %4 = alloca %struct.firewire_comm*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.fw_xferq*, align 8
  %7 = alloca %struct.fw_xfer*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.fwe_eth_softc*
  %12 = getelementptr inbounds %struct.fwe_eth_softc, %struct.fwe_eth_softc* %11, i32 0, i32 0
  %13 = load %struct.fwe_softc*, %struct.fwe_softc** %12, align 8
  store %struct.fwe_softc* %13, %struct.fwe_softc** %3, align 8
  %14 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %15 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %5, align 8
  %18 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %19 = call i32 @FWEDEBUG(%struct.ifnet* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @IFF_PROMISC, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %26 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load %struct.firewire_comm*, %struct.firewire_comm** %27, align 8
  store %struct.firewire_comm* %28, %struct.firewire_comm** %4, align 8
  %29 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %30 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %31, 0
  br i1 %32, label %33, label %209

33:                                               ; preds = %1
  %34 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %35 = call i64 @fw_open_isodma(%struct.firewire_comm* %34, i32 0)
  %36 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %37 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %39 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %246

43:                                               ; preds = %33
  %44 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %45 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %44, i32 0, i32 1
  %46 = load %struct.fw_xferq**, %struct.fw_xferq*** %45, align 8
  %47 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %48 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.fw_xferq*, %struct.fw_xferq** %46, i64 %49
  %51 = load %struct.fw_xferq*, %struct.fw_xferq** %50, align 8
  store %struct.fw_xferq* %51, %struct.fw_xferq** %6, align 8
  %52 = load i32, i32* @FWXFERQ_EXTBUF, align 4
  %53 = load i32, i32* @FWXFERQ_HANDLER, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FWXFERQ_STREAM, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %58 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @stream_ch, align 4
  %62 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %63 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %65 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %68 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 8
  %72 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %73 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, -256
  store i32 %75, i32* %73, align 8
  %76 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %77 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, 255
  %80 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %81 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %85 = bitcast %struct.fwe_softc* %84 to i8*
  %86 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %87 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %86, i32 0, i32 12
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* @fwe_as_input, align 4
  %89 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %90 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %89, i32 0, i32 11
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @rx_queue_len, align 4
  %92 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %93 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %95 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %94, i32 0, i32 2
  store i32 1, i32* %95, align 8
  %96 = load i32, i32* @MCLBYTES, align 4
  %97 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %98 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %97, i32 0, i32 10
  store i32 %96, i32* %98, align 8
  %99 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %100 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %99, i32 0, i32 9
  store i64 0, i64* %100, align 8
  %101 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %102 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %101, i32 0, i32 8
  store i32* null, i32** %102, align 8
  %103 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %104 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 40, %106
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* @M_FWE, align 4
  %110 = load i32, i32* @M_WAITOK, align 4
  %111 = call i64 @malloc(i32 %108, i32 %109, i32 %110)
  %112 = inttoptr i64 %111 to %struct.fw_bulkxfer*
  %113 = bitcast %struct.fw_bulkxfer* %112 to %struct.fw_xfer*
  %114 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %115 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %114, i32 0, i32 3
  store %struct.fw_xfer* %113, %struct.fw_xfer** %115, align 8
  %116 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %117 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %116, i32 0, i32 7
  %118 = call i32 @STAILQ_INIT(i32* %117)
  %119 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %120 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %119, i32 0, i32 4
  %121 = call i32 @STAILQ_INIT(i32* %120)
  %122 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %123 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %122, i32 0, i32 6
  %124 = call i32 @STAILQ_INIT(i32* %123)
  %125 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %126 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %125, i32 0, i32 5
  store i32* null, i32** %126, align 8
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %165, %43
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %130 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %168

133:                                              ; preds = %127
  %134 = load i32, i32* @M_WAITOK, align 4
  %135 = load i32, i32* @MT_DATA, align 4
  %136 = load i32, i32* @M_PKTHDR, align 4
  %137 = call %struct.mbuf* @m_getcl(i32 %134, i32 %135, i32 %136)
  store %struct.mbuf* %137, %struct.mbuf** %8, align 8
  %138 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %139 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %140 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %139, i32 0, i32 3
  %141 = load %struct.fw_xfer*, %struct.fw_xfer** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %141, i64 %143
  %145 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %144, i32 0, i32 4
  store %struct.mbuf* %138, %struct.mbuf** %145, align 8
  %146 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %147 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %151 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 4
  %153 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %154 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %153, i32 0, i32 2
  store i32 %149, i32* %154, align 4
  %155 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %156 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %155, i32 0, i32 4
  %157 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %158 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %157, i32 0, i32 3
  %159 = load %struct.fw_xfer*, %struct.fw_xfer** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %159, i64 %161
  %163 = load i32, i32* @link, align 4
  %164 = call i32 @STAILQ_INSERT_TAIL(i32* %156, %struct.fw_xfer* %162, i32 %163)
  br label %165

165:                                              ; preds = %133
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %127

168:                                              ; preds = %127
  %169 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %170 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %169, i32 0, i32 2
  %171 = call i32 @STAILQ_INIT(i32* %170)
  store i32 0, i32* %9, align 4
  br label %172

172:                                              ; preds = %205, %168
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @TX_MAX_QUEUE, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %208

176:                                              ; preds = %172
  %177 = load i32, i32* @M_FWE, align 4
  %178 = call %struct.fw_xfer* @fw_xfer_alloc(i32 %177)
  store %struct.fw_xfer* %178, %struct.fw_xfer** %7, align 8
  %179 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %180 = icmp eq %struct.fw_xfer* %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %208

182:                                              ; preds = %176
  %183 = load i32, i32* @tx_speed, align 4
  %184 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %185 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 8
  %187 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %188 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load %struct.firewire_comm*, %struct.firewire_comm** %189, align 8
  %191 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %192 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %191, i32 0, i32 2
  store %struct.firewire_comm* %190, %struct.firewire_comm** %192, align 8
  %193 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %194 = bitcast %struct.fwe_softc* %193 to i8*
  %195 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %196 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  %197 = load i32, i32* @fwe_output_callback, align 4
  %198 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %199 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %201 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %200, i32 0, i32 2
  %202 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %203 = load i32, i32* @link, align 4
  %204 = call i32 @STAILQ_INSERT_TAIL(i32* %201, %struct.fw_xfer* %202, i32 %203)
  br label %205

205:                                              ; preds = %182
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %9, align 4
  br label %172

208:                                              ; preds = %181, %172
  br label %218

209:                                              ; preds = %1
  %210 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %211 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %210, i32 0, i32 1
  %212 = load %struct.fw_xferq**, %struct.fw_xferq*** %211, align 8
  %213 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %214 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.fw_xferq*, %struct.fw_xferq** %212, i64 %215
  %217 = load %struct.fw_xferq*, %struct.fw_xferq** %216, align 8
  store %struct.fw_xferq* %217, %struct.fw_xferq** %6, align 8
  br label %218

218:                                              ; preds = %209, %208
  %219 = load %struct.fw_xferq*, %struct.fw_xferq** %6, align 8
  %220 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %223 = and i32 %221, %222
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %218
  %226 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %227 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %226, i32 0, i32 0
  %228 = load i32 (%struct.firewire_comm*, i64)*, i32 (%struct.firewire_comm*, i64)** %227, align 8
  %229 = load %struct.firewire_comm*, %struct.firewire_comm** %4, align 8
  %230 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %231 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = call i32 %228(%struct.firewire_comm* %229, i64 %232)
  br label %234

234:                                              ; preds = %225, %218
  %235 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %236 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %237 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 4
  %240 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %241 = xor i32 %240, -1
  %242 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %243 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %244, %241
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %234, %42
  ret void
}

declare dso_local i32 @FWEDEBUG(%struct.ifnet*, i8*) #1

declare dso_local i64 @fw_open_isodma(%struct.firewire_comm*, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.fw_xfer*, i32) #1

declare dso_local %struct.fw_xfer* @fw_xfer_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
