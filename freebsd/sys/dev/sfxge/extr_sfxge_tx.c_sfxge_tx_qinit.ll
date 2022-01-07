; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, %struct.sysctl_oid*, i32, %struct.sfxge_evq**, %struct.sfxge_txq**, i32 }
%struct.sysctl_oid = type { i32 }
%struct.sfxge_evq = type { i32 }
%struct.sfxge_txq = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i32, %struct.sfxge_tx_dpl, i32, i32, %struct.sfxge_softc* }
%struct.TYPE_5__ = type { i32 }
%struct.sfxge_tx_dpl = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }

@M_SFXGE = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@SFXGE_TX_MAPPING_MAX_SEG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't allocate txq DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SFXGE_TXQ_IP_TCP_UDP_CKSUM = common dso_local global i32 0, align 4
@sfxge_tx_dpl_put_max = common dso_local global i32 0, align 4
@sfxge_tx_dpl_get_max = common dso_local global i32 0, align 4
@sfxge_tx_dpl_get_non_tcp_max = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"dpl\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Deferred packet list statistics\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"get_count\00", align 1
@CTLFLAG_STATS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"get_non_tcp_count\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"get_hiwat\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"put_hiwat\00", align 1
@SFXGE_TXQ_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*, i32, i32, i32)* @sfxge_tx_qinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_tx_qinit(%struct.sfxge_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sfxge_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca [16 x i8], align 16
  %12 = alloca %struct.sysctl_ctx_list*, align 8
  %13 = alloca %struct.sysctl_oid*, align 8
  %14 = alloca %struct.sfxge_txq*, align 8
  %15 = alloca %struct.sfxge_evq*, align 8
  %16 = alloca %struct.sfxge_tx_dpl*, align 8
  %17 = alloca %struct.sysctl_oid*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %22 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_4__* @efx_nic_cfg_get(i32 %23)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %10, align 8
  %25 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %26 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %27)
  store %struct.sysctl_ctx_list* %28, %struct.sysctl_ctx_list** %12, align 8
  %29 = load i32, i32* @M_SFXGE, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = load i32, i32* @M_WAITOK, align 4
  %32 = or i32 %30, %31
  %33 = call i8* @malloc(i32 112, i32 %29, i32 %32)
  %34 = bitcast i8* %33 to %struct.sfxge_txq*
  store %struct.sfxge_txq* %34, %struct.sfxge_txq** %14, align 8
  %35 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %36 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %37 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %36, i32 0, i32 11
  store %struct.sfxge_softc* %35, %struct.sfxge_softc** %37, align 8
  %38 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %39 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %42 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %44 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %48 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %50 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %51 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %50, i32 0, i32 5
  %52 = load %struct.sfxge_txq**, %struct.sfxge_txq*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sfxge_txq*, %struct.sfxge_txq** %52, i64 %54
  store %struct.sfxge_txq* %49, %struct.sfxge_txq** %55, align 8
  %56 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %57 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %56, i32 0, i32 10
  store i32* %57, i32** %18, align 8
  %58 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %59 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %58, i32 0, i32 4
  %60 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %60, i64 %62
  %64 = load %struct.sfxge_evq*, %struct.sfxge_evq** %63, align 8
  store %struct.sfxge_evq* %64, %struct.sfxge_evq** %15, align 8
  %65 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %66 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %67 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @EFX_TXQ_SIZE(i32 %68)
  %70 = load i32*, i32** %18, align 8
  %71 = call i32 @sfxge_dma_alloc(%struct.sfxge_softc* %65, i32 %69, i32* %70)
  store i32 %71, i32* %20, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %4
  %74 = load i32, i32* %20, align 4
  store i32 %74, i32* %5, align 4
  br label %318

75:                                               ; preds = %4
  %76 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %77 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %78 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @EFX_TXQ_NBUFS(i32 %79)
  %81 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %82 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %81, i32 0, i32 9
  %83 = call i32 @sfxge_sram_buf_tbl_alloc(%struct.sfxge_softc* %76, i32 %80, i32* %82)
  %84 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %85 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %91 = call i32 @MIN(i32 -1, i32 %90)
  %92 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %93 = load i32, i32* @SFXGE_TX_MAPPING_MAX_SEG, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %98 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %97, i32 0, i32 4
  %99 = call i64 @bus_dma_tag_create(i32 %86, i32 1, i32 %89, i32 %91, i32 %92, i32* null, i32* null, i32 69632, i32 %93, i32 %96, i32 0, i32* null, i32* null, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %75
  %102 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %103 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @device_printf(i32 %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* @ENOMEM, align 4
  store i32 %106, i32* %20, align 4
  br label %314

107:                                              ; preds = %75
  %108 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %109 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = mul i64 4, %111
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* @M_SFXGE, align 4
  %115 = load i32, i32* @M_ZERO, align 4
  %116 = load i32, i32* @M_WAITOK, align 4
  %117 = or i32 %115, %116
  %118 = call i8* @malloc(i32 %113, i32 %114, i32 %117)
  %119 = bitcast i8* %118 to %struct.TYPE_5__*
  %120 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %121 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %120, i32 0, i32 6
  store %struct.TYPE_5__* %119, %struct.TYPE_5__** %121, align 8
  %122 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %123 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = mul i64 4, %125
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* @M_SFXGE, align 4
  %129 = load i32, i32* @M_ZERO, align 4
  %130 = load i32, i32* @M_WAITOK, align 4
  %131 = or i32 %129, %130
  %132 = call i8* @malloc(i32 %127, i32 %128, i32 %131)
  %133 = bitcast i8* %132 to %struct.TYPE_5__*
  %134 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %135 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %134, i32 0, i32 5
  store %struct.TYPE_5__* %133, %struct.TYPE_5__** %135, align 8
  store i32 0, i32* %19, align 4
  br label %136

136:                                              ; preds = %158, %107
  %137 = load i32, i32* %19, align 4
  %138 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %139 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ult i32 %137, %140
  br i1 %141, label %142, label %161

142:                                              ; preds = %136
  %143 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %144 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %147 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %146, i32 0, i32 5
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load i32, i32* %19, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = call i32 @bus_dmamap_create(i32 %145, i32 0, i32* %152)
  store i32 %153, i32* %20, align 4
  %154 = load i32, i32* %20, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %142
  br label %286

157:                                              ; preds = %142
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %19, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %19, align 4
  br label %136

161:                                              ; preds = %136
  %162 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @snprintf(i8* %162, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %12, align 8
  %166 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %167 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %166, i32 0, i32 2
  %168 = load %struct.sysctl_oid*, %struct.sysctl_oid** %167, align 8
  %169 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %168)
  %170 = load i32, i32* @OID_AUTO, align 4
  %171 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %172 = load i32, i32* @CTLFLAG_RD, align 4
  %173 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %165, i32 %169, i32 %170, i8* %171, i32 %172, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sysctl_oid* %173, %struct.sysctl_oid** %13, align 8
  %174 = load %struct.sysctl_oid*, %struct.sysctl_oid** %13, align 8
  %175 = icmp eq %struct.sysctl_oid* %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %161
  %177 = load i32, i32* @ENOMEM, align 4
  store i32 %177, i32* %20, align 4
  br label %280

178:                                              ; preds = %161
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @SFXGE_TXQ_IP_TCP_UDP_CKSUM, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %184 = call i32 @tso_init(%struct.sfxge_txq* %183)
  store i32 %184, i32* %20, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  br label %279

187:                                              ; preds = %182, %178
  %188 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %189 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %188, i32 0, i32 8
  store %struct.sfxge_tx_dpl* %189, %struct.sfxge_tx_dpl** %16, align 8
  %190 = load i32, i32* @sfxge_tx_dpl_put_max, align 4
  %191 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %16, align 8
  %192 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %191, i32 0, i32 8
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* @sfxge_tx_dpl_get_max, align 4
  %194 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %16, align 8
  %195 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %194, i32 0, i32 7
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* @sfxge_tx_dpl_get_non_tcp_max, align 4
  %197 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %16, align 8
  %198 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %197, i32 0, i32 6
  store i32 %196, i32* %198, align 8
  %199 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %16, align 8
  %200 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %199, i32 0, i32 4
  %201 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %16, align 8
  %202 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %201, i32 0, i32 5
  store i32* %200, i32** %202, align 8
  %203 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %204 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %205 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @device_get_nameunit(i32 %206)
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @SFXGE_TXQ_LOCK_INIT(%struct.sfxge_txq* %203, i32 %207, i32 %208)
  %210 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %12, align 8
  %211 = load %struct.sysctl_oid*, %struct.sysctl_oid** %13, align 8
  %212 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %211)
  %213 = load i32, i32* @OID_AUTO, align 4
  %214 = load i32, i32* @CTLFLAG_RD, align 4
  %215 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %210, i32 %212, i32 %213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %214, i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store %struct.sysctl_oid* %215, %struct.sysctl_oid** %17, align 8
  %216 = load %struct.sysctl_oid*, %struct.sysctl_oid** %17, align 8
  %217 = icmp eq %struct.sysctl_oid* %216, null
  br i1 %217, label %218, label %220

218:                                              ; preds = %187
  %219 = load i32, i32* @ENOMEM, align 4
  store i32 %219, i32* %20, align 4
  br label %278

220:                                              ; preds = %187
  %221 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %12, align 8
  %222 = load %struct.sysctl_oid*, %struct.sysctl_oid** %17, align 8
  %223 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %222)
  %224 = load i32, i32* @OID_AUTO, align 4
  %225 = load i32, i32* @CTLFLAG_RD, align 4
  %226 = load i32, i32* @CTLFLAG_STATS, align 4
  %227 = or i32 %225, %226
  %228 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %16, align 8
  %229 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %228, i32 0, i32 3
  %230 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %221, i32 %223, i32 %224, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %227, i32* %229, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %231 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %12, align 8
  %232 = load %struct.sysctl_oid*, %struct.sysctl_oid** %17, align 8
  %233 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %232)
  %234 = load i32, i32* @OID_AUTO, align 4
  %235 = load i32, i32* @CTLFLAG_RD, align 4
  %236 = load i32, i32* @CTLFLAG_STATS, align 4
  %237 = or i32 %235, %236
  %238 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %16, align 8
  %239 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %238, i32 0, i32 2
  %240 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %231, i32 %233, i32 %234, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %237, i32* %239, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %241 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %12, align 8
  %242 = load %struct.sysctl_oid*, %struct.sysctl_oid** %17, align 8
  %243 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %242)
  %244 = load i32, i32* @OID_AUTO, align 4
  %245 = load i32, i32* @CTLFLAG_RD, align 4
  %246 = load i32, i32* @CTLFLAG_STATS, align 4
  %247 = or i32 %245, %246
  %248 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %16, align 8
  %249 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %248, i32 0, i32 1
  %250 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %241, i32 %243, i32 %244, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %247, i32* %249, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %251 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %12, align 8
  %252 = load %struct.sysctl_oid*, %struct.sysctl_oid** %17, align 8
  %253 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %252)
  %254 = load i32, i32* @OID_AUTO, align 4
  %255 = load i32, i32* @CTLFLAG_RD, align 4
  %256 = load i32, i32* @CTLFLAG_STATS, align 4
  %257 = or i32 %255, %256
  %258 = load %struct.sfxge_tx_dpl*, %struct.sfxge_tx_dpl** %16, align 8
  %259 = getelementptr inbounds %struct.sfxge_tx_dpl, %struct.sfxge_tx_dpl* %258, i32 0, i32 0
  %260 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %251, i32 %253, i32 %254, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %257, i32* %259, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %261 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %262 = load %struct.sysctl_oid*, %struct.sysctl_oid** %13, align 8
  %263 = call i32 @sfxge_txq_stat_init(%struct.sfxge_txq* %261, %struct.sysctl_oid* %262)
  store i32 %263, i32* %20, align 4
  %264 = load i32, i32* %20, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %220
  br label %277

267:                                              ; preds = %220
  %268 = load i32, i32* %8, align 4
  %269 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %270 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %269, i32 0, i32 2
  store i32 %268, i32* %270, align 8
  %271 = load i32, i32* %9, align 4
  %272 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %273 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %272, i32 0, i32 3
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* @SFXGE_TXQ_INITIALIZED, align 4
  %275 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %276 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %275, i32 0, i32 7
  store i32 %274, i32* %276, align 8
  store i32 0, i32* %5, align 4
  br label %318

277:                                              ; preds = %266
  br label %278

278:                                              ; preds = %277, %218
  br label %279

279:                                              ; preds = %278, %186
  br label %280

280:                                              ; preds = %279, %176
  %281 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %282 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %281, i32 0, i32 6
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %282, align 8
  %284 = load i32, i32* @M_SFXGE, align 4
  %285 = call i32 @free(%struct.TYPE_5__* %283, i32 %284)
  br label %286

286:                                              ; preds = %280, %156
  br label %287

287:                                              ; preds = %291, %286
  %288 = load i32, i32* %19, align 4
  %289 = add i32 %288, -1
  store i32 %289, i32* %19, align 4
  %290 = icmp ne i32 %288, 0
  br i1 %290, label %291, label %304

291:                                              ; preds = %287
  %292 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %293 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %296 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %295, i32 0, i32 5
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %296, align 8
  %298 = load i32, i32* %19, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @bus_dmamap_destroy(i32 %294, i32 %302)
  br label %287

304:                                              ; preds = %287
  %305 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %306 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %305, i32 0, i32 5
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %306, align 8
  %308 = load i32, i32* @M_SFXGE, align 4
  %309 = call i32 @free(%struct.TYPE_5__* %307, i32 %308)
  %310 = load %struct.sfxge_txq*, %struct.sfxge_txq** %14, align 8
  %311 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @bus_dma_tag_destroy(i32 %312)
  br label %314

314:                                              ; preds = %304, %101
  %315 = load i32*, i32** %18, align 8
  %316 = call i32 @sfxge_dma_free(i32* %315)
  %317 = load i32, i32* %20, align 4
  store i32 %317, i32* %5, align 4
  br label %318

318:                                              ; preds = %314, %267, %73
  %319 = load i32, i32* %5, align 4
  ret i32 %319
}

declare dso_local %struct.TYPE_4__* @efx_nic_cfg_get(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @sfxge_dma_alloc(%struct.sfxge_softc*, i32, i32*) #1

declare dso_local i32 @EFX_TXQ_SIZE(i32) #1

declare dso_local i32 @sfxge_sram_buf_tbl_alloc(%struct.sfxge_softc*, i32, i32*) #1

declare dso_local i32 @EFX_TXQ_NBUFS(i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @tso_init(%struct.sfxge_txq*) #1

declare dso_local i32 @SFXGE_TXQ_LOCK_INIT(%struct.sfxge_txq*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @sfxge_txq_stat_init(%struct.sfxge_txq*, %struct.sysctl_oid*) #1

declare dso_local i32 @free(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @sfxge_dma_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
