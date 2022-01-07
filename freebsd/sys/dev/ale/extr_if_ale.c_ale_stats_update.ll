; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { %struct.ale_hw_stats, %struct.ifnet* }
%struct.ale_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32 }
%struct.smb = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@ALE_RX_MIB_BASE = common dso_local global i64 0, align 8
@ALE_TX_MIB_BASE = common dso_local global i64 0, align 8
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@HDPX_CFG_RETRY_DEFAULT = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ale_softc*)* @ale_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_stats_update(%struct.ale_softc* %0) #0 {
  %2 = alloca %struct.ale_softc*, align 8
  %3 = alloca %struct.ale_hw_stats*, align 8
  %4 = alloca %struct.smb, align 8
  %5 = alloca %struct.smb*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.ale_softc* %0, %struct.ale_softc** %2, align 8
  %9 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %10 = call i32 @ALE_LOCK_ASSERT(%struct.ale_softc* %9)
  %11 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %11, i32 0, i32 1
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %6, align 8
  %14 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %14, i32 0, i32 0
  store %struct.ale_hw_stats* %15, %struct.ale_hw_stats** %3, align 8
  store %struct.smb* %4, %struct.smb** %5, align 8
  %16 = getelementptr inbounds %struct.smb, %struct.smb* %4, i32 0, i32 9
  store i64* %16, i64** %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %33, %1
  %18 = load i64*, i64** %7, align 8
  %19 = getelementptr inbounds %struct.smb, %struct.smb* %4, i32 0, i32 33
  %20 = icmp ule i64* %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %23 = load i64, i64* @ALE_RX_MIB_BASE, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i64 @CSR_READ_4(%struct.ale_softc* %22, i64 %26)
  %28 = load i64*, i64** %7, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %21
  %34 = load i64*, i64** %7, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %7, align 8
  br label %17

36:                                               ; preds = %17
  %37 = getelementptr inbounds %struct.smb, %struct.smb* %4, i32 0, i32 14
  store i64* %37, i64** %7, align 8
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %54, %36
  %39 = load i64*, i64** %7, align 8
  %40 = getelementptr inbounds %struct.smb, %struct.smb* %4, i32 0, i32 15
  %41 = icmp ule i64* %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %44 = load i64, i64* @ALE_TX_MIB_BASE, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = call i64 @CSR_READ_4(%struct.ale_softc* %43, i64 %47)
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %42
  %55 = load i64*, i64** %7, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %7, align 8
  br label %38

57:                                               ; preds = %38
  %58 = load %struct.smb*, %struct.smb** %5, align 8
  %59 = getelementptr inbounds %struct.smb, %struct.smb* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %62 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %61, i32 0, i32 48
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load %struct.smb*, %struct.smb** %5, align 8
  %68 = getelementptr inbounds %struct.smb, %struct.smb* %67, i32 0, i32 48
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %71 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %70, i32 0, i32 47
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %69
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 4
  %76 = load %struct.smb*, %struct.smb** %5, align 8
  %77 = getelementptr inbounds %struct.smb, %struct.smb* %76, i32 0, i32 47
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %80 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %79, i32 0, i32 46
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %78
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  %85 = load %struct.smb*, %struct.smb** %5, align 8
  %86 = getelementptr inbounds %struct.smb, %struct.smb* %85, i32 0, i32 46
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %89 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %88, i32 0, i32 45
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %87
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 4
  %94 = load %struct.smb*, %struct.smb** %5, align 8
  %95 = getelementptr inbounds %struct.smb, %struct.smb* %94, i32 0, i32 45
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %98 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %97, i32 0, i32 44
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = load %struct.smb*, %struct.smb** %5, align 8
  %104 = getelementptr inbounds %struct.smb, %struct.smb* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %107 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %106, i32 0, i32 43
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %105
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 4
  %112 = load %struct.smb*, %struct.smb** %5, align 8
  %113 = getelementptr inbounds %struct.smb, %struct.smb* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %116 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %115, i32 0, i32 42
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %114
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  %121 = load %struct.smb*, %struct.smb** %5, align 8
  %122 = getelementptr inbounds %struct.smb, %struct.smb* %121, i32 0, i32 44
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %125 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %124, i32 0, i32 41
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %123
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 4
  %130 = load %struct.smb*, %struct.smb** %5, align 8
  %131 = getelementptr inbounds %struct.smb, %struct.smb* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %134 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %133, i32 0, i32 40
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %132
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %134, align 4
  %139 = load %struct.smb*, %struct.smb** %5, align 8
  %140 = getelementptr inbounds %struct.smb, %struct.smb* %139, i32 0, i32 43
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %143 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %142, i32 0, i32 39
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %141
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 4
  %148 = load %struct.smb*, %struct.smb** %5, align 8
  %149 = getelementptr inbounds %struct.smb, %struct.smb* %148, i32 0, i32 42
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %152 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %151, i32 0, i32 38
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %150
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %152, align 4
  %157 = load %struct.smb*, %struct.smb** %5, align 8
  %158 = getelementptr inbounds %struct.smb, %struct.smb* %157, i32 0, i32 41
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %161 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %160, i32 0, i32 37
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %159
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %161, align 4
  %166 = load %struct.smb*, %struct.smb** %5, align 8
  %167 = getelementptr inbounds %struct.smb, %struct.smb* %166, i32 0, i32 40
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %170 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %169, i32 0, i32 36
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %168
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %170, align 4
  %175 = load %struct.smb*, %struct.smb** %5, align 8
  %176 = getelementptr inbounds %struct.smb, %struct.smb* %175, i32 0, i32 39
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %179 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %178, i32 0, i32 35
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %177
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %179, align 4
  %184 = load %struct.smb*, %struct.smb** %5, align 8
  %185 = getelementptr inbounds %struct.smb, %struct.smb* %184, i32 0, i32 38
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %188 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %187, i32 0, i32 34
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %186
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %188, align 4
  %193 = load %struct.smb*, %struct.smb** %5, align 8
  %194 = getelementptr inbounds %struct.smb, %struct.smb* %193, i32 0, i32 37
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %197 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %196, i32 0, i32 33
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %195
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %197, align 4
  %202 = load %struct.smb*, %struct.smb** %5, align 8
  %203 = getelementptr inbounds %struct.smb, %struct.smb* %202, i32 0, i32 36
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %206 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %205, i32 0, i32 32
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %208, %204
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %206, align 4
  %211 = load %struct.smb*, %struct.smb** %5, align 8
  %212 = getelementptr inbounds %struct.smb, %struct.smb* %211, i32 0, i32 5
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %215 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %214, i32 0, i32 31
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %217, %213
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %215, align 4
  %220 = load %struct.smb*, %struct.smb** %5, align 8
  %221 = getelementptr inbounds %struct.smb, %struct.smb* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %224 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %223, i32 0, i32 30
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %226, %222
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %224, align 4
  %229 = load %struct.smb*, %struct.smb** %5, align 8
  %230 = getelementptr inbounds %struct.smb, %struct.smb* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %233 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %232, i32 0, i32 29
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %235, %231
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %233, align 4
  %238 = load %struct.smb*, %struct.smb** %5, align 8
  %239 = getelementptr inbounds %struct.smb, %struct.smb* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %242 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %241, i32 0, i32 28
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %244, %240
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %242, align 4
  %247 = load %struct.smb*, %struct.smb** %5, align 8
  %248 = getelementptr inbounds %struct.smb, %struct.smb* %247, i32 0, i32 35
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %251 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %250, i32 0, i32 27
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %253, %249
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %251, align 4
  %256 = load %struct.smb*, %struct.smb** %5, align 8
  %257 = getelementptr inbounds %struct.smb, %struct.smb* %256, i32 0, i32 34
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %260 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %259, i32 0, i32 26
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %262, %258
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %260, align 4
  %265 = load %struct.smb*, %struct.smb** %5, align 8
  %266 = getelementptr inbounds %struct.smb, %struct.smb* %265, i32 0, i32 33
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %269 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %268, i32 0, i32 25
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %271, %267
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %269, align 4
  %274 = load %struct.smb*, %struct.smb** %5, align 8
  %275 = getelementptr inbounds %struct.smb, %struct.smb* %274, i32 0, i32 14
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %278 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %277, i32 0, i32 24
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %280, %276
  %282 = trunc i64 %281 to i32
  store i32 %282, i32* %278, align 4
  %283 = load %struct.smb*, %struct.smb** %5, align 8
  %284 = getelementptr inbounds %struct.smb, %struct.smb* %283, i32 0, i32 32
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %287 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %286, i32 0, i32 23
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  %290 = add nsw i64 %289, %285
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %287, align 4
  %292 = load %struct.smb*, %struct.smb** %5, align 8
  %293 = getelementptr inbounds %struct.smb, %struct.smb* %292, i32 0, i32 31
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %296 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %295, i32 0, i32 22
  %297 = load i32, i32* %296, align 4
  %298 = sext i32 %297 to i64
  %299 = add nsw i64 %298, %294
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %296, align 4
  %301 = load %struct.smb*, %struct.smb** %5, align 8
  %302 = getelementptr inbounds %struct.smb, %struct.smb* %301, i32 0, i32 30
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %305 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %304, i32 0, i32 21
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  %308 = add nsw i64 %307, %303
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %305, align 4
  %310 = load %struct.smb*, %struct.smb** %5, align 8
  %311 = getelementptr inbounds %struct.smb, %struct.smb* %310, i32 0, i32 29
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %314 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %313, i32 0, i32 20
  %315 = load i32, i32* %314, align 4
  %316 = sext i32 %315 to i64
  %317 = add nsw i64 %316, %312
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* %314, align 4
  %319 = load %struct.smb*, %struct.smb** %5, align 8
  %320 = getelementptr inbounds %struct.smb, %struct.smb* %319, i32 0, i32 28
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %323 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %322, i32 0, i32 19
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = add nsw i64 %325, %321
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %323, align 4
  %328 = load %struct.smb*, %struct.smb** %5, align 8
  %329 = getelementptr inbounds %struct.smb, %struct.smb* %328, i32 0, i32 27
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %332 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %331, i32 0, i32 18
  %333 = load i32, i32* %332, align 4
  %334 = sext i32 %333 to i64
  %335 = add nsw i64 %334, %330
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %332, align 4
  %337 = load %struct.smb*, %struct.smb** %5, align 8
  %338 = getelementptr inbounds %struct.smb, %struct.smb* %337, i32 0, i32 26
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %341 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %340, i32 0, i32 17
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %342 to i64
  %344 = add nsw i64 %343, %339
  %345 = trunc i64 %344 to i32
  store i32 %345, i32* %341, align 4
  %346 = load %struct.smb*, %struct.smb** %5, align 8
  %347 = getelementptr inbounds %struct.smb, %struct.smb* %346, i32 0, i32 25
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %350 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %349, i32 0, i32 16
  %351 = load i32, i32* %350, align 4
  %352 = sext i32 %351 to i64
  %353 = add nsw i64 %352, %348
  %354 = trunc i64 %353 to i32
  store i32 %354, i32* %350, align 4
  %355 = load %struct.smb*, %struct.smb** %5, align 8
  %356 = getelementptr inbounds %struct.smb, %struct.smb* %355, i32 0, i32 24
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %359 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %358, i32 0, i32 15
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  %362 = add nsw i64 %361, %357
  %363 = trunc i64 %362 to i32
  store i32 %363, i32* %359, align 4
  %364 = load %struct.smb*, %struct.smb** %5, align 8
  %365 = getelementptr inbounds %struct.smb, %struct.smb* %364, i32 0, i32 23
  %366 = load i64, i64* %365, align 8
  %367 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %368 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %367, i32 0, i32 14
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = add nsw i64 %370, %366
  %372 = trunc i64 %371 to i32
  store i32 %372, i32* %368, align 4
  %373 = load %struct.smb*, %struct.smb** %5, align 8
  %374 = getelementptr inbounds %struct.smb, %struct.smb* %373, i32 0, i32 22
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %377 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %376, i32 0, i32 13
  %378 = load i32, i32* %377, align 4
  %379 = sext i32 %378 to i64
  %380 = add nsw i64 %379, %375
  %381 = trunc i64 %380 to i32
  store i32 %381, i32* %377, align 4
  %382 = load %struct.smb*, %struct.smb** %5, align 8
  %383 = getelementptr inbounds %struct.smb, %struct.smb* %382, i32 0, i32 21
  %384 = load i64, i64* %383, align 8
  %385 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %386 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %385, i32 0, i32 12
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  %389 = add nsw i64 %388, %384
  %390 = trunc i64 %389 to i32
  store i32 %390, i32* %386, align 4
  %391 = load %struct.smb*, %struct.smb** %5, align 8
  %392 = getelementptr inbounds %struct.smb, %struct.smb* %391, i32 0, i32 20
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %395 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %394, i32 0, i32 11
  %396 = load i32, i32* %395, align 4
  %397 = sext i32 %396 to i64
  %398 = add nsw i64 %397, %393
  %399 = trunc i64 %398 to i32
  store i32 %399, i32* %395, align 4
  %400 = load %struct.smb*, %struct.smb** %5, align 8
  %401 = getelementptr inbounds %struct.smb, %struct.smb* %400, i32 0, i32 19
  %402 = load i64, i64* %401, align 8
  %403 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %404 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %403, i32 0, i32 10
  %405 = load i32, i32* %404, align 4
  %406 = sext i32 %405 to i64
  %407 = add nsw i64 %406, %402
  %408 = trunc i64 %407 to i32
  store i32 %408, i32* %404, align 4
  %409 = load %struct.smb*, %struct.smb** %5, align 8
  %410 = getelementptr inbounds %struct.smb, %struct.smb* %409, i32 0, i32 13
  %411 = load i64, i64* %410, align 8
  %412 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %413 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %412, i32 0, i32 9
  %414 = load i32, i32* %413, align 4
  %415 = sext i32 %414 to i64
  %416 = add nsw i64 %415, %411
  %417 = trunc i64 %416 to i32
  store i32 %417, i32* %413, align 4
  %418 = load %struct.smb*, %struct.smb** %5, align 8
  %419 = getelementptr inbounds %struct.smb, %struct.smb* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %422 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = add nsw i32 %423, %420
  store i32 %424, i32* %422, align 4
  %425 = load %struct.smb*, %struct.smb** %5, align 8
  %426 = getelementptr inbounds %struct.smb, %struct.smb* %425, i32 0, i32 12
  %427 = load i64, i64* %426, align 8
  %428 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %429 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %428, i32 0, i32 8
  %430 = load i32, i32* %429, align 4
  %431 = sext i32 %430 to i64
  %432 = add nsw i64 %431, %427
  %433 = trunc i64 %432 to i32
  store i32 %433, i32* %429, align 4
  %434 = load %struct.smb*, %struct.smb** %5, align 8
  %435 = getelementptr inbounds %struct.smb, %struct.smb* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %438 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = add nsw i32 %439, %436
  store i32 %440, i32* %438, align 4
  %441 = load %struct.smb*, %struct.smb** %5, align 8
  %442 = getelementptr inbounds %struct.smb, %struct.smb* %441, i32 0, i32 11
  %443 = load i64, i64* %442, align 8
  %444 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %445 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %444, i32 0, i32 7
  %446 = load i32, i32* %445, align 4
  %447 = sext i32 %446 to i64
  %448 = add nsw i64 %447, %443
  %449 = trunc i64 %448 to i32
  store i32 %449, i32* %445, align 4
  %450 = load %struct.smb*, %struct.smb** %5, align 8
  %451 = getelementptr inbounds %struct.smb, %struct.smb* %450, i32 0, i32 18
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %454 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %453, i32 0, i32 6
  %455 = load i32, i32* %454, align 4
  %456 = sext i32 %455 to i64
  %457 = add nsw i64 %456, %452
  %458 = trunc i64 %457 to i32
  store i32 %458, i32* %454, align 4
  %459 = load %struct.smb*, %struct.smb** %5, align 8
  %460 = getelementptr inbounds %struct.smb, %struct.smb* %459, i32 0, i32 17
  %461 = load i64, i64* %460, align 8
  %462 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %463 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %462, i32 0, i32 5
  %464 = load i32, i32* %463, align 4
  %465 = sext i32 %464 to i64
  %466 = add nsw i64 %465, %461
  %467 = trunc i64 %466 to i32
  store i32 %467, i32* %463, align 4
  %468 = load %struct.smb*, %struct.smb** %5, align 8
  %469 = getelementptr inbounds %struct.smb, %struct.smb* %468, i32 0, i32 10
  %470 = load i64, i64* %469, align 8
  %471 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %472 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %471, i32 0, i32 4
  %473 = load i32, i32* %472, align 4
  %474 = sext i32 %473 to i64
  %475 = add nsw i64 %474, %470
  %476 = trunc i64 %475 to i32
  store i32 %476, i32* %472, align 4
  %477 = load %struct.smb*, %struct.smb** %5, align 8
  %478 = getelementptr inbounds %struct.smb, %struct.smb* %477, i32 0, i32 16
  %479 = load i64, i64* %478, align 8
  %480 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %481 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %480, i32 0, i32 3
  %482 = load i32, i32* %481, align 4
  %483 = sext i32 %482 to i64
  %484 = add nsw i64 %483, %479
  %485 = trunc i64 %484 to i32
  store i32 %485, i32* %481, align 4
  %486 = load %struct.smb*, %struct.smb** %5, align 8
  %487 = getelementptr inbounds %struct.smb, %struct.smb* %486, i32 0, i32 15
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.ale_hw_stats*, %struct.ale_hw_stats** %3, align 8
  %490 = getelementptr inbounds %struct.ale_hw_stats, %struct.ale_hw_stats* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 4
  %492 = sext i32 %491 to i64
  %493 = add nsw i64 %492, %488
  %494 = trunc i64 %493 to i32
  store i32 %494, i32* %490, align 4
  %495 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %496 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %497 = load %struct.smb*, %struct.smb** %5, align 8
  %498 = getelementptr inbounds %struct.smb, %struct.smb* %497, i32 0, i32 14
  %499 = load i64, i64* %498, align 8
  %500 = call i32 @if_inc_counter(%struct.ifnet* %495, i32 %496, i64 %499)
  %501 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %502 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %503 = load %struct.smb*, %struct.smb** %5, align 8
  %504 = getelementptr inbounds %struct.smb, %struct.smb* %503, i32 0, i32 13
  %505 = load i64, i64* %504, align 8
  %506 = load %struct.smb*, %struct.smb** %5, align 8
  %507 = getelementptr inbounds %struct.smb, %struct.smb* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = mul nsw i32 %508, 2
  %510 = sext i32 %509 to i64
  %511 = add nsw i64 %505, %510
  %512 = load %struct.smb*, %struct.smb** %5, align 8
  %513 = getelementptr inbounds %struct.smb, %struct.smb* %512, i32 0, i32 12
  %514 = load i64, i64* %513, align 8
  %515 = add nsw i64 %511, %514
  %516 = load %struct.smb*, %struct.smb** %5, align 8
  %517 = getelementptr inbounds %struct.smb, %struct.smb* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 4
  %519 = load i32, i32* @HDPX_CFG_RETRY_DEFAULT, align 4
  %520 = mul nsw i32 %518, %519
  %521 = sext i32 %520 to i64
  %522 = add nsw i64 %515, %521
  %523 = call i32 @if_inc_counter(%struct.ifnet* %501, i32 %502, i64 %522)
  %524 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %525 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %526 = load %struct.smb*, %struct.smb** %5, align 8
  %527 = getelementptr inbounds %struct.smb, %struct.smb* %526, i32 0, i32 12
  %528 = load i64, i64* %527, align 8
  %529 = load %struct.smb*, %struct.smb** %5, align 8
  %530 = getelementptr inbounds %struct.smb, %struct.smb* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = sext i32 %531 to i64
  %533 = add nsw i64 %528, %532
  %534 = load %struct.smb*, %struct.smb** %5, align 8
  %535 = getelementptr inbounds %struct.smb, %struct.smb* %534, i32 0, i32 11
  %536 = load i64, i64* %535, align 8
  %537 = add nsw i64 %533, %536
  %538 = load %struct.smb*, %struct.smb** %5, align 8
  %539 = getelementptr inbounds %struct.smb, %struct.smb* %538, i32 0, i32 10
  %540 = load i64, i64* %539, align 8
  %541 = add nsw i64 %537, %540
  %542 = call i32 @if_inc_counter(%struct.ifnet* %524, i32 %525, i64 %541)
  %543 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %544 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %545 = load %struct.smb*, %struct.smb** %5, align 8
  %546 = getelementptr inbounds %struct.smb, %struct.smb* %545, i32 0, i32 9
  %547 = load i64, i64* %546, align 8
  %548 = call i32 @if_inc_counter(%struct.ifnet* %543, i32 %544, i64 %547)
  %549 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %550 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %551 = load %struct.smb*, %struct.smb** %5, align 8
  %552 = getelementptr inbounds %struct.smb, %struct.smb* %551, i32 0, i32 8
  %553 = load i64, i64* %552, align 8
  %554 = load %struct.smb*, %struct.smb** %5, align 8
  %555 = getelementptr inbounds %struct.smb, %struct.smb* %554, i32 0, i32 7
  %556 = load i64, i64* %555, align 8
  %557 = add nsw i64 %553, %556
  %558 = load %struct.smb*, %struct.smb** %5, align 8
  %559 = getelementptr inbounds %struct.smb, %struct.smb* %558, i32 0, i32 6
  %560 = load i64, i64* %559, align 8
  %561 = add nsw i64 %557, %560
  %562 = load %struct.smb*, %struct.smb** %5, align 8
  %563 = getelementptr inbounds %struct.smb, %struct.smb* %562, i32 0, i32 5
  %564 = load i64, i64* %563, align 8
  %565 = add nsw i64 %561, %564
  %566 = load %struct.smb*, %struct.smb** %5, align 8
  %567 = getelementptr inbounds %struct.smb, %struct.smb* %566, i32 0, i32 4
  %568 = load i64, i64* %567, align 8
  %569 = add nsw i64 %565, %568
  %570 = load %struct.smb*, %struct.smb** %5, align 8
  %571 = getelementptr inbounds %struct.smb, %struct.smb* %570, i32 0, i32 3
  %572 = load i64, i64* %571, align 8
  %573 = add nsw i64 %569, %572
  %574 = load %struct.smb*, %struct.smb** %5, align 8
  %575 = getelementptr inbounds %struct.smb, %struct.smb* %574, i32 0, i32 2
  %576 = load i64, i64* %575, align 8
  %577 = add nsw i64 %573, %576
  %578 = call i32 @if_inc_counter(%struct.ifnet* %549, i32 %550, i64 %577)
  ret void
}

declare dso_local i32 @ALE_LOCK_ASSERT(%struct.ale_softc*) #1

declare dso_local i64 @CSR_READ_4(%struct.ale_softc*, i64) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
