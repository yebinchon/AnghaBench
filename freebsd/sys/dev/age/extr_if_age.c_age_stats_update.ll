; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { %struct.TYPE_3__, %struct.ifnet*, %struct.TYPE_4__, %struct.age_stats }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ifnet = type { i32 }
%struct.TYPE_4__ = type { %struct.smb* }
%struct.smb = type { i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.age_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@HDPX_CFG_RETRY_DEFAULT = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.age_softc*)* @age_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_stats_update(%struct.age_softc* %0) #0 {
  %2 = alloca %struct.age_softc*, align 8
  %3 = alloca %struct.age_stats*, align 8
  %4 = alloca %struct.smb*, align 8
  %5 = alloca %struct.ifnet*, align 8
  store %struct.age_softc* %0, %struct.age_softc** %2, align 8
  %6 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %7 = call i32 @AGE_LOCK_ASSERT(%struct.age_softc* %6)
  %8 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %9 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %8, i32 0, i32 3
  store %struct.age_stats* %9, %struct.age_stats** %3, align 8
  %10 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %11 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %15 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %19 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @bus_dmamap_sync(i32 %13, i32 %17, i32 %20)
  %22 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %23 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.smb*, %struct.smb** %24, align 8
  store %struct.smb* %25, %struct.smb** %4, align 8
  %26 = load %struct.smb*, %struct.smb** %4, align 8
  %27 = getelementptr inbounds %struct.smb, %struct.smb* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %570

31:                                               ; preds = %1
  %32 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %33 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %32, i32 0, i32 1
  %34 = load %struct.ifnet*, %struct.ifnet** %33, align 8
  store %struct.ifnet* %34, %struct.ifnet** %5, align 8
  %35 = load %struct.smb*, %struct.smb** %4, align 8
  %36 = getelementptr inbounds %struct.smb, %struct.smb* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %39 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %38, i32 0, i32 48
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  %44 = load %struct.smb*, %struct.smb** %4, align 8
  %45 = getelementptr inbounds %struct.smb, %struct.smb* %44, i32 0, i32 49
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %48 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %47, i32 0, i32 47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load %struct.smb*, %struct.smb** %4, align 8
  %54 = getelementptr inbounds %struct.smb, %struct.smb* %53, i32 0, i32 48
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %57 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %56, i32 0, i32 46
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  %62 = load %struct.smb*, %struct.smb** %4, align 8
  %63 = getelementptr inbounds %struct.smb, %struct.smb* %62, i32 0, i32 47
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %66 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %65, i32 0, i32 45
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %64
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  %71 = load %struct.smb*, %struct.smb** %4, align 8
  %72 = getelementptr inbounds %struct.smb, %struct.smb* %71, i32 0, i32 46
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %75 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %74, i32 0, i32 44
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load %struct.smb*, %struct.smb** %4, align 8
  %81 = getelementptr inbounds %struct.smb, %struct.smb* %80, i32 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %84 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %83, i32 0, i32 43
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %82
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  %89 = load %struct.smb*, %struct.smb** %4, align 8
  %90 = getelementptr inbounds %struct.smb, %struct.smb* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %93 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %92, i32 0, i32 42
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %91
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  %98 = load %struct.smb*, %struct.smb** %4, align 8
  %99 = getelementptr inbounds %struct.smb, %struct.smb* %98, i32 0, i32 45
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %102 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %101, i32 0, i32 41
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  %107 = load %struct.smb*, %struct.smb** %4, align 8
  %108 = getelementptr inbounds %struct.smb, %struct.smb* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %111 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %110, i32 0, i32 40
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %109
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  %116 = load %struct.smb*, %struct.smb** %4, align 8
  %117 = getelementptr inbounds %struct.smb, %struct.smb* %116, i32 0, i32 44
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %120 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %119, i32 0, i32 39
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %118
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 4
  %125 = load %struct.smb*, %struct.smb** %4, align 8
  %126 = getelementptr inbounds %struct.smb, %struct.smb* %125, i32 0, i32 43
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %129 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %128, i32 0, i32 38
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %127
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 4
  %134 = load %struct.smb*, %struct.smb** %4, align 8
  %135 = getelementptr inbounds %struct.smb, %struct.smb* %134, i32 0, i32 42
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %138 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %137, i32 0, i32 37
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %136
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 4
  %143 = load %struct.smb*, %struct.smb** %4, align 8
  %144 = getelementptr inbounds %struct.smb, %struct.smb* %143, i32 0, i32 41
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %147 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %146, i32 0, i32 36
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %145
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 4
  %152 = load %struct.smb*, %struct.smb** %4, align 8
  %153 = getelementptr inbounds %struct.smb, %struct.smb* %152, i32 0, i32 40
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %156 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %155, i32 0, i32 35
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 4
  %161 = load %struct.smb*, %struct.smb** %4, align 8
  %162 = getelementptr inbounds %struct.smb, %struct.smb* %161, i32 0, i32 39
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %165 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %164, i32 0, i32 34
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %163
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %165, align 4
  %170 = load %struct.smb*, %struct.smb** %4, align 8
  %171 = getelementptr inbounds %struct.smb, %struct.smb* %170, i32 0, i32 38
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %174 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %173, i32 0, i32 33
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %176, %172
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %174, align 4
  %179 = load %struct.smb*, %struct.smb** %4, align 8
  %180 = getelementptr inbounds %struct.smb, %struct.smb* %179, i32 0, i32 37
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %183 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %182, i32 0, i32 32
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %181
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %183, align 4
  %188 = load %struct.smb*, %struct.smb** %4, align 8
  %189 = getelementptr inbounds %struct.smb, %struct.smb* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %192 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %191, i32 0, i32 31
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %190
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %192, align 4
  %197 = load %struct.smb*, %struct.smb** %4, align 8
  %198 = getelementptr inbounds %struct.smb, %struct.smb* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %201 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %200, i32 0, i32 30
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %199
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %201, align 4
  %206 = load %struct.smb*, %struct.smb** %4, align 8
  %207 = getelementptr inbounds %struct.smb, %struct.smb* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %210 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %209, i32 0, i32 29
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %208
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %210, align 4
  %215 = load %struct.smb*, %struct.smb** %4, align 8
  %216 = getelementptr inbounds %struct.smb, %struct.smb* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %219 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %218, i32 0, i32 28
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %221, %217
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %219, align 4
  %224 = load %struct.smb*, %struct.smb** %4, align 8
  %225 = getelementptr inbounds %struct.smb, %struct.smb* %224, i32 0, i32 36
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %228 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %227, i32 0, i32 27
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %230, %226
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %228, align 4
  %233 = load %struct.smb*, %struct.smb** %4, align 8
  %234 = getelementptr inbounds %struct.smb, %struct.smb* %233, i32 0, i32 35
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %237 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %236, i32 0, i32 26
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %239, %235
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %237, align 4
  %242 = load %struct.smb*, %struct.smb** %4, align 8
  %243 = getelementptr inbounds %struct.smb, %struct.smb* %242, i32 0, i32 34
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %246 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %245, i32 0, i32 25
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %248, %244
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %246, align 4
  %251 = load %struct.smb*, %struct.smb** %4, align 8
  %252 = getelementptr inbounds %struct.smb, %struct.smb* %251, i32 0, i32 15
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %255 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %254, i32 0, i32 24
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %257, %253
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %255, align 4
  %260 = load %struct.smb*, %struct.smb** %4, align 8
  %261 = getelementptr inbounds %struct.smb, %struct.smb* %260, i32 0, i32 33
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %264 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %263, i32 0, i32 23
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = add nsw i64 %266, %262
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %264, align 4
  %269 = load %struct.smb*, %struct.smb** %4, align 8
  %270 = getelementptr inbounds %struct.smb, %struct.smb* %269, i32 0, i32 32
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %273 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %272, i32 0, i32 22
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %275, %271
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %273, align 4
  %278 = load %struct.smb*, %struct.smb** %4, align 8
  %279 = getelementptr inbounds %struct.smb, %struct.smb* %278, i32 0, i32 31
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %282 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %281, i32 0, i32 21
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = add nsw i64 %284, %280
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %282, align 4
  %287 = load %struct.smb*, %struct.smb** %4, align 8
  %288 = getelementptr inbounds %struct.smb, %struct.smb* %287, i32 0, i32 30
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %291 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %290, i32 0, i32 20
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %293, %289
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %291, align 4
  %296 = load %struct.smb*, %struct.smb** %4, align 8
  %297 = getelementptr inbounds %struct.smb, %struct.smb* %296, i32 0, i32 29
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %300 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %299, i32 0, i32 19
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = add nsw i64 %302, %298
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %300, align 4
  %305 = load %struct.smb*, %struct.smb** %4, align 8
  %306 = getelementptr inbounds %struct.smb, %struct.smb* %305, i32 0, i32 28
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %309 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %308, i32 0, i32 18
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %311, %307
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %309, align 4
  %314 = load %struct.smb*, %struct.smb** %4, align 8
  %315 = getelementptr inbounds %struct.smb, %struct.smb* %314, i32 0, i32 27
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %318 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %317, i32 0, i32 17
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %320, %316
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %318, align 4
  %323 = load %struct.smb*, %struct.smb** %4, align 8
  %324 = getelementptr inbounds %struct.smb, %struct.smb* %323, i32 0, i32 26
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %327 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %326, i32 0, i32 16
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %329, %325
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %327, align 4
  %332 = load %struct.smb*, %struct.smb** %4, align 8
  %333 = getelementptr inbounds %struct.smb, %struct.smb* %332, i32 0, i32 25
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %336 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %335, i32 0, i32 15
  %337 = load i32, i32* %336, align 4
  %338 = sext i32 %337 to i64
  %339 = add nsw i64 %338, %334
  %340 = trunc i64 %339 to i32
  store i32 %340, i32* %336, align 4
  %341 = load %struct.smb*, %struct.smb** %4, align 8
  %342 = getelementptr inbounds %struct.smb, %struct.smb* %341, i32 0, i32 24
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %345 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %344, i32 0, i32 14
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  %348 = add nsw i64 %347, %343
  %349 = trunc i64 %348 to i32
  store i32 %349, i32* %345, align 4
  %350 = load %struct.smb*, %struct.smb** %4, align 8
  %351 = getelementptr inbounds %struct.smb, %struct.smb* %350, i32 0, i32 23
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %354 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %353, i32 0, i32 13
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  %357 = add nsw i64 %356, %352
  %358 = trunc i64 %357 to i32
  store i32 %358, i32* %354, align 4
  %359 = load %struct.smb*, %struct.smb** %4, align 8
  %360 = getelementptr inbounds %struct.smb, %struct.smb* %359, i32 0, i32 22
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %363 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %362, i32 0, i32 12
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  %366 = add nsw i64 %365, %361
  %367 = trunc i64 %366 to i32
  store i32 %367, i32* %363, align 4
  %368 = load %struct.smb*, %struct.smb** %4, align 8
  %369 = getelementptr inbounds %struct.smb, %struct.smb* %368, i32 0, i32 21
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %372 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %371, i32 0, i32 11
  %373 = load i32, i32* %372, align 4
  %374 = sext i32 %373 to i64
  %375 = add nsw i64 %374, %370
  %376 = trunc i64 %375 to i32
  store i32 %376, i32* %372, align 4
  %377 = load %struct.smb*, %struct.smb** %4, align 8
  %378 = getelementptr inbounds %struct.smb, %struct.smb* %377, i32 0, i32 20
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %381 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %380, i32 0, i32 10
  %382 = load i32, i32* %381, align 4
  %383 = sext i32 %382 to i64
  %384 = add nsw i64 %383, %379
  %385 = trunc i64 %384 to i32
  store i32 %385, i32* %381, align 4
  %386 = load %struct.smb*, %struct.smb** %4, align 8
  %387 = getelementptr inbounds %struct.smb, %struct.smb* %386, i32 0, i32 14
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %390 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %389, i32 0, i32 9
  %391 = load i32, i32* %390, align 4
  %392 = sext i32 %391 to i64
  %393 = add nsw i64 %392, %388
  %394 = trunc i64 %393 to i32
  store i32 %394, i32* %390, align 4
  %395 = load %struct.smb*, %struct.smb** %4, align 8
  %396 = getelementptr inbounds %struct.smb, %struct.smb* %395, i32 0, i32 13
  %397 = load i64, i64* %396, align 8
  %398 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %399 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %398, i32 0, i32 8
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  %402 = add nsw i64 %401, %397
  %403 = trunc i64 %402 to i32
  store i32 %403, i32* %399, align 4
  %404 = load %struct.smb*, %struct.smb** %4, align 8
  %405 = getelementptr inbounds %struct.smb, %struct.smb* %404, i32 0, i32 12
  %406 = load i64, i64* %405, align 8
  %407 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %408 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %407, i32 0, i32 7
  %409 = load i32, i32* %408, align 4
  %410 = sext i32 %409 to i64
  %411 = add nsw i64 %410, %406
  %412 = trunc i64 %411 to i32
  store i32 %412, i32* %408, align 4
  %413 = load %struct.smb*, %struct.smb** %4, align 8
  %414 = getelementptr inbounds %struct.smb, %struct.smb* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %417 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = add nsw i32 %418, %415
  store i32 %419, i32* %417, align 4
  %420 = load %struct.smb*, %struct.smb** %4, align 8
  %421 = getelementptr inbounds %struct.smb, %struct.smb* %420, i32 0, i32 11
  %422 = load i64, i64* %421, align 8
  %423 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %424 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %423, i32 0, i32 6
  %425 = load i32, i32* %424, align 4
  %426 = sext i32 %425 to i64
  %427 = add nsw i64 %426, %422
  %428 = trunc i64 %427 to i32
  store i32 %428, i32* %424, align 4
  %429 = load %struct.smb*, %struct.smb** %4, align 8
  %430 = getelementptr inbounds %struct.smb, %struct.smb* %429, i32 0, i32 19
  %431 = load i64, i64* %430, align 8
  %432 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %433 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %432, i32 0, i32 5
  %434 = load i32, i32* %433, align 4
  %435 = sext i32 %434 to i64
  %436 = add nsw i64 %435, %431
  %437 = trunc i64 %436 to i32
  store i32 %437, i32* %433, align 4
  %438 = load %struct.smb*, %struct.smb** %4, align 8
  %439 = getelementptr inbounds %struct.smb, %struct.smb* %438, i32 0, i32 18
  %440 = load i64, i64* %439, align 8
  %441 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %442 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 4
  %444 = sext i32 %443 to i64
  %445 = add nsw i64 %444, %440
  %446 = trunc i64 %445 to i32
  store i32 %446, i32* %442, align 4
  %447 = load %struct.smb*, %struct.smb** %4, align 8
  %448 = getelementptr inbounds %struct.smb, %struct.smb* %447, i32 0, i32 10
  %449 = load i64, i64* %448, align 8
  %450 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %451 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %450, i32 0, i32 3
  %452 = load i32, i32* %451, align 4
  %453 = sext i32 %452 to i64
  %454 = add nsw i64 %453, %449
  %455 = trunc i64 %454 to i32
  store i32 %455, i32* %451, align 4
  %456 = load %struct.smb*, %struct.smb** %4, align 8
  %457 = getelementptr inbounds %struct.smb, %struct.smb* %456, i32 0, i32 17
  %458 = load i64, i64* %457, align 8
  %459 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %460 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 4
  %462 = sext i32 %461 to i64
  %463 = add nsw i64 %462, %458
  %464 = trunc i64 %463 to i32
  store i32 %464, i32* %460, align 4
  %465 = load %struct.smb*, %struct.smb** %4, align 8
  %466 = getelementptr inbounds %struct.smb, %struct.smb* %465, i32 0, i32 16
  %467 = load i64, i64* %466, align 8
  %468 = load %struct.age_stats*, %struct.age_stats** %3, align 8
  %469 = getelementptr inbounds %struct.age_stats, %struct.age_stats* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = sext i32 %470 to i64
  %472 = add nsw i64 %471, %467
  %473 = trunc i64 %472 to i32
  store i32 %473, i32* %469, align 4
  %474 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %475 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %476 = load %struct.smb*, %struct.smb** %4, align 8
  %477 = getelementptr inbounds %struct.smb, %struct.smb* %476, i32 0, i32 15
  %478 = load i64, i64* %477, align 8
  %479 = call i32 @if_inc_counter(%struct.ifnet* %474, i32 %475, i64 %478)
  %480 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %481 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %482 = load %struct.smb*, %struct.smb** %4, align 8
  %483 = getelementptr inbounds %struct.smb, %struct.smb* %482, i32 0, i32 14
  %484 = load i64, i64* %483, align 8
  %485 = load %struct.smb*, %struct.smb** %4, align 8
  %486 = getelementptr inbounds %struct.smb, %struct.smb* %485, i32 0, i32 13
  %487 = load i64, i64* %486, align 8
  %488 = add nsw i64 %484, %487
  %489 = load %struct.smb*, %struct.smb** %4, align 8
  %490 = getelementptr inbounds %struct.smb, %struct.smb* %489, i32 0, i32 12
  %491 = load i64, i64* %490, align 8
  %492 = add nsw i64 %488, %491
  %493 = load %struct.smb*, %struct.smb** %4, align 8
  %494 = getelementptr inbounds %struct.smb, %struct.smb* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 8
  %496 = load i32, i32* @HDPX_CFG_RETRY_DEFAULT, align 4
  %497 = mul nsw i32 %495, %496
  %498 = sext i32 %497 to i64
  %499 = add nsw i64 %492, %498
  %500 = call i32 @if_inc_counter(%struct.ifnet* %480, i32 %481, i64 %499)
  %501 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %502 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %503 = load %struct.smb*, %struct.smb** %4, align 8
  %504 = getelementptr inbounds %struct.smb, %struct.smb* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 8
  %506 = sext i32 %505 to i64
  %507 = load %struct.smb*, %struct.smb** %4, align 8
  %508 = getelementptr inbounds %struct.smb, %struct.smb* %507, i32 0, i32 12
  %509 = load i64, i64* %508, align 8
  %510 = add nsw i64 %506, %509
  %511 = load %struct.smb*, %struct.smb** %4, align 8
  %512 = getelementptr inbounds %struct.smb, %struct.smb* %511, i32 0, i32 11
  %513 = load i64, i64* %512, align 8
  %514 = add nsw i64 %510, %513
  %515 = load %struct.smb*, %struct.smb** %4, align 8
  %516 = getelementptr inbounds %struct.smb, %struct.smb* %515, i32 0, i32 10
  %517 = load i64, i64* %516, align 8
  %518 = add nsw i64 %514, %517
  %519 = call i32 @if_inc_counter(%struct.ifnet* %501, i32 %502, i64 %518)
  %520 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %521 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %522 = load %struct.smb*, %struct.smb** %4, align 8
  %523 = getelementptr inbounds %struct.smb, %struct.smb* %522, i32 0, i32 9
  %524 = load i64, i64* %523, align 8
  %525 = call i32 @if_inc_counter(%struct.ifnet* %520, i32 %521, i64 %524)
  %526 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %527 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %528 = load %struct.smb*, %struct.smb** %4, align 8
  %529 = getelementptr inbounds %struct.smb, %struct.smb* %528, i32 0, i32 8
  %530 = load i64, i64* %529, align 8
  %531 = load %struct.smb*, %struct.smb** %4, align 8
  %532 = getelementptr inbounds %struct.smb, %struct.smb* %531, i32 0, i32 7
  %533 = load i64, i64* %532, align 8
  %534 = add nsw i64 %530, %533
  %535 = load %struct.smb*, %struct.smb** %4, align 8
  %536 = getelementptr inbounds %struct.smb, %struct.smb* %535, i32 0, i32 6
  %537 = load i64, i64* %536, align 8
  %538 = add nsw i64 %534, %537
  %539 = load %struct.smb*, %struct.smb** %4, align 8
  %540 = getelementptr inbounds %struct.smb, %struct.smb* %539, i32 0, i32 5
  %541 = load i64, i64* %540, align 8
  %542 = add nsw i64 %538, %541
  %543 = load %struct.smb*, %struct.smb** %4, align 8
  %544 = getelementptr inbounds %struct.smb, %struct.smb* %543, i32 0, i32 4
  %545 = load i64, i64* %544, align 8
  %546 = add nsw i64 %542, %545
  %547 = load %struct.smb*, %struct.smb** %4, align 8
  %548 = getelementptr inbounds %struct.smb, %struct.smb* %547, i32 0, i32 3
  %549 = load i64, i64* %548, align 8
  %550 = add nsw i64 %546, %549
  %551 = load %struct.smb*, %struct.smb** %4, align 8
  %552 = getelementptr inbounds %struct.smb, %struct.smb* %551, i32 0, i32 2
  %553 = load i64, i64* %552, align 8
  %554 = add nsw i64 %550, %553
  %555 = call i32 @if_inc_counter(%struct.ifnet* %526, i32 %527, i64 %554)
  %556 = load %struct.smb*, %struct.smb** %4, align 8
  %557 = getelementptr inbounds %struct.smb, %struct.smb* %556, i32 0, i32 0
  store i64 0, i64* %557, align 8
  %558 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %559 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %558, i32 0, i32 0
  %560 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %563 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %562, i32 0, i32 0
  %564 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %567 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %568 = or i32 %566, %567
  %569 = call i32 @bus_dmamap_sync(i32 %561, i32 %565, i32 %568)
  br label %570

570:                                              ; preds = %31, %30
  ret void
}

declare dso_local i32 @AGE_LOCK_ASSERT(%struct.age_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
