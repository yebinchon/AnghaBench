; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, %struct.TYPE_3__, %struct.TYPE_4__, %struct.alc_hw_stats, %struct.ifnet* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.smb* }
%struct.smb = type { i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.alc_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32 }

@ALC_FLAG_SMB_BUG = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ALC_RX_MIB_BASE = common dso_local global i64 0, align 8
@ALC_TX_MIB_BASE = common dso_local global i64 0, align 8
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@HDPX_CFG_RETRY_DEFAULT = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_stats_update(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca %struct.alc_hw_stats*, align 8
  %4 = alloca %struct.smb, align 8
  %5 = alloca %struct.smb*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %9 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %10 = call i32 @ALC_LOCK_ASSERT(%struct.alc_softc* %9)
  %11 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %11, i32 0, i32 4
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %6, align 8
  %14 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %14, i32 0, i32 3
  store %struct.alc_hw_stats* %15, %struct.alc_hw_stats** %3, align 8
  %16 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %17 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ALC_FLAG_SMB_BUG, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %1
  %23 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %24 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %28 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %32 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @bus_dmamap_sync(i32 %26, i32 %30, i32 %33)
  %35 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %36 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.smb*, %struct.smb** %37, align 8
  store %struct.smb* %38, %struct.smb** %5, align 8
  %39 = load %struct.smb*, %struct.smb** %5, align 8
  %40 = getelementptr inbounds %struct.smb, %struct.smb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %22
  br label %631

44:                                               ; preds = %22
  br label %88

45:                                               ; preds = %1
  store %struct.smb* %4, %struct.smb** %5, align 8
  %46 = getelementptr inbounds %struct.smb, %struct.smb* %4, i32 0, i32 10
  store i64* %46, i64** %7, align 8
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %63, %45
  %48 = load i64*, i64** %7, align 8
  %49 = getelementptr inbounds %struct.smb, %struct.smb* %4, i32 0, i32 34
  %50 = icmp ule i64* %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %53 = load i64, i64* @ALC_RX_MIB_BASE, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = call i64 @CSR_READ_4(%struct.alc_softc* %52, i64 %56)
  %58 = load i64*, i64** %7, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %51
  %64 = load i64*, i64** %7, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %7, align 8
  br label %47

66:                                               ; preds = %47
  %67 = getelementptr inbounds %struct.smb, %struct.smb* %4, i32 0, i32 15
  store i64* %67, i64** %7, align 8
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %84, %66
  %69 = load i64*, i64** %7, align 8
  %70 = getelementptr inbounds %struct.smb, %struct.smb* %4, i32 0, i32 16
  %71 = icmp ule i64* %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %74 = load i64, i64* @ALC_TX_MIB_BASE, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = call i64 @CSR_READ_4(%struct.alc_softc* %73, i64 %77)
  %79 = load i64*, i64** %7, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %72
  %85 = load i64*, i64** %7, align 8
  %86 = getelementptr inbounds i64, i64* %85, i32 1
  store i64* %86, i64** %7, align 8
  br label %68

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87, %44
  %89 = load %struct.smb*, %struct.smb** %5, align 8
  %90 = getelementptr inbounds %struct.smb, %struct.smb* %89, i32 0, i32 10
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %93 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %92, i32 0, i32 48
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %91
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  %98 = load %struct.smb*, %struct.smb** %5, align 8
  %99 = getelementptr inbounds %struct.smb, %struct.smb* %98, i32 0, i32 49
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %102 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %101, i32 0, i32 47
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  %107 = load %struct.smb*, %struct.smb** %5, align 8
  %108 = getelementptr inbounds %struct.smb, %struct.smb* %107, i32 0, i32 48
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %111 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %110, i32 0, i32 46
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %109
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  %116 = load %struct.smb*, %struct.smb** %5, align 8
  %117 = getelementptr inbounds %struct.smb, %struct.smb* %116, i32 0, i32 47
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %120 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %119, i32 0, i32 45
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %118
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 4
  %125 = load %struct.smb*, %struct.smb** %5, align 8
  %126 = getelementptr inbounds %struct.smb, %struct.smb* %125, i32 0, i32 46
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %129 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %128, i32 0, i32 44
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %127
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 4
  %134 = load %struct.smb*, %struct.smb** %5, align 8
  %135 = getelementptr inbounds %struct.smb, %struct.smb* %134, i32 0, i32 9
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %138 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %137, i32 0, i32 43
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %136
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 4
  %143 = load %struct.smb*, %struct.smb** %5, align 8
  %144 = getelementptr inbounds %struct.smb, %struct.smb* %143, i32 0, i32 8
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %147 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %146, i32 0, i32 42
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %145
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 4
  %152 = load %struct.smb*, %struct.smb** %5, align 8
  %153 = getelementptr inbounds %struct.smb, %struct.smb* %152, i32 0, i32 45
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %156 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %155, i32 0, i32 41
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 4
  %161 = load %struct.smb*, %struct.smb** %5, align 8
  %162 = getelementptr inbounds %struct.smb, %struct.smb* %161, i32 0, i32 7
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %165 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %164, i32 0, i32 40
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %163
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %165, align 4
  %170 = load %struct.smb*, %struct.smb** %5, align 8
  %171 = getelementptr inbounds %struct.smb, %struct.smb* %170, i32 0, i32 44
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %174 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %173, i32 0, i32 39
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %176, %172
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %174, align 4
  %179 = load %struct.smb*, %struct.smb** %5, align 8
  %180 = getelementptr inbounds %struct.smb, %struct.smb* %179, i32 0, i32 43
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %183 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %182, i32 0, i32 38
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %181
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %183, align 4
  %188 = load %struct.smb*, %struct.smb** %5, align 8
  %189 = getelementptr inbounds %struct.smb, %struct.smb* %188, i32 0, i32 42
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %192 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %191, i32 0, i32 37
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %190
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %192, align 4
  %197 = load %struct.smb*, %struct.smb** %5, align 8
  %198 = getelementptr inbounds %struct.smb, %struct.smb* %197, i32 0, i32 41
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %201 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %200, i32 0, i32 36
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %199
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %201, align 4
  %206 = load %struct.smb*, %struct.smb** %5, align 8
  %207 = getelementptr inbounds %struct.smb, %struct.smb* %206, i32 0, i32 40
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %210 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %209, i32 0, i32 35
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %208
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %210, align 4
  %215 = load %struct.smb*, %struct.smb** %5, align 8
  %216 = getelementptr inbounds %struct.smb, %struct.smb* %215, i32 0, i32 39
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %219 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %218, i32 0, i32 34
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %221, %217
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %219, align 4
  %224 = load %struct.smb*, %struct.smb** %5, align 8
  %225 = getelementptr inbounds %struct.smb, %struct.smb* %224, i32 0, i32 38
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %228 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %227, i32 0, i32 33
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %230, %226
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %228, align 4
  %233 = load %struct.smb*, %struct.smb** %5, align 8
  %234 = getelementptr inbounds %struct.smb, %struct.smb* %233, i32 0, i32 37
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %237 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %236, i32 0, i32 32
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %239, %235
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %237, align 4
  %242 = load %struct.smb*, %struct.smb** %5, align 8
  %243 = getelementptr inbounds %struct.smb, %struct.smb* %242, i32 0, i32 6
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %246 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %245, i32 0, i32 31
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %248, %244
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %246, align 4
  %251 = load %struct.smb*, %struct.smb** %5, align 8
  %252 = getelementptr inbounds %struct.smb, %struct.smb* %251, i32 0, i32 5
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %255 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %254, i32 0, i32 30
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %257, %253
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %255, align 4
  %260 = load %struct.smb*, %struct.smb** %5, align 8
  %261 = getelementptr inbounds %struct.smb, %struct.smb* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %264 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %263, i32 0, i32 29
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = add nsw i64 %266, %262
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %264, align 4
  %269 = load %struct.smb*, %struct.smb** %5, align 8
  %270 = getelementptr inbounds %struct.smb, %struct.smb* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %273 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %272, i32 0, i32 28
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %275, %271
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %273, align 4
  %278 = load %struct.smb*, %struct.smb** %5, align 8
  %279 = getelementptr inbounds %struct.smb, %struct.smb* %278, i32 0, i32 36
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %282 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %281, i32 0, i32 27
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = add nsw i64 %284, %280
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %282, align 4
  %287 = load %struct.smb*, %struct.smb** %5, align 8
  %288 = getelementptr inbounds %struct.smb, %struct.smb* %287, i32 0, i32 35
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %291 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %290, i32 0, i32 26
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %293, %289
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %291, align 4
  %296 = load %struct.smb*, %struct.smb** %5, align 8
  %297 = getelementptr inbounds %struct.smb, %struct.smb* %296, i32 0, i32 34
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %300 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %299, i32 0, i32 25
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = add nsw i64 %302, %298
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %300, align 4
  %305 = load %struct.smb*, %struct.smb** %5, align 8
  %306 = getelementptr inbounds %struct.smb, %struct.smb* %305, i32 0, i32 15
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %309 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %308, i32 0, i32 24
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %311, %307
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %309, align 4
  %314 = load %struct.smb*, %struct.smb** %5, align 8
  %315 = getelementptr inbounds %struct.smb, %struct.smb* %314, i32 0, i32 33
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %318 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %317, i32 0, i32 23
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %320, %316
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %318, align 4
  %323 = load %struct.smb*, %struct.smb** %5, align 8
  %324 = getelementptr inbounds %struct.smb, %struct.smb* %323, i32 0, i32 32
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %327 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %326, i32 0, i32 22
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %329, %325
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %327, align 4
  %332 = load %struct.smb*, %struct.smb** %5, align 8
  %333 = getelementptr inbounds %struct.smb, %struct.smb* %332, i32 0, i32 31
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %336 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %335, i32 0, i32 21
  %337 = load i32, i32* %336, align 4
  %338 = sext i32 %337 to i64
  %339 = add nsw i64 %338, %334
  %340 = trunc i64 %339 to i32
  store i32 %340, i32* %336, align 4
  %341 = load %struct.smb*, %struct.smb** %5, align 8
  %342 = getelementptr inbounds %struct.smb, %struct.smb* %341, i32 0, i32 30
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %345 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %344, i32 0, i32 20
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  %348 = add nsw i64 %347, %343
  %349 = trunc i64 %348 to i32
  store i32 %349, i32* %345, align 4
  %350 = load %struct.smb*, %struct.smb** %5, align 8
  %351 = getelementptr inbounds %struct.smb, %struct.smb* %350, i32 0, i32 29
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %354 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %353, i32 0, i32 19
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  %357 = add nsw i64 %356, %352
  %358 = trunc i64 %357 to i32
  store i32 %358, i32* %354, align 4
  %359 = load %struct.smb*, %struct.smb** %5, align 8
  %360 = getelementptr inbounds %struct.smb, %struct.smb* %359, i32 0, i32 28
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %363 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %362, i32 0, i32 18
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  %366 = add nsw i64 %365, %361
  %367 = trunc i64 %366 to i32
  store i32 %367, i32* %363, align 4
  %368 = load %struct.smb*, %struct.smb** %5, align 8
  %369 = getelementptr inbounds %struct.smb, %struct.smb* %368, i32 0, i32 27
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %372 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %371, i32 0, i32 17
  %373 = load i32, i32* %372, align 4
  %374 = sext i32 %373 to i64
  %375 = add nsw i64 %374, %370
  %376 = trunc i64 %375 to i32
  store i32 %376, i32* %372, align 4
  %377 = load %struct.smb*, %struct.smb** %5, align 8
  %378 = getelementptr inbounds %struct.smb, %struct.smb* %377, i32 0, i32 26
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %381 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %380, i32 0, i32 16
  %382 = load i32, i32* %381, align 4
  %383 = sext i32 %382 to i64
  %384 = add nsw i64 %383, %379
  %385 = trunc i64 %384 to i32
  store i32 %385, i32* %381, align 4
  %386 = load %struct.smb*, %struct.smb** %5, align 8
  %387 = getelementptr inbounds %struct.smb, %struct.smb* %386, i32 0, i32 25
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %390 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %389, i32 0, i32 15
  %391 = load i32, i32* %390, align 4
  %392 = sext i32 %391 to i64
  %393 = add nsw i64 %392, %388
  %394 = trunc i64 %393 to i32
  store i32 %394, i32* %390, align 4
  %395 = load %struct.smb*, %struct.smb** %5, align 8
  %396 = getelementptr inbounds %struct.smb, %struct.smb* %395, i32 0, i32 24
  %397 = load i64, i64* %396, align 8
  %398 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %399 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %398, i32 0, i32 14
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  %402 = add nsw i64 %401, %397
  %403 = trunc i64 %402 to i32
  store i32 %403, i32* %399, align 4
  %404 = load %struct.smb*, %struct.smb** %5, align 8
  %405 = getelementptr inbounds %struct.smb, %struct.smb* %404, i32 0, i32 23
  %406 = load i64, i64* %405, align 8
  %407 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %408 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %407, i32 0, i32 13
  %409 = load i32, i32* %408, align 4
  %410 = sext i32 %409 to i64
  %411 = add nsw i64 %410, %406
  %412 = trunc i64 %411 to i32
  store i32 %412, i32* %408, align 4
  %413 = load %struct.smb*, %struct.smb** %5, align 8
  %414 = getelementptr inbounds %struct.smb, %struct.smb* %413, i32 0, i32 22
  %415 = load i64, i64* %414, align 8
  %416 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %417 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %416, i32 0, i32 12
  %418 = load i32, i32* %417, align 4
  %419 = sext i32 %418 to i64
  %420 = add nsw i64 %419, %415
  %421 = trunc i64 %420 to i32
  store i32 %421, i32* %417, align 4
  %422 = load %struct.smb*, %struct.smb** %5, align 8
  %423 = getelementptr inbounds %struct.smb, %struct.smb* %422, i32 0, i32 21
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %426 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %425, i32 0, i32 11
  %427 = load i32, i32* %426, align 4
  %428 = sext i32 %427 to i64
  %429 = add nsw i64 %428, %424
  %430 = trunc i64 %429 to i32
  store i32 %430, i32* %426, align 4
  %431 = load %struct.smb*, %struct.smb** %5, align 8
  %432 = getelementptr inbounds %struct.smb, %struct.smb* %431, i32 0, i32 20
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %435 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %434, i32 0, i32 10
  %436 = load i32, i32* %435, align 4
  %437 = sext i32 %436 to i64
  %438 = add nsw i64 %437, %433
  %439 = trunc i64 %438 to i32
  store i32 %439, i32* %435, align 4
  %440 = load %struct.smb*, %struct.smb** %5, align 8
  %441 = getelementptr inbounds %struct.smb, %struct.smb* %440, i32 0, i32 14
  %442 = load i64, i64* %441, align 8
  %443 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %444 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %443, i32 0, i32 9
  %445 = load i32, i32* %444, align 4
  %446 = sext i32 %445 to i64
  %447 = add nsw i64 %446, %442
  %448 = trunc i64 %447 to i32
  store i32 %448, i32* %444, align 4
  %449 = load %struct.smb*, %struct.smb** %5, align 8
  %450 = getelementptr inbounds %struct.smb, %struct.smb* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 8
  %452 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %453 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = add nsw i32 %454, %451
  store i32 %455, i32* %453, align 4
  %456 = load %struct.smb*, %struct.smb** %5, align 8
  %457 = getelementptr inbounds %struct.smb, %struct.smb* %456, i32 0, i32 13
  %458 = load i64, i64* %457, align 8
  %459 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %460 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %459, i32 0, i32 8
  %461 = load i32, i32* %460, align 4
  %462 = sext i32 %461 to i64
  %463 = add nsw i64 %462, %458
  %464 = trunc i64 %463 to i32
  store i32 %464, i32* %460, align 4
  %465 = load %struct.smb*, %struct.smb** %5, align 8
  %466 = getelementptr inbounds %struct.smb, %struct.smb* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 4
  %468 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %469 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = add nsw i32 %470, %467
  store i32 %471, i32* %469, align 4
  %472 = load %struct.smb*, %struct.smb** %5, align 8
  %473 = getelementptr inbounds %struct.smb, %struct.smb* %472, i32 0, i32 12
  %474 = load i64, i64* %473, align 8
  %475 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %476 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %475, i32 0, i32 7
  %477 = load i32, i32* %476, align 4
  %478 = sext i32 %477 to i64
  %479 = add nsw i64 %478, %474
  %480 = trunc i64 %479 to i32
  store i32 %480, i32* %476, align 4
  %481 = load %struct.smb*, %struct.smb** %5, align 8
  %482 = getelementptr inbounds %struct.smb, %struct.smb* %481, i32 0, i32 19
  %483 = load i64, i64* %482, align 8
  %484 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %485 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %484, i32 0, i32 6
  %486 = load i32, i32* %485, align 4
  %487 = sext i32 %486 to i64
  %488 = add nsw i64 %487, %483
  %489 = trunc i64 %488 to i32
  store i32 %489, i32* %485, align 4
  %490 = load %struct.smb*, %struct.smb** %5, align 8
  %491 = getelementptr inbounds %struct.smb, %struct.smb* %490, i32 0, i32 18
  %492 = load i64, i64* %491, align 8
  %493 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %494 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %493, i32 0, i32 5
  %495 = load i32, i32* %494, align 4
  %496 = sext i32 %495 to i64
  %497 = add nsw i64 %496, %492
  %498 = trunc i64 %497 to i32
  store i32 %498, i32* %494, align 4
  %499 = load %struct.smb*, %struct.smb** %5, align 8
  %500 = getelementptr inbounds %struct.smb, %struct.smb* %499, i32 0, i32 11
  %501 = load i64, i64* %500, align 8
  %502 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %503 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %502, i32 0, i32 4
  %504 = load i32, i32* %503, align 4
  %505 = sext i32 %504 to i64
  %506 = add nsw i64 %505, %501
  %507 = trunc i64 %506 to i32
  store i32 %507, i32* %503, align 4
  %508 = load %struct.smb*, %struct.smb** %5, align 8
  %509 = getelementptr inbounds %struct.smb, %struct.smb* %508, i32 0, i32 17
  %510 = load i64, i64* %509, align 8
  %511 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %512 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %511, i32 0, i32 3
  %513 = load i32, i32* %512, align 4
  %514 = sext i32 %513 to i64
  %515 = add nsw i64 %514, %510
  %516 = trunc i64 %515 to i32
  store i32 %516, i32* %512, align 4
  %517 = load %struct.smb*, %struct.smb** %5, align 8
  %518 = getelementptr inbounds %struct.smb, %struct.smb* %517, i32 0, i32 16
  %519 = load i64, i64* %518, align 8
  %520 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %3, align 8
  %521 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %520, i32 0, i32 2
  %522 = load i32, i32* %521, align 4
  %523 = sext i32 %522 to i64
  %524 = add nsw i64 %523, %519
  %525 = trunc i64 %524 to i32
  store i32 %525, i32* %521, align 4
  %526 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %527 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %528 = load %struct.smb*, %struct.smb** %5, align 8
  %529 = getelementptr inbounds %struct.smb, %struct.smb* %528, i32 0, i32 15
  %530 = load i64, i64* %529, align 8
  %531 = call i32 @if_inc_counter(%struct.ifnet* %526, i32 %527, i64 %530)
  %532 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %533 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %534 = load %struct.smb*, %struct.smb** %5, align 8
  %535 = getelementptr inbounds %struct.smb, %struct.smb* %534, i32 0, i32 14
  %536 = load i64, i64* %535, align 8
  %537 = load %struct.smb*, %struct.smb** %5, align 8
  %538 = getelementptr inbounds %struct.smb, %struct.smb* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 8
  %540 = mul nsw i32 %539, 2
  %541 = sext i32 %540 to i64
  %542 = add nsw i64 %536, %541
  %543 = load %struct.smb*, %struct.smb** %5, align 8
  %544 = getelementptr inbounds %struct.smb, %struct.smb* %543, i32 0, i32 13
  %545 = load i64, i64* %544, align 8
  %546 = add nsw i64 %542, %545
  %547 = load %struct.smb*, %struct.smb** %5, align 8
  %548 = getelementptr inbounds %struct.smb, %struct.smb* %547, i32 0, i32 2
  %549 = load i32, i32* %548, align 4
  %550 = load i32, i32* @HDPX_CFG_RETRY_DEFAULT, align 4
  %551 = mul nsw i32 %549, %550
  %552 = sext i32 %551 to i64
  %553 = add nsw i64 %546, %552
  %554 = call i32 @if_inc_counter(%struct.ifnet* %532, i32 %533, i64 %553)
  %555 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %556 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %557 = load %struct.smb*, %struct.smb** %5, align 8
  %558 = getelementptr inbounds %struct.smb, %struct.smb* %557, i32 0, i32 13
  %559 = load i64, i64* %558, align 8
  %560 = load %struct.smb*, %struct.smb** %5, align 8
  %561 = getelementptr inbounds %struct.smb, %struct.smb* %560, i32 0, i32 2
  %562 = load i32, i32* %561, align 4
  %563 = sext i32 %562 to i64
  %564 = add nsw i64 %559, %563
  %565 = load %struct.smb*, %struct.smb** %5, align 8
  %566 = getelementptr inbounds %struct.smb, %struct.smb* %565, i32 0, i32 12
  %567 = load i64, i64* %566, align 8
  %568 = add nsw i64 %564, %567
  %569 = load %struct.smb*, %struct.smb** %5, align 8
  %570 = getelementptr inbounds %struct.smb, %struct.smb* %569, i32 0, i32 11
  %571 = load i64, i64* %570, align 8
  %572 = add nsw i64 %568, %571
  %573 = call i32 @if_inc_counter(%struct.ifnet* %555, i32 %556, i64 %572)
  %574 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %575 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %576 = load %struct.smb*, %struct.smb** %5, align 8
  %577 = getelementptr inbounds %struct.smb, %struct.smb* %576, i32 0, i32 10
  %578 = load i64, i64* %577, align 8
  %579 = call i32 @if_inc_counter(%struct.ifnet* %574, i32 %575, i64 %578)
  %580 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %581 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %582 = load %struct.smb*, %struct.smb** %5, align 8
  %583 = getelementptr inbounds %struct.smb, %struct.smb* %582, i32 0, i32 9
  %584 = load i64, i64* %583, align 8
  %585 = load %struct.smb*, %struct.smb** %5, align 8
  %586 = getelementptr inbounds %struct.smb, %struct.smb* %585, i32 0, i32 8
  %587 = load i64, i64* %586, align 8
  %588 = add nsw i64 %584, %587
  %589 = load %struct.smb*, %struct.smb** %5, align 8
  %590 = getelementptr inbounds %struct.smb, %struct.smb* %589, i32 0, i32 7
  %591 = load i64, i64* %590, align 8
  %592 = add nsw i64 %588, %591
  %593 = load %struct.smb*, %struct.smb** %5, align 8
  %594 = getelementptr inbounds %struct.smb, %struct.smb* %593, i32 0, i32 6
  %595 = load i64, i64* %594, align 8
  %596 = add nsw i64 %592, %595
  %597 = load %struct.smb*, %struct.smb** %5, align 8
  %598 = getelementptr inbounds %struct.smb, %struct.smb* %597, i32 0, i32 5
  %599 = load i64, i64* %598, align 8
  %600 = add nsw i64 %596, %599
  %601 = load %struct.smb*, %struct.smb** %5, align 8
  %602 = getelementptr inbounds %struct.smb, %struct.smb* %601, i32 0, i32 4
  %603 = load i64, i64* %602, align 8
  %604 = add nsw i64 %600, %603
  %605 = load %struct.smb*, %struct.smb** %5, align 8
  %606 = getelementptr inbounds %struct.smb, %struct.smb* %605, i32 0, i32 3
  %607 = load i64, i64* %606, align 8
  %608 = add nsw i64 %604, %607
  %609 = call i32 @if_inc_counter(%struct.ifnet* %580, i32 %581, i64 %608)
  %610 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %611 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  %613 = load i32, i32* @ALC_FLAG_SMB_BUG, align 4
  %614 = and i32 %612, %613
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %631

616:                                              ; preds = %88
  %617 = load %struct.smb*, %struct.smb** %5, align 8
  %618 = getelementptr inbounds %struct.smb, %struct.smb* %617, i32 0, i32 0
  store i64 0, i64* %618, align 8
  %619 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %620 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %619, i32 0, i32 1
  %621 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %620, i32 0, i32 1
  %622 = load i32, i32* %621, align 4
  %623 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %624 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %623, i32 0, i32 1
  %625 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %624, i32 0, i32 0
  %626 = load i32, i32* %625, align 4
  %627 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %628 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %629 = or i32 %627, %628
  %630 = call i32 @bus_dmamap_sync(i32 %622, i32 %626, i32 %629)
  br label %631

631:                                              ; preds = %43, %616, %88
  ret void
}

declare dso_local i32 @ALC_LOCK_ASSERT(%struct.alc_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @CSR_READ_4(%struct.alc_softc*, i64) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
