; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_update_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i64, i32, i32, i32, i64, %struct.fxp_hwstats, %struct.fxp_stats*, i32 }
%struct.fxp_hwstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fxp_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@FXP_REV_82559_A0 = common dso_local global i64 0, align 8
@FXP_REV_82558_A4 = common dso_local global i64 0, align 8
@FXP_STATS_DR_COMPLETE = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@FXP_FLAG_RXBUG = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@tx_threshold = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fxp_softc*)* @fxp_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxp_update_stats(%struct.fxp_softc* %0) #0 {
  %2 = alloca %struct.fxp_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fxp_stats*, align 8
  %5 = alloca %struct.fxp_hwstats*, align 8
  %6 = alloca i64*, align 8
  store %struct.fxp_softc* %0, %struct.fxp_softc** %2, align 8
  %7 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %8 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %11 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %10, i32 0, i32 6
  %12 = load %struct.fxp_stats*, %struct.fxp_stats** %11, align 8
  store %struct.fxp_stats* %12, %struct.fxp_stats** %4, align 8
  %13 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @FXP_LOCK_ASSERT(%struct.fxp_softc* %13, i32 %14)
  %16 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %17 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %20 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %23 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @bus_dmamap_sync(i32 %18, i32 %21, i32 %24)
  %26 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %27 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FXP_REV_82559_A0, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %33 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %32, i32 0, i32 0
  store i64* %33, i64** %6, align 8
  br label %48

34:                                               ; preds = %1
  %35 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %36 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FXP_REV_82558_A4, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %42 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %41, i32 0, i32 21
  %43 = bitcast i32* %42 to i64*
  store i64* %43, i64** %6, align 8
  br label %47

44:                                               ; preds = %34
  %45 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %46 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %45, i32 0, i32 1
  store i64* %46, i64** %6, align 8
  br label %47

47:                                               ; preds = %44, %40
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @FXP_STATS_DR_COMPLETE, align 4
  %52 = call i64 @htole32(i32 %51)
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %361

54:                                               ; preds = %48
  %55 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %56 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %55, i32 0, i32 5
  store %struct.fxp_hwstats* %56, %struct.fxp_hwstats** %5, align 8
  %57 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %58 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @le32toh(i64 %59)
  %61 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %62 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %61, i32 0, i32 20
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %68 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @le32toh(i64 %69)
  %71 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %72 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %71, i32 0, i32 19
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  %77 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %78 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @le32toh(i64 %79)
  %81 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %82 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %81, i32 0, i32 18
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  %87 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %88 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @le32toh(i64 %89)
  %91 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %92 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %91, i32 0, i32 17
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  %97 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %98 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @le32toh(i64 %99)
  %101 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %102 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %101, i32 0, i32 16
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  %107 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %108 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @le32toh(i64 %109)
  %111 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %112 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %111, i32 0, i32 15
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %110
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 4
  %117 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %118 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @le32toh(i64 %119)
  %121 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %122 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %121, i32 0, i32 14
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %120
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 4
  %127 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %128 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %127, i32 0, i32 9
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @le32toh(i64 %129)
  %131 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %132 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %131, i32 0, i32 13
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %130
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 4
  %137 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %138 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %137, i32 0, i32 10
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @le32toh(i64 %139)
  %141 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %142 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %141, i32 0, i32 12
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %140
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 4
  %147 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %148 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %147, i32 0, i32 11
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @le32toh(i64 %149)
  %151 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %152 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %151, i32 0, i32 11
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %150
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %152, align 4
  %157 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %158 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %157, i32 0, i32 12
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @le32toh(i64 %159)
  %161 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %162 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %161, i32 0, i32 10
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %160
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %162, align 4
  %167 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %168 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %167, i32 0, i32 13
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @le32toh(i64 %169)
  %171 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %172 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %170
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 4
  %177 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %178 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %177, i32 0, i32 14
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @le32toh(i64 %179)
  %181 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %182 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %180
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %182, align 4
  %187 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %188 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %187, i32 0, i32 15
  %189 = load i64, i64* %188, align 8
  %190 = call i64 @le32toh(i64 %189)
  %191 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %192 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %190
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %192, align 4
  %197 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %198 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %197, i32 0, i32 16
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @le32toh(i64 %199)
  %201 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %202 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %204, %200
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %202, align 4
  %207 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %208 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %207, i32 0, i32 17
  %209 = load i64, i64* %208, align 8
  %210 = call i64 @le32toh(i64 %209)
  %211 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %212 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %214, %210
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %212, align 4
  %217 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %218 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = call i64 @le32toh(i64 %219)
  %221 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %222 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %224, %220
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %222, align 4
  %227 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %228 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %227, i32 0, i32 18
  %229 = load i64, i64* %228, align 8
  %230 = call i64 @le32toh(i64 %229)
  %231 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %232 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %230
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %232, align 4
  %237 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %238 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %237, i32 0, i32 19
  %239 = load i64, i64* %238, align 8
  %240 = call i64 @le32toh(i64 %239)
  %241 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %242 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %244, %240
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %242, align 4
  %247 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %248 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %247, i32 0, i32 21
  %249 = load i32, i32* %248, align 4
  %250 = call i64 @le16toh(i32 %249)
  %251 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %252 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = add nsw i64 %254, %250
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %252, align 4
  %257 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %258 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %257, i32 0, i32 20
  %259 = load i32, i32* %258, align 8
  %260 = call i64 @le16toh(i32 %259)
  %261 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %5, align 8
  %262 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %264, %260
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %262, align 4
  %267 = load i32, i32* %3, align 4
  %268 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %269 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %270 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = call i64 @le32toh(i64 %271)
  %273 = call i32 @if_inc_counter(i32 %267, i32 %268, i64 %272)
  %274 = load i32, i32* %3, align 4
  %275 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %276 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %277 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %276, i32 0, i32 10
  %278 = load i64, i64* %277, align 8
  %279 = call i64 @le32toh(i64 %278)
  %280 = call i32 @if_inc_counter(i32 %274, i32 %275, i64 %279)
  %281 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %282 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %281, i32 0, i32 11
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %295

285:                                              ; preds = %54
  %286 = load i32, i32* %3, align 4
  %287 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %288 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %289 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %288, i32 0, i32 11
  %290 = load i64, i64* %289, align 8
  %291 = call i64 @le32toh(i64 %290)
  %292 = call i32 @if_inc_counter(i32 %286, i32 %287, i64 %291)
  %293 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %294 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %293, i32 0, i32 4
  store i64 0, i64* %294, align 8
  br label %308

295:                                              ; preds = %54
  %296 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %297 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @FXP_FLAG_RXBUG, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %295
  %303 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %304 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %303, i32 0, i32 4
  %305 = load i64, i64* %304, align 8
  %306 = add nsw i64 %305, 1
  store i64 %306, i64* %304, align 8
  br label %307

307:                                              ; preds = %302, %295
  br label %308

308:                                              ; preds = %307, %285
  %309 = load i32, i32* %3, align 4
  %310 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %311 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %312 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %311, i32 0, i32 12
  %313 = load i64, i64* %312, align 8
  %314 = call i64 @le32toh(i64 %313)
  %315 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %316 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %315, i32 0, i32 13
  %317 = load i64, i64* %316, align 8
  %318 = call i64 @le32toh(i64 %317)
  %319 = add nsw i64 %314, %318
  %320 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %321 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %320, i32 0, i32 14
  %322 = load i64, i64* %321, align 8
  %323 = call i64 @le32toh(i64 %322)
  %324 = add nsw i64 %319, %323
  %325 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %326 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %325, i32 0, i32 15
  %327 = load i64, i64* %326, align 8
  %328 = call i64 @le32toh(i64 %327)
  %329 = add nsw i64 %324, %328
  %330 = call i32 @if_inc_counter(i32 %309, i32 %310, i64 %329)
  %331 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %332 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %331, i32 0, i32 5
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %349

335:                                              ; preds = %308
  %336 = load i32, i32* %3, align 4
  %337 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %338 = load %struct.fxp_stats*, %struct.fxp_stats** %4, align 8
  %339 = getelementptr inbounds %struct.fxp_stats, %struct.fxp_stats* %338, i32 0, i32 5
  %340 = load i64, i64* %339, align 8
  %341 = call i64 @le32toh(i64 %340)
  %342 = call i32 @if_inc_counter(i32 %336, i32 %337, i64 %341)
  %343 = load i32, i32* @tx_threshold, align 4
  %344 = icmp slt i32 %343, 192
  br i1 %344, label %345, label %348

345:                                              ; preds = %335
  %346 = load i32, i32* @tx_threshold, align 4
  %347 = add nsw i32 %346, 64
  store i32 %347, i32* @tx_threshold, align 4
  br label %348

348:                                              ; preds = %345, %335
  br label %349

349:                                              ; preds = %348, %308
  %350 = load i64*, i64** %6, align 8
  store i64 0, i64* %350, align 8
  %351 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %352 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %355 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %358 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %359 = or i32 %357, %358
  %360 = call i32 @bus_dmamap_sync(i32 %353, i32 %356, i32 %359)
  br label %361

361:                                              ; preds = %349, %48
  ret void
}

declare dso_local i32 @FXP_LOCK_ASSERT(%struct.fxp_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @htole32(i32) #1

declare dso_local i64 @le32toh(i64) #1

declare dso_local i64 @le16toh(i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
