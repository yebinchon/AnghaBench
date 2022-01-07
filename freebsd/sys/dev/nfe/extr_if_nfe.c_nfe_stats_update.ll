; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, %struct.nfe_hw_stats }
%struct.nfe_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NFE_MIB_V1 = common dso_local global i32 0, align 4
@NFE_MIB_V2 = common dso_local global i32 0, align 4
@NFE_MIB_V3 = common dso_local global i32 0, align 4
@NFE_TX_OCTET = common dso_local global i32 0, align 4
@NFE_TX_ZERO_REXMIT = common dso_local global i32 0, align 4
@NFE_TX_ONE_REXMIT = common dso_local global i32 0, align 4
@NFE_TX_MULTI_REXMIT = common dso_local global i32 0, align 4
@NFE_TX_LATE_COL = common dso_local global i32 0, align 4
@NFE_TX_FIFO_UNDERUN = common dso_local global i32 0, align 4
@NFE_TX_CARRIER_LOST = common dso_local global i32 0, align 4
@NFE_TX_EXCESS_DEFERRAL = common dso_local global i32 0, align 4
@NFE_TX_RETRY_ERROR = common dso_local global i32 0, align 4
@NFE_RX_FRAME_ERROR = common dso_local global i32 0, align 4
@NFE_RX_EXTRA_BYTES = common dso_local global i32 0, align 4
@NFE_RX_LATE_COL = common dso_local global i32 0, align 4
@NFE_RX_RUNT = common dso_local global i32 0, align 4
@NFE_RX_JUMBO = common dso_local global i32 0, align 4
@NFE_RX_FIFO_OVERUN = common dso_local global i32 0, align 4
@NFE_RX_CRC_ERROR = common dso_local global i32 0, align 4
@NFE_RX_FAE = common dso_local global i32 0, align 4
@NFE_RX_LEN_ERROR = common dso_local global i32 0, align 4
@NFE_RX_UNICAST = common dso_local global i32 0, align 4
@NFE_RX_MULTICAST = common dso_local global i32 0, align 4
@NFE_RX_BROADCAST = common dso_local global i32 0, align 4
@NFE_TX_DEFERAL = common dso_local global i32 0, align 4
@NFE_TX_FRAME = common dso_local global i32 0, align 4
@NFE_RX_OCTET = common dso_local global i32 0, align 4
@NFE_TX_PAUSE = common dso_local global i32 0, align 4
@NFE_RX_PAUSE = common dso_local global i32 0, align 4
@NFE_RX_DROP = common dso_local global i32 0, align 4
@NFE_TX_UNICAST = common dso_local global i32 0, align 4
@NFE_TX_MULTICAST = common dso_local global i32 0, align 4
@NFE_TX_BROADCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfe_softc*)* @nfe_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_stats_update(%struct.nfe_softc* %0) #0 {
  %2 = alloca %struct.nfe_softc*, align 8
  %3 = alloca %struct.nfe_hw_stats*, align 8
  store %struct.nfe_softc* %0, %struct.nfe_softc** %2, align 8
  %4 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %5 = call i32 @NFE_LOCK_ASSERT(%struct.nfe_softc* %4)
  %6 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %7 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NFE_MIB_V1, align 4
  %10 = load i32, i32* @NFE_MIB_V2, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @NFE_MIB_V3, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %8, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %305

17:                                               ; preds = %1
  %18 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %19 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %18, i32 0, i32 1
  store %struct.nfe_hw_stats* %19, %struct.nfe_hw_stats** %3, align 8
  %20 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %21 = load i32, i32* @NFE_TX_OCTET, align 4
  %22 = call i64 @NFE_READ(%struct.nfe_softc* %20, i32 %21)
  %23 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %24 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %23, i32 0, i32 29
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %30 = load i32, i32* @NFE_TX_ZERO_REXMIT, align 4
  %31 = call i64 @NFE_READ(%struct.nfe_softc* %29, i32 %30)
  %32 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %33 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %32, i32 0, i32 28
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %39 = load i32, i32* @NFE_TX_ONE_REXMIT, align 4
  %40 = call i64 @NFE_READ(%struct.nfe_softc* %38, i32 %39)
  %41 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %42 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %41, i32 0, i32 27
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %48 = load i32, i32* @NFE_TX_MULTI_REXMIT, align 4
  %49 = call i64 @NFE_READ(%struct.nfe_softc* %47, i32 %48)
  %50 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %51 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %50, i32 0, i32 26
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %57 = load i32, i32* @NFE_TX_LATE_COL, align 4
  %58 = call i64 @NFE_READ(%struct.nfe_softc* %56, i32 %57)
  %59 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %60 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %59, i32 0, i32 25
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %66 = load i32, i32* @NFE_TX_FIFO_UNDERUN, align 4
  %67 = call i64 @NFE_READ(%struct.nfe_softc* %65, i32 %66)
  %68 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %69 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %68, i32 0, i32 24
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %75 = load i32, i32* @NFE_TX_CARRIER_LOST, align 4
  %76 = call i64 @NFE_READ(%struct.nfe_softc* %74, i32 %75)
  %77 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %78 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %77, i32 0, i32 23
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  %83 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %84 = load i32, i32* @NFE_TX_EXCESS_DEFERRAL, align 4
  %85 = call i64 @NFE_READ(%struct.nfe_softc* %83, i32 %84)
  %86 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %87 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %86, i32 0, i32 22
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %85
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  %92 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %93 = load i32, i32* @NFE_TX_RETRY_ERROR, align 4
  %94 = call i64 @NFE_READ(%struct.nfe_softc* %92, i32 %93)
  %95 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %96 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %95, i32 0, i32 21
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %94
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 4
  %101 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %102 = load i32, i32* @NFE_RX_FRAME_ERROR, align 4
  %103 = call i64 @NFE_READ(%struct.nfe_softc* %101, i32 %102)
  %104 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %105 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %104, i32 0, i32 20
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  %110 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %111 = load i32, i32* @NFE_RX_EXTRA_BYTES, align 4
  %112 = call i64 @NFE_READ(%struct.nfe_softc* %110, i32 %111)
  %113 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %114 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %113, i32 0, i32 19
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  %119 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %120 = load i32, i32* @NFE_RX_LATE_COL, align 4
  %121 = call i64 @NFE_READ(%struct.nfe_softc* %119, i32 %120)
  %122 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %123 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %122, i32 0, i32 18
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %121
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 4
  %128 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %129 = load i32, i32* @NFE_RX_RUNT, align 4
  %130 = call i64 @NFE_READ(%struct.nfe_softc* %128, i32 %129)
  %131 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %132 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %131, i32 0, i32 17
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %130
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 4
  %137 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %138 = load i32, i32* @NFE_RX_JUMBO, align 4
  %139 = call i64 @NFE_READ(%struct.nfe_softc* %137, i32 %138)
  %140 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %141 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %140, i32 0, i32 16
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %139
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 4
  %146 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %147 = load i32, i32* @NFE_RX_FIFO_OVERUN, align 4
  %148 = call i64 @NFE_READ(%struct.nfe_softc* %146, i32 %147)
  %149 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %150 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %149, i32 0, i32 15
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %148
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %150, align 4
  %155 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %156 = load i32, i32* @NFE_RX_CRC_ERROR, align 4
  %157 = call i64 @NFE_READ(%struct.nfe_softc* %155, i32 %156)
  %158 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %159 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %158, i32 0, i32 14
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %157
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %159, align 4
  %164 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %165 = load i32, i32* @NFE_RX_FAE, align 4
  %166 = call i64 @NFE_READ(%struct.nfe_softc* %164, i32 %165)
  %167 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %168 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %167, i32 0, i32 13
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %170, %166
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %168, align 4
  %173 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %174 = load i32, i32* @NFE_RX_LEN_ERROR, align 4
  %175 = call i64 @NFE_READ(%struct.nfe_softc* %173, i32 %174)
  %176 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %177 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %176, i32 0, i32 12
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %175
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %177, align 4
  %182 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %183 = load i32, i32* @NFE_RX_UNICAST, align 4
  %184 = call i64 @NFE_READ(%struct.nfe_softc* %182, i32 %183)
  %185 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %186 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %185, i32 0, i32 11
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %184
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %186, align 4
  %191 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %192 = load i32, i32* @NFE_RX_MULTICAST, align 4
  %193 = call i64 @NFE_READ(%struct.nfe_softc* %191, i32 %192)
  %194 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %195 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %194, i32 0, i32 10
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %193
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %195, align 4
  %200 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %201 = load i32, i32* @NFE_RX_BROADCAST, align 4
  %202 = call i64 @NFE_READ(%struct.nfe_softc* %200, i32 %201)
  %203 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %204 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %203, i32 0, i32 9
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %206, %202
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %204, align 4
  %209 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %210 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @NFE_MIB_V2, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %270

215:                                              ; preds = %17
  %216 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %217 = load i32, i32* @NFE_TX_DEFERAL, align 4
  %218 = call i64 @NFE_READ(%struct.nfe_softc* %216, i32 %217)
  %219 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %220 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %219, i32 0, i32 8
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %222, %218
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %220, align 4
  %225 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %226 = load i32, i32* @NFE_TX_FRAME, align 4
  %227 = call i64 @NFE_READ(%struct.nfe_softc* %225, i32 %226)
  %228 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %229 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %231, %227
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %229, align 4
  %234 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %235 = load i32, i32* @NFE_RX_OCTET, align 4
  %236 = call i64 @NFE_READ(%struct.nfe_softc* %234, i32 %235)
  %237 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %238 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %240, %236
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %238, align 4
  %243 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %244 = load i32, i32* @NFE_TX_PAUSE, align 4
  %245 = call i64 @NFE_READ(%struct.nfe_softc* %243, i32 %244)
  %246 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %247 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = add nsw i64 %249, %245
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %247, align 4
  %252 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %253 = load i32, i32* @NFE_RX_PAUSE, align 4
  %254 = call i64 @NFE_READ(%struct.nfe_softc* %252, i32 %253)
  %255 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %256 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %258, %254
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %256, align 4
  %261 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %262 = load i32, i32* @NFE_RX_DROP, align 4
  %263 = call i64 @NFE_READ(%struct.nfe_softc* %261, i32 %262)
  %264 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %265 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %267, %263
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %265, align 4
  br label %270

270:                                              ; preds = %215, %17
  %271 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %272 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @NFE_MIB_V3, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %305

277:                                              ; preds = %270
  %278 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %279 = load i32, i32* @NFE_TX_UNICAST, align 4
  %280 = call i64 @NFE_READ(%struct.nfe_softc* %278, i32 %279)
  %281 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %282 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = add nsw i64 %284, %280
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %282, align 4
  %287 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %288 = load i32, i32* @NFE_TX_MULTICAST, align 4
  %289 = call i64 @NFE_READ(%struct.nfe_softc* %287, i32 %288)
  %290 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %291 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %293, %289
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %291, align 4
  %296 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %297 = load i32, i32* @NFE_TX_BROADCAST, align 4
  %298 = call i64 @NFE_READ(%struct.nfe_softc* %296, i32 %297)
  %299 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %3, align 8
  %300 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = add nsw i64 %302, %298
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %300, align 4
  br label %305

305:                                              ; preds = %16, %277, %270
  ret void
}

declare dso_local i32 @NFE_LOCK_ASSERT(%struct.nfe_softc*) #1

declare dso_local i64 @NFE_READ(%struct.nfe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
