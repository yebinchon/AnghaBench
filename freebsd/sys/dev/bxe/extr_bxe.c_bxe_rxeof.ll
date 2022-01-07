; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64, i32, i32 }
%struct.bxe_fastpath = type { i64, i64, i64, i64, i32, %struct.TYPE_7__, i32, %struct.bxe_sw_rx_bd*, %struct.bxe_sw_tpa_info*, %union.eth_rx_cqe*, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bxe_sw_rx_bd = type { %struct.mbuf* }
%struct.mbuf = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i64, i32 }
%struct.bxe_sw_tpa_info = type { i64 }
%union.eth_rx_cqe = type { %struct.eth_fast_path_rx_cqe }
%struct.eth_fast_path_rx_cqe = type { i64, i32, i64, i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }

@RCQ_USABLE_PER_PAGE = common dso_local global i64 0, align 8
@DBG_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"fp[%02d] Rx START hw_cq_cons=%u sw_cq_cons=%u\0A\00", align 1
@ETH_FAST_PATH_RX_CQE_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [137 x i8] c"fp[%02d] Rx hw_cq_cons=%d hw_sw_cons=%d BD prod=%d cons=%d CQE type=0x%x err=0x%x status=0x%x rss_hash=0x%x vlan=0x%x len=%u lenonbd=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"CQE type is not STOP! (0x%x)\0A\00", align 1
@DBG_LRO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"fp[%02d].tpa[%02d] TPA STOP\0A\00", align 1
@SGE_PAGE_SHIFT = common dso_local global i64 0, align 8
@ETH_FAST_PATH_RX_CQE_PHY_DECODE_ERR_FLG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"flags 0x%x rx packet %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"No mbuf in rx chain descriptor %d for fp[%02d]\0A\00", align 1
@RX_BD_USABLE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"mbuf alloc fail for fp[%02d] rx chain (%d)\0A\00", align 1
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@ETH_FAST_PATH_RX_CQE_IP_XSUM_NO_VALIDATION_FLG = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@ETH_FAST_PATH_RX_CQE_IP_BAD_XSUM_FLG = common dso_local global i64 0, align 8
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@ETH_FAST_PATH_RX_CQE_L4_XSUM_NO_VALIDATION_FLG = common dso_local global i32 0, align 4
@ETH_FAST_PATH_RX_CQE_L4_BAD_XSUM_FLG = common dso_local global i64 0, align 8
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@PARSING_FLAGS_INNER_VLAN_EXIST = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bxe_softc*, %struct.bxe_fastpath*)* @bxe_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bxe_rxeof(%struct.bxe_softc* %0, %struct.bxe_fastpath* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.bxe_fastpath*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bxe_sw_rx_bd*, align 8
  %16 = alloca %union.eth_rx_cqe*, align 8
  %17 = alloca %struct.eth_fast_path_rx_cqe*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.mbuf*, align 8
  %24 = alloca %struct.bxe_sw_tpa_info*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.bxe_fastpath* %1, %struct.bxe_fastpath** %4, align 8
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %29 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %31 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %32 = call i32 @BXE_FP_RX_LOCK(%struct.bxe_fastpath* %31)
  %33 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %34 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %33, i32 0, i32 10
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le16toh(i32 %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @RCQ_USABLE_PER_PAGE, align 8
  %40 = and i64 %38, %39
  %41 = load i64, i64* @RCQ_USABLE_PER_PAGE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %43, %2
  %47 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %48 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %6, align 8
  %50 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %51 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %8, align 8
  %54 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %55 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %11, align 8
  %57 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %58 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %12, align 8
  %60 = call i32 (...) @rmb()
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %62 = load i32, i32* @DBG_RX, align 4
  %63 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %64 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 (%struct.bxe_softc*, i32, i8*, i32, i64, ...) @BLOGD(%struct.bxe_softc* %61, i32 %62, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %65, i64 %66, i64 %67)
  br label %69

69:                                               ; preds = %509, %46
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %510

73:                                               ; preds = %69
  store %struct.bxe_sw_rx_bd* null, %struct.bxe_sw_rx_bd** %15, align 8
  store %struct.mbuf* null, %struct.mbuf** %23, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i64 @RCQ(i64 %74)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i64 @RX_BD(i64 %76)
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @RX_BD(i64 %78)
  store i64 %79, i64* %6, align 8
  %80 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %81 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %80, i32 0, i32 9
  %82 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds %union.eth_rx_cqe, %union.eth_rx_cqe* %82, i64 %83
  store %union.eth_rx_cqe* %84, %union.eth_rx_cqe** %16, align 8
  %85 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %16, align 8
  %86 = bitcast %union.eth_rx_cqe* %85 to %struct.eth_fast_path_rx_cqe*
  store %struct.eth_fast_path_rx_cqe* %86, %struct.eth_fast_path_rx_cqe** %17, align 8
  %87 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %17, align 8
  %88 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %18, align 8
  %90 = load i64, i64* %18, align 8
  %91 = load i64, i64* @ETH_FAST_PATH_RX_CQE_TYPE, align 8
  %92 = and i64 %90, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %19, align 4
  %94 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %95 = load i32, i32* @DBG_RX, align 4
  %96 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %97 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* %18, align 8
  %104 = call i32 @CQE_TYPE(i64 %103)
  %105 = load i64, i64* %18, align 8
  %106 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %17, align 8
  %107 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %17, align 8
  %110 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le32toh(i32 %111)
  %113 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %17, align 8
  %114 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @le16toh(i32 %115)
  %117 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %17, align 8
  %118 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @le16toh(i32 %119)
  %121 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %17, align 8
  %122 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @le16toh(i32 %123)
  %125 = call i32 (%struct.bxe_softc*, i32, i8*, i32, i64, ...) @BLOGD(%struct.bxe_softc* %94, i32 %95, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.1, i64 0, i64 0), i32 %98, i64 %99, i64 %100, i64 %101, i64 %102, i32 %104, i64 %105, i32 %108, i32 %112, i64 %116, i64 %120, i64 %124)
  %126 = load i32, i32* %19, align 4
  %127 = call i64 @CQE_TYPE_SLOW(i32 %126)
  %128 = call i64 @__predict_false(i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %73
  %131 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %132 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %133 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %16, align 8
  %134 = call i32 @bxe_sp_event(%struct.bxe_softc* %131, %struct.bxe_fastpath* %132, %union.eth_rx_cqe* %133)
  br label %489

135:                                              ; preds = %73
  %136 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %137 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %136, i32 0, i32 7
  %138 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %137, align 8
  %139 = load i64, i64* %6, align 8
  %140 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %138, i64 %139
  store %struct.bxe_sw_rx_bd* %140, %struct.bxe_sw_rx_bd** %15, align 8
  %141 = load i32, i32* %19, align 4
  %142 = call i32 @CQE_TYPE_FAST(i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %210, label %144

144:                                              ; preds = %135
  %145 = load i32, i32* %19, align 4
  %146 = call i64 @CQE_TYPE_START(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  %149 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %150 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %151 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %17, align 8
  %152 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %17, align 8
  %157 = call i32 @bxe_tpa_start(%struct.bxe_softc* %149, %struct.bxe_fastpath* %150, i32 %153, i64 %154, i64 %155, %struct.eth_fast_path_rx_cqe* %156)
  store %struct.mbuf* null, %struct.mbuf** %23, align 8
  br label %467

158:                                              ; preds = %144
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @CQE_TYPE_STOP(i32 %159)
  %161 = load i32, i32* %19, align 4
  %162 = zext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = call i32 @KASSERT(i32 %160, i8* %163)
  %165 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %16, align 8
  %166 = bitcast %union.eth_rx_cqe* %165 to %struct.TYPE_8__*
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %27, align 8
  %169 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %170 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %169, i32 0, i32 8
  %171 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %170, align 8
  %172 = load i64, i64* %27, align 8
  %173 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %171, i64 %172
  store %struct.bxe_sw_tpa_info* %173, %struct.bxe_sw_tpa_info** %24, align 8
  %174 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %175 = load i32, i32* @DBG_LRO, align 4
  %176 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %177 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load i64, i64* %27, align 8
  %180 = call i32 (%struct.bxe_softc*, i32, i8*, i32, i64, ...) @BLOGD(%struct.bxe_softc* %174, i32 %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %178, i64 %179)
  %181 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %16, align 8
  %182 = bitcast %union.eth_rx_cqe* %181 to %struct.TYPE_8__*
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @le16toh(i32 %184)
  %186 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %24, align 8
  %187 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = sub i64 %185, %188
  store i64 %189, i64* %25, align 8
  %190 = load i64, i64* %25, align 8
  %191 = call i64 @SGE_PAGE_ALIGN(i64 %190)
  %192 = load i64, i64* @SGE_PAGE_SHIFT, align 8
  %193 = lshr i64 %191, %192
  store i64 %193, i64* %26, align 8
  %194 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %195 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %196 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %24, align 8
  %197 = load i64, i64* %27, align 8
  %198 = load i64, i64* %26, align 8
  %199 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %16, align 8
  %200 = bitcast %union.eth_rx_cqe* %199 to %struct.TYPE_8__*
  %201 = load i64, i64* %9, align 8
  %202 = call i32 @bxe_tpa_stop(%struct.bxe_softc* %194, %struct.bxe_fastpath* %195, %struct.bxe_sw_tpa_info* %196, i64 %197, i64 %198, %struct.TYPE_8__* %200, i64 %201)
  %203 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %204 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %205 = load i64, i64* %26, align 8
  %206 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %16, align 8
  %207 = bitcast %union.eth_rx_cqe* %206 to %struct.TYPE_8__*
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 1
  %209 = call i32 @bxe_update_sge_prod(%struct.bxe_softc* %203, %struct.bxe_fastpath* %204, i64 %205, i32* %208)
  br label %489

210:                                              ; preds = %135
  %211 = load i64, i64* %18, align 8
  %212 = load i64, i64* @ETH_FAST_PATH_RX_CQE_PHY_DECODE_ERR_FLG, align 8
  %213 = and i64 %211, %212
  %214 = call i64 @__predict_false(i64 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %210
  %217 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %218 = load i64, i64* %18, align 8
  %219 = load i64, i64* %11, align 8
  %220 = trunc i64 %219 to i32
  %221 = call i32 @BLOGE(%struct.bxe_softc* %217, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %218, i32 %220)
  %222 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %223 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 10
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 4
  br label %467

227:                                              ; preds = %210
  %228 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %17, align 8
  %229 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @le16toh(i32 %230)
  store i64 %231, i64* %20, align 8
  %232 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %17, align 8
  %233 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 8
  %235 = call i64 @le16toh(i32 %234)
  store i64 %235, i64* %21, align 8
  %236 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %17, align 8
  %237 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %22, align 8
  %239 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %15, align 8
  %240 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %239, i32 0, i32 0
  %241 = load %struct.mbuf*, %struct.mbuf** %240, align 8
  store %struct.mbuf* %241, %struct.mbuf** %23, align 8
  %242 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %243 = icmp eq %struct.mbuf* %242, null
  %244 = zext i1 %243 to i32
  %245 = sext i32 %244 to i64
  %246 = call i64 @__predict_false(i64 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %227
  %249 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %250 = load i64, i64* %6, align 8
  %251 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %252 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @BLOGE(%struct.bxe_softc* %249, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i64 %250, i32 %253)
  br label %467

255:                                              ; preds = %227
  %256 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %257 = load i64, i64* %6, align 8
  %258 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %259 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @RX_BD_USABLE, align 8
  %262 = icmp ne i64 %260, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %255
  %264 = load i64, i64* %7, align 8
  br label %267

265:                                              ; preds = %255
  %266 = load i64, i64* %6, align 8
  br label %267

267:                                              ; preds = %265, %263
  %268 = phi i64 [ %264, %263 ], [ %266, %265 ]
  %269 = call i32 @bxe_alloc_rx_bd_mbuf(%struct.bxe_fastpath* %256, i64 %257, i64 %268)
  store i32 %269, i32* %14, align 4
  %270 = load i32, i32* %14, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %301

272:                                              ; preds = %267
  store %struct.mbuf* null, %struct.mbuf** %23, align 8
  %273 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %274 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %275 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = load i32, i32* %14, align 4
  %279 = call i32 @BLOGE(%struct.bxe_softc* %273, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 %277, i32 %278)
  %280 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %281 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %280, i32 0, i32 5
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 10
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %282, align 4
  %285 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %286 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @RX_BD_USABLE, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %290, label %300

290:                                              ; preds = %272
  %291 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %292 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %291, i32 0, i32 7
  %293 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %292, align 8
  %294 = load i64, i64* %7, align 8
  %295 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %293, i64 %294
  %296 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %15, align 8
  %297 = call i32 @memcpy(%struct.bxe_sw_rx_bd* %295, %struct.bxe_sw_rx_bd* %296, i32 8)
  %298 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %15, align 8
  %299 = call i32 @memset(%struct.bxe_sw_rx_bd* %298, i32 0, i32 8)
  br label %300

300:                                              ; preds = %290, %272
  br label %467

301:                                              ; preds = %267
  %302 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %303 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %302, i32 0, i32 5
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 9
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %304, align 4
  %307 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %308 = load i64, i64* %22, align 8
  %309 = call i32 @m_adj(%struct.mbuf* %307, i64 %308)
  %310 = load i64, i64* %20, align 8
  %311 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %312 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %311, i32 0, i32 0
  store i64 %310, i64* %312, align 8
  %313 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %314 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  store i64 %310, i64* %315, align 8
  %316 = load i64, i64* %20, align 8
  %317 = icmp ugt i64 %316, 60
  br i1 %317, label %318, label %343

318:                                              ; preds = %301
  %319 = load i64, i64* %20, align 8
  %320 = load i64, i64* %21, align 8
  %321 = icmp ugt i64 %319, %320
  br i1 %321, label %322, label %343

322:                                              ; preds = %318
  %323 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %324 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %323, i32 0, i32 5
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 8
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %325, align 4
  %328 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %329 = load i64, i64* %20, align 8
  %330 = load i64, i64* %21, align 8
  %331 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %332 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %17, align 8
  %333 = call i32 @bxe_service_rxsgl(%struct.bxe_fastpath* %328, i64 %329, i64 %330, %struct.mbuf* %331, %struct.eth_fast_path_rx_cqe* %332)
  store i32 %333, i32* %14, align 4
  %334 = load i32, i32* %14, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %322
  br label %510

337:                                              ; preds = %322
  %338 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %339 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %338, i32 0, i32 5
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 7
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %340, align 4
  br label %354

343:                                              ; preds = %318, %301
  %344 = load i64, i64* %21, align 8
  %345 = load i64, i64* %20, align 8
  %346 = icmp ult i64 %344, %345
  br i1 %346, label %347, label %353

347:                                              ; preds = %343
  %348 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %349 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 6
  %351 = load i32, i32* %350, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %350, align 4
  br label %353

353:                                              ; preds = %347, %343
  br label %354

354:                                              ; preds = %353, %337
  %355 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %356 = load i32, i32* %5, align 4
  %357 = call i32 @if_setrcvif(%struct.mbuf* %355, i32 %356)
  %358 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %359 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 1
  store i32 0, i32* %360, align 8
  %361 = load i32, i32* %5, align 4
  %362 = call i32 @if_getcapenable(i32 %361)
  %363 = load i32, i32* @IFCAP_RXCSUM, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %444

366:                                              ; preds = %354
  %367 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %16, align 8
  %368 = bitcast %union.eth_rx_cqe* %367 to %struct.eth_fast_path_rx_cqe*
  %369 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @ETH_FAST_PATH_RX_CQE_IP_XSUM_NO_VALIDATION_FLG, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %405, label %374

374:                                              ; preds = %366
  %375 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %376 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %377 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 8
  %380 = or i32 %379, %375
  store i32 %380, i32* %378, align 8
  %381 = load i64, i64* %18, align 8
  %382 = load i64, i64* @ETH_FAST_PATH_RX_CQE_IP_BAD_XSUM_FLG, align 8
  %383 = and i64 %381, %382
  %384 = call i64 @__predict_false(i64 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %374
  %387 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %388 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %387, i32 0, i32 5
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %389, align 4
  br label %404

392:                                              ; preds = %374
  %393 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %394 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %393, i32 0, i32 5
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 5
  %396 = load i32, i32* %395, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %395, align 4
  %398 = load i32, i32* @CSUM_IP_VALID, align 4
  %399 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %400 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = or i32 %402, %398
  store i32 %403, i32* %401, align 8
  br label %404

404:                                              ; preds = %392, %386
  br label %405

405:                                              ; preds = %404, %366
  %406 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %16, align 8
  %407 = bitcast %union.eth_rx_cqe* %406 to %struct.eth_fast_path_rx_cqe*
  %408 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* @ETH_FAST_PATH_RX_CQE_L4_XSUM_NO_VALIDATION_FLG, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %443, label %413

413:                                              ; preds = %405
  %414 = load i64, i64* %18, align 8
  %415 = load i64, i64* @ETH_FAST_PATH_RX_CQE_L4_BAD_XSUM_FLG, align 8
  %416 = and i64 %414, %415
  %417 = call i64 @__predict_false(i64 %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %425

419:                                              ; preds = %413
  %420 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %421 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %420, i32 0, i32 5
  %422 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %422, align 4
  br label %442

425:                                              ; preds = %413
  %426 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %427 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %426, i32 0, i32 5
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %428, align 4
  %431 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %432 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i32 0, i32 2
  store i32 65535, i32* %433, align 4
  %434 = load i32, i32* @CSUM_DATA_VALID, align 4
  %435 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %436 = or i32 %434, %435
  %437 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %438 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 8
  %441 = or i32 %440, %436
  store i32 %441, i32* %439, align 8
  br label %442

442:                                              ; preds = %425, %419
  br label %443

443:                                              ; preds = %442, %405
  br label %444

444:                                              ; preds = %443, %354
  %445 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %16, align 8
  %446 = bitcast %union.eth_rx_cqe* %445 to %struct.eth_fast_path_rx_cqe*
  %447 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %446, i32 0, i32 4
  %448 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* @PARSING_FLAGS_INNER_VLAN_EXIST, align 4
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %466

453:                                              ; preds = %444
  %454 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %16, align 8
  %455 = bitcast %union.eth_rx_cqe* %454 to %struct.eth_fast_path_rx_cqe*
  %456 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 8
  %458 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %459 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %458, i32 0, i32 1
  %460 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %459, i32 0, i32 4
  store i32 %457, i32* %460, align 8
  %461 = load i32, i32* @M_VLANTAG, align 4
  %462 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %463 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 8
  %465 = or i32 %464, %461
  store i32 %465, i32* %463, align 8
  br label %466

466:                                              ; preds = %453, %444
  br label %467

467:                                              ; preds = %466, %300, %248, %216, %148
  %468 = load i64, i64* %6, align 8
  %469 = call i64 @RX_BD_NEXT(i64 %468)
  store i64 %469, i64* %6, align 8
  %470 = load i64, i64* %7, align 8
  %471 = call i64 @RX_BD_NEXT(i64 %470)
  store i64 %471, i64* %7, align 8
  %472 = load i64, i64* %8, align 8
  %473 = call i64 @RX_BD_NEXT(i64 %472)
  store i64 %473, i64* %8, align 8
  %474 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %475 = icmp ne %struct.mbuf* %474, null
  %476 = zext i1 %475 to i32
  %477 = call i64 @__predict_true(i32 %476)
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %488

479:                                              ; preds = %467
  %480 = load i32, i32* %5, align 4
  %481 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %482 = call i32 @if_inc_counter(i32 %480, i32 %481, i32 1)
  %483 = load i32, i32* %13, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %13, align 4
  %485 = load i32, i32* %5, align 4
  %486 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %487 = call i32 @if_input(i32 %485, %struct.mbuf* %486)
  br label %488

488:                                              ; preds = %479, %467
  br label %489

489:                                              ; preds = %488, %158, %130
  %490 = load i64, i64* %12, align 8
  %491 = call i64 @RCQ_NEXT(i64 %490)
  store i64 %491, i64* %12, align 8
  %492 = load i64, i64* %11, align 8
  %493 = call i64 @RCQ_NEXT(i64 %492)
  store i64 %493, i64* %11, align 8
  %494 = load i32, i32* %14, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %497

496:                                              ; preds = %489
  br label %510

497:                                              ; preds = %489
  %498 = load i32, i32* %13, align 4
  %499 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %500 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %499, i32 0, i32 1
  %501 = load i32, i32* %500, align 8
  %502 = icmp eq i32 %498, %501
  br i1 %502, label %503, label %509

503:                                              ; preds = %497
  %504 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %505 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %504, i32 0, i32 5
  %506 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %506, align 4
  br label %510

509:                                              ; preds = %497
  br label %69

510:                                              ; preds = %503, %496, %336, %69
  %511 = load i64, i64* %6, align 8
  %512 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %513 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %512, i32 0, i32 0
  store i64 %511, i64* %513, align 8
  %514 = load i64, i64* %8, align 8
  %515 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %516 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %515, i32 0, i32 1
  store i64 %514, i64* %516, align 8
  %517 = load i64, i64* %11, align 8
  %518 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %519 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %518, i32 0, i32 2
  store i64 %517, i64* %519, align 8
  %520 = load i64, i64* %12, align 8
  %521 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %522 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %521, i32 0, i32 3
  store i64 %520, i64* %522, align 8
  %523 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %524 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %525 = load i64, i64* %8, align 8
  %526 = load i64, i64* %12, align 8
  %527 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %528 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %527, i32 0, i32 6
  %529 = load i32, i32* %528, align 8
  %530 = call i32 @bxe_update_rx_prod(%struct.bxe_softc* %523, %struct.bxe_fastpath* %524, i64 %525, i64 %526, i32 %529)
  %531 = load i32, i32* %13, align 4
  %532 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %533 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %532, i32 0, i32 5
  %534 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = add nsw i32 %535, %531
  store i32 %536, i32* %534, align 4
  %537 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %538 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %537, i32 0, i32 5
  %539 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %538, i32 0, i32 1
  %540 = load i32, i32* %539, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %539, align 4
  %542 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %543 = call i32 @BXE_FP_RX_UNLOCK(%struct.bxe_fastpath* %542)
  %544 = load i64, i64* %11, align 8
  %545 = load i64, i64* %10, align 8
  %546 = icmp ne i64 %544, %545
  %547 = zext i1 %546 to i32
  %548 = sext i32 %547 to i64
  ret i64 %548
}

declare dso_local i32 @BXE_FP_RX_LOCK(%struct.bxe_fastpath*) #1

declare dso_local i64 @le16toh(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i64, ...) #1

declare dso_local i64 @RCQ(i64) #1

declare dso_local i64 @RX_BD(i64) #1

declare dso_local i32 @CQE_TYPE(i64) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i64 @__predict_false(i64) #1

declare dso_local i64 @CQE_TYPE_SLOW(i32) #1

declare dso_local i32 @bxe_sp_event(%struct.bxe_softc*, %struct.bxe_fastpath*, %union.eth_rx_cqe*) #1

declare dso_local i32 @CQE_TYPE_FAST(i32) #1

declare dso_local i64 @CQE_TYPE_START(i32) #1

declare dso_local i32 @bxe_tpa_start(%struct.bxe_softc*, %struct.bxe_fastpath*, i32, i64, i64, %struct.eth_fast_path_rx_cqe*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CQE_TYPE_STOP(i32) #1

declare dso_local i64 @SGE_PAGE_ALIGN(i64) #1

declare dso_local i32 @bxe_tpa_stop(%struct.bxe_softc*, %struct.bxe_fastpath*, %struct.bxe_sw_tpa_info*, i64, i64, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @bxe_update_sge_prod(%struct.bxe_softc*, %struct.bxe_fastpath*, i64, i32*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i64, i32) #1

declare dso_local i32 @bxe_alloc_rx_bd_mbuf(%struct.bxe_fastpath*, i64, i64) #1

declare dso_local i32 @memcpy(%struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd*, i32) #1

declare dso_local i32 @memset(%struct.bxe_sw_rx_bd*, i32, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i64) #1

declare dso_local i32 @bxe_service_rxsgl(%struct.bxe_fastpath*, i64, i64, %struct.mbuf*, %struct.eth_fast_path_rx_cqe*) #1

declare dso_local i32 @if_setrcvif(%struct.mbuf*, i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i64 @RX_BD_NEXT(i64) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @if_input(i32, %struct.mbuf*) #1

declare dso_local i64 @RCQ_NEXT(i64) #1

declare dso_local i32 @bxe_update_rx_prod(%struct.bxe_softc*, %struct.bxe_fastpath*, i64, i64, i32) #1

declare dso_local i32 @BXE_FP_RX_UNLOCK(%struct.bxe_fastpath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
