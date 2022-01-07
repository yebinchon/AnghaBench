; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i32, %struct.msk_hw_stats, %struct.msk_softc*, %struct.ifnet* }
%struct.msk_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.msk_softc = type { i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@GM_PHY_ADDR = common dso_local global i32 0, align 4
@GM_PAR_MIB_CLR = common dso_local global i32 0, align 4
@GM_RXF_UC_OK = common dso_local global i32 0, align 4
@GM_RXF_BC_OK = common dso_local global i32 0, align 4
@GM_RXF_MPAUSE = common dso_local global i32 0, align 4
@GM_RXF_MC_OK = common dso_local global i32 0, align 4
@GM_RXF_FCS_ERR = common dso_local global i32 0, align 4
@GM_RXF_SPARE1 = common dso_local global i32 0, align 4
@GM_RXO_OK_LO = common dso_local global i32 0, align 4
@GM_RXO_ERR_LO = common dso_local global i32 0, align 4
@GM_RXF_SHT = common dso_local global i32 0, align 4
@GM_RXE_FRAG = common dso_local global i32 0, align 4
@GM_RXF_64B = common dso_local global i32 0, align 4
@GM_RXF_127B = common dso_local global i32 0, align 4
@GM_RXF_255B = common dso_local global i32 0, align 4
@GM_RXF_511B = common dso_local global i32 0, align 4
@GM_RXF_1023B = common dso_local global i32 0, align 4
@GM_RXF_1518B = common dso_local global i32 0, align 4
@GM_RXF_MAX_SZ = common dso_local global i32 0, align 4
@GM_RXF_LNG_ERR = common dso_local global i32 0, align 4
@GM_RXF_JAB_PKT = common dso_local global i32 0, align 4
@GM_RXF_SPARE2 = common dso_local global i32 0, align 4
@GM_RXE_FIFO_OV = common dso_local global i32 0, align 4
@GM_RXF_SPARE3 = common dso_local global i32 0, align 4
@GM_TXF_UC_OK = common dso_local global i32 0, align 4
@GM_TXF_BC_OK = common dso_local global i32 0, align 4
@GM_TXF_MPAUSE = common dso_local global i32 0, align 4
@GM_TXF_MC_OK = common dso_local global i32 0, align 4
@GM_TXO_OK_LO = common dso_local global i32 0, align 4
@GM_TXF_64B = common dso_local global i32 0, align 4
@GM_TXF_127B = common dso_local global i32 0, align 4
@GM_TXF_255B = common dso_local global i32 0, align 4
@GM_TXF_511B = common dso_local global i32 0, align 4
@GM_TXF_1023B = common dso_local global i32 0, align 4
@GM_TXF_1518B = common dso_local global i32 0, align 4
@GM_TXF_MAX_SZ = common dso_local global i32 0, align 4
@GM_TXF_SPARE1 = common dso_local global i32 0, align 4
@GM_TXF_COL = common dso_local global i32 0, align 4
@GM_TXF_LAT_COL = common dso_local global i32 0, align 4
@GM_TXF_ABO_COL = common dso_local global i32 0, align 4
@GM_TXF_MUL_COL = common dso_local global i32 0, align 4
@GM_TXF_SNG_COL = common dso_local global i32 0, align 4
@GM_TXE_FIFO_UR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*)* @msk_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_stats_update(%struct.msk_if_softc* %0) #0 {
  %2 = alloca %struct.msk_if_softc*, align 8
  %3 = alloca %struct.msk_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.msk_hw_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %2, align 8
  %8 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %9 = call i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc* %8)
  %10 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %11 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %10, i32 0, i32 3
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %479

20:                                               ; preds = %1
  %21 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %22 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %21, i32 0, i32 2
  %23 = load %struct.msk_softc*, %struct.msk_softc** %22, align 8
  store %struct.msk_softc* %23, %struct.msk_softc** %3, align 8
  %24 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %25 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %24, i32 0, i32 1
  store %struct.msk_hw_stats* %25, %struct.msk_hw_stats** %5, align 8
  %26 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %27 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %28 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @GM_PHY_ADDR, align 4
  %31 = call i32 @GMAC_READ_2(%struct.msk_softc* %26, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %33 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %34 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @GM_PHY_ADDR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @GM_PAR_MIB_CLR, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %32, i32 %35, i32 %36, i32 %39)
  %41 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %42 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @GM_RXF_UC_OK, align 4
  %45 = call i64 @MSK_READ_MIB32(i32 %43, i32 %44)
  %46 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %47 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %46, i32 0, i32 36
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %53 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @GM_RXF_BC_OK, align 4
  %56 = call i64 @MSK_READ_MIB32(i32 %54, i32 %55)
  %57 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %58 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %57, i32 0, i32 35
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %64 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @GM_RXF_MPAUSE, align 4
  %67 = call i64 @MSK_READ_MIB32(i32 %65, i32 %66)
  %68 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %69 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %68, i32 0, i32 34
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %75 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @GM_RXF_MC_OK, align 4
  %78 = call i64 @MSK_READ_MIB32(i32 %76, i32 %77)
  %79 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %80 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %79, i32 0, i32 33
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %78
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  %85 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %86 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @GM_RXF_FCS_ERR, align 4
  %89 = call i64 @MSK_READ_MIB32(i32 %87, i32 %88)
  %90 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %91 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %90, i32 0, i32 32
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  %96 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %97 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @GM_RXF_SPARE1, align 4
  %100 = call i64 @MSK_READ_MIB32(i32 %98, i32 %99)
  store i64 %100, i64* %7, align 8
  %101 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %102 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @GM_RXO_OK_LO, align 4
  %105 = call i64 @MSK_READ_MIB64(i32 %103, i32 %104)
  %106 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %107 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %106, i32 0, i32 31
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %105
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 4
  %112 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %113 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @GM_RXO_ERR_LO, align 4
  %116 = call i64 @MSK_READ_MIB64(i32 %114, i32 %115)
  %117 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %118 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %117, i32 0, i32 30
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %116
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 4
  %123 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %124 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @GM_RXF_SHT, align 4
  %127 = call i64 @MSK_READ_MIB32(i32 %125, i32 %126)
  %128 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %129 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %128, i32 0, i32 29
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %127
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 4
  %134 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %135 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @GM_RXE_FRAG, align 4
  %138 = call i64 @MSK_READ_MIB32(i32 %136, i32 %137)
  %139 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %140 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %139, i32 0, i32 28
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %138
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 4
  %145 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %146 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @GM_RXF_64B, align 4
  %149 = call i64 @MSK_READ_MIB32(i32 %147, i32 %148)
  %150 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %151 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %150, i32 0, i32 27
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %149
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %151, align 4
  %156 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %157 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @GM_RXF_127B, align 4
  %160 = call i64 @MSK_READ_MIB32(i32 %158, i32 %159)
  %161 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %162 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %161, i32 0, i32 26
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %160
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %162, align 4
  %167 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %168 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @GM_RXF_255B, align 4
  %171 = call i64 @MSK_READ_MIB32(i32 %169, i32 %170)
  %172 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %173 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %172, i32 0, i32 25
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %171
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %173, align 4
  %178 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %179 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @GM_RXF_511B, align 4
  %182 = call i64 @MSK_READ_MIB32(i32 %180, i32 %181)
  %183 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %184 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %183, i32 0, i32 24
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %186, %182
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %184, align 4
  %189 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %190 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @GM_RXF_1023B, align 4
  %193 = call i64 @MSK_READ_MIB32(i32 %191, i32 %192)
  %194 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %195 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %194, i32 0, i32 23
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %193
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %195, align 4
  %200 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %201 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @GM_RXF_1518B, align 4
  %204 = call i64 @MSK_READ_MIB32(i32 %202, i32 %203)
  %205 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %206 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %205, i32 0, i32 22
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %208, %204
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %206, align 4
  %211 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %212 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @GM_RXF_MAX_SZ, align 4
  %215 = call i64 @MSK_READ_MIB32(i32 %213, i32 %214)
  %216 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %217 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %216, i32 0, i32 21
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, %215
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %217, align 4
  %222 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %223 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @GM_RXF_LNG_ERR, align 4
  %226 = call i64 @MSK_READ_MIB32(i32 %224, i32 %225)
  %227 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %228 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %227, i32 0, i32 20
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %230, %226
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %228, align 4
  %233 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %234 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @GM_RXF_JAB_PKT, align 4
  %237 = call i64 @MSK_READ_MIB32(i32 %235, i32 %236)
  %238 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %239 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %238, i32 0, i32 19
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = add nsw i64 %241, %237
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %239, align 4
  %244 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %245 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @GM_RXF_SPARE2, align 4
  %248 = call i64 @MSK_READ_MIB32(i32 %246, i32 %247)
  store i64 %248, i64* %7, align 8
  %249 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %250 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @GM_RXE_FIFO_OV, align 4
  %253 = call i64 @MSK_READ_MIB32(i32 %251, i32 %252)
  %254 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %255 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %254, i32 0, i32 18
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %257, %253
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %255, align 4
  %260 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %261 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @GM_RXF_SPARE3, align 4
  %264 = call i64 @MSK_READ_MIB32(i32 %262, i32 %263)
  store i64 %264, i64* %7, align 8
  %265 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %266 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @GM_TXF_UC_OK, align 4
  %269 = call i64 @MSK_READ_MIB32(i32 %267, i32 %268)
  %270 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %271 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %270, i32 0, i32 17
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %273, %269
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %271, align 4
  %276 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %277 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @GM_TXF_BC_OK, align 4
  %280 = call i64 @MSK_READ_MIB32(i32 %278, i32 %279)
  %281 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %282 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %281, i32 0, i32 16
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = add nsw i64 %284, %280
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %282, align 4
  %287 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %288 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @GM_TXF_MPAUSE, align 4
  %291 = call i64 @MSK_READ_MIB32(i32 %289, i32 %290)
  %292 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %293 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %292, i32 0, i32 15
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = add nsw i64 %295, %291
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %293, align 4
  %298 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %299 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @GM_TXF_MC_OK, align 4
  %302 = call i64 @MSK_READ_MIB32(i32 %300, i32 %301)
  %303 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %304 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %303, i32 0, i32 14
  %305 = load i32, i32* %304, align 4
  %306 = sext i32 %305 to i64
  %307 = add nsw i64 %306, %302
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %304, align 4
  %309 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %310 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @GM_TXO_OK_LO, align 4
  %313 = call i64 @MSK_READ_MIB64(i32 %311, i32 %312)
  %314 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %315 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %314, i32 0, i32 13
  %316 = load i32, i32* %315, align 4
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %317, %313
  %319 = trunc i64 %318 to i32
  store i32 %319, i32* %315, align 4
  %320 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %321 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @GM_TXF_64B, align 4
  %324 = call i64 @MSK_READ_MIB32(i32 %322, i32 %323)
  %325 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %326 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %325, i32 0, i32 12
  %327 = load i32, i32* %326, align 4
  %328 = sext i32 %327 to i64
  %329 = add nsw i64 %328, %324
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* %326, align 4
  %331 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %332 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @GM_TXF_127B, align 4
  %335 = call i64 @MSK_READ_MIB32(i32 %333, i32 %334)
  %336 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %337 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %336, i32 0, i32 11
  %338 = load i32, i32* %337, align 4
  %339 = sext i32 %338 to i64
  %340 = add nsw i64 %339, %335
  %341 = trunc i64 %340 to i32
  store i32 %341, i32* %337, align 4
  %342 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %343 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @GM_TXF_255B, align 4
  %346 = call i64 @MSK_READ_MIB32(i32 %344, i32 %345)
  %347 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %348 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %347, i32 0, i32 10
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = add nsw i64 %350, %346
  %352 = trunc i64 %351 to i32
  store i32 %352, i32* %348, align 4
  %353 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %354 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @GM_TXF_511B, align 4
  %357 = call i64 @MSK_READ_MIB32(i32 %355, i32 %356)
  %358 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %359 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %358, i32 0, i32 9
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  %362 = add nsw i64 %361, %357
  %363 = trunc i64 %362 to i32
  store i32 %363, i32* %359, align 4
  %364 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %365 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @GM_TXF_1023B, align 4
  %368 = call i64 @MSK_READ_MIB32(i32 %366, i32 %367)
  %369 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %370 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %369, i32 0, i32 8
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = add nsw i64 %372, %368
  %374 = trunc i64 %373 to i32
  store i32 %374, i32* %370, align 4
  %375 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %376 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @GM_TXF_1518B, align 4
  %379 = call i64 @MSK_READ_MIB32(i32 %377, i32 %378)
  %380 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %381 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %380, i32 0, i32 7
  %382 = load i32, i32* %381, align 4
  %383 = sext i32 %382 to i64
  %384 = add nsw i64 %383, %379
  %385 = trunc i64 %384 to i32
  store i32 %385, i32* %381, align 4
  %386 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %387 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* @GM_TXF_MAX_SZ, align 4
  %390 = call i64 @MSK_READ_MIB32(i32 %388, i32 %389)
  %391 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %392 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %391, i32 0, i32 6
  %393 = load i32, i32* %392, align 4
  %394 = sext i32 %393 to i64
  %395 = add nsw i64 %394, %390
  %396 = trunc i64 %395 to i32
  store i32 %396, i32* %392, align 4
  %397 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %398 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @GM_TXF_SPARE1, align 4
  %401 = call i64 @MSK_READ_MIB32(i32 %399, i32 %400)
  store i64 %401, i64* %7, align 8
  %402 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %403 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* @GM_TXF_COL, align 4
  %406 = call i64 @MSK_READ_MIB32(i32 %404, i32 %405)
  %407 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %408 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %407, i32 0, i32 5
  %409 = load i32, i32* %408, align 4
  %410 = sext i32 %409 to i64
  %411 = add nsw i64 %410, %406
  %412 = trunc i64 %411 to i32
  store i32 %412, i32* %408, align 4
  %413 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %414 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @GM_TXF_LAT_COL, align 4
  %417 = call i64 @MSK_READ_MIB32(i32 %415, i32 %416)
  %418 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %419 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %418, i32 0, i32 4
  %420 = load i32, i32* %419, align 4
  %421 = sext i32 %420 to i64
  %422 = add nsw i64 %421, %417
  %423 = trunc i64 %422 to i32
  store i32 %423, i32* %419, align 4
  %424 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %425 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* @GM_TXF_ABO_COL, align 4
  %428 = call i64 @MSK_READ_MIB32(i32 %426, i32 %427)
  %429 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %430 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %429, i32 0, i32 3
  %431 = load i32, i32* %430, align 4
  %432 = sext i32 %431 to i64
  %433 = add nsw i64 %432, %428
  %434 = trunc i64 %433 to i32
  store i32 %434, i32* %430, align 4
  %435 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %436 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = load i32, i32* @GM_TXF_MUL_COL, align 4
  %439 = call i64 @MSK_READ_MIB32(i32 %437, i32 %438)
  %440 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %441 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 4
  %443 = sext i32 %442 to i64
  %444 = add nsw i64 %443, %439
  %445 = trunc i64 %444 to i32
  store i32 %445, i32* %441, align 4
  %446 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %447 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* @GM_TXF_SNG_COL, align 4
  %450 = call i64 @MSK_READ_MIB32(i32 %448, i32 %449)
  %451 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %452 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = sext i32 %453 to i64
  %455 = add nsw i64 %454, %450
  %456 = trunc i64 %455 to i32
  store i32 %456, i32* %452, align 4
  %457 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %458 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* @GM_TXE_FIFO_UR, align 4
  %461 = call i64 @MSK_READ_MIB32(i32 %459, i32 %460)
  %462 = load %struct.msk_hw_stats*, %struct.msk_hw_stats** %5, align 8
  %463 = getelementptr inbounds %struct.msk_hw_stats, %struct.msk_hw_stats* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 4
  %465 = sext i32 %464 to i64
  %466 = add nsw i64 %465, %461
  %467 = trunc i64 %466 to i32
  store i32 %467, i32* %463, align 4
  %468 = load i32, i32* @GM_PAR_MIB_CLR, align 4
  %469 = xor i32 %468, -1
  %470 = load i32, i32* %6, align 4
  %471 = and i32 %470, %469
  store i32 %471, i32* %6, align 4
  %472 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %473 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %474 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* @GM_PHY_ADDR, align 4
  %477 = load i32, i32* %6, align 4
  %478 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %472, i32 %475, i32 %476, i32 %477)
  br label %479

479:                                              ; preds = %20, %19
  ret void
}

declare dso_local i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc*) #1

declare dso_local i32 @GMAC_READ_2(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @GMAC_WRITE_2(%struct.msk_softc*, i32, i32, i32) #1

declare dso_local i64 @MSK_READ_MIB32(i32, i32) #1

declare dso_local i64 @MSK_READ_MIB64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
