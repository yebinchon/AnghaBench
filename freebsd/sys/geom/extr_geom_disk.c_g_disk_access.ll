; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i8*, i64, i64, i64, i32, i32, i32, i32, %struct.g_disk_softc* }
%struct.g_disk_softc = type { i64*, i32, %struct.disk* }
%struct.disk = type { i32, i32 (%struct.disk*)*, i64, i8*, i32, i64, i32 (%struct.disk*)*, i32, i32, i32, i32, i64 }

@G_T_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"g_disk_access(%s, %d, %d, %d)\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DISKFLAG_WRITE_PROTECT = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Opened disk %s -> %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"WARNING: Disk drive %s%d has no d_maxsize\0A\00", align 1
@DFLTPHYS = common dso_local global i64 0, align 8
@DISKFLAG_CANDELETE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"WARNING: Disk drive %s%d has no d_delmaxsize\0A\00", align 1
@DISKFLAG_OPEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Closed disk %s -> %d\0A\00", align 1
@G_STATE_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_provider*, i32, i32, i32)* @g_disk_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_disk_access(%struct.g_provider* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.disk*, align 8
  %11 = alloca %struct.g_disk_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.g_provider* %0, %struct.g_provider** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @G_T_ACCESS, align 4
  %14 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %15 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @g_trace(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17, i32 %18, i32 %19)
  %21 = call i32 (...) @g_topology_assert()
  %22 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %23 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %22, i32 0, i32 8
  %24 = load %struct.g_disk_softc*, %struct.g_disk_softc** %23, align 8
  store %struct.g_disk_softc* %24, %struct.g_disk_softc** %11, align 8
  %25 = load %struct.g_disk_softc*, %struct.g_disk_softc** %11, align 8
  %26 = icmp eq %struct.g_disk_softc* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %4
  %28 = load %struct.g_disk_softc*, %struct.g_disk_softc** %11, align 8
  %29 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %28, i32 0, i32 2
  %30 = load %struct.disk*, %struct.disk** %29, align 8
  store %struct.disk* %30, %struct.disk** %10, align 8
  %31 = icmp eq %struct.disk* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.disk*, %struct.disk** %10, align 8
  %34 = getelementptr inbounds %struct.disk, %struct.disk* %33, i32 0, i32 11
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32, %27, %4
  %38 = load i32, i32* %7, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %281

47:                                               ; preds = %43, %40, %37
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %5, align 4
  br label %281

49:                                               ; preds = %32
  %50 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %51 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  %57 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %58 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %65 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %71 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %72 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %75 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %79 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %216

83:                                               ; preds = %49
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %86, %87
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %216

90:                                               ; preds = %83
  %91 = load i32, i32* %8, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load %struct.disk*, %struct.disk** %10, align 8
  %95 = getelementptr inbounds %struct.disk, %struct.disk* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @DISKFLAG_WRITE_PROTECT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @EROFS, align 4
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %100, %93, %90
  %103 = load i32, i32* %12, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load %struct.disk*, %struct.disk** %10, align 8
  %107 = getelementptr inbounds %struct.disk, %struct.disk* %106, i32 0, i32 1
  %108 = load i32 (%struct.disk*)*, i32 (%struct.disk*)** %107, align 8
  %109 = icmp ne i32 (%struct.disk*)* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load %struct.disk*, %struct.disk** %10, align 8
  %112 = getelementptr inbounds %struct.disk, %struct.disk* %111, i32 0, i32 1
  %113 = load i32 (%struct.disk*)*, i32 (%struct.disk*)** %112, align 8
  %114 = load %struct.disk*, %struct.disk** %10, align 8
  %115 = call i32 %113(%struct.disk* %114)
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %110, %105, %102
  %117 = load i64, i64* @bootverbose, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %124 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %125, i32 %126)
  br label %128

128:                                              ; preds = %122, %119, %116
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %5, align 4
  br label %281

133:                                              ; preds = %128
  %134 = load %struct.disk*, %struct.disk** %10, align 8
  %135 = getelementptr inbounds %struct.disk, %struct.disk* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %138 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %137, i32 0, i32 7
  store i32 %136, i32* %138, align 4
  %139 = load %struct.disk*, %struct.disk** %10, align 8
  %140 = getelementptr inbounds %struct.disk, %struct.disk* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %133
  %144 = load %struct.disk*, %struct.disk** %10, align 8
  %145 = getelementptr inbounds %struct.disk, %struct.disk* %144, i32 0, i32 3
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.disk*, %struct.disk** %10, align 8
  %148 = getelementptr inbounds %struct.disk, %struct.disk* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %146, i32 %149)
  %151 = load i64, i64* @DFLTPHYS, align 8
  %152 = load %struct.disk*, %struct.disk** %10, align 8
  %153 = getelementptr inbounds %struct.disk, %struct.disk* %152, i32 0, i32 2
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %143, %133
  %155 = load %struct.disk*, %struct.disk** %10, align 8
  %156 = getelementptr inbounds %struct.disk, %struct.disk* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %183

159:                                              ; preds = %154
  %160 = load i64, i64* @bootverbose, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %159
  %163 = load %struct.disk*, %struct.disk** %10, align 8
  %164 = getelementptr inbounds %struct.disk, %struct.disk* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @DISKFLAG_CANDELETE, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %162
  %170 = load %struct.disk*, %struct.disk** %10, align 8
  %171 = getelementptr inbounds %struct.disk, %struct.disk* %170, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.disk*, %struct.disk** %10, align 8
  %174 = getelementptr inbounds %struct.disk, %struct.disk* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %172, i32 %175)
  br label %177

177:                                              ; preds = %169, %162, %159
  %178 = load %struct.disk*, %struct.disk** %10, align 8
  %179 = getelementptr inbounds %struct.disk, %struct.disk* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.disk*, %struct.disk** %10, align 8
  %182 = getelementptr inbounds %struct.disk, %struct.disk* %181, i32 0, i32 5
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %177, %154
  %184 = load %struct.disk*, %struct.disk** %10, align 8
  %185 = getelementptr inbounds %struct.disk, %struct.disk* %184, i32 0, i32 9
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %188 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %187, i32 0, i32 6
  store i32 %186, i32* %188, align 8
  %189 = load %struct.disk*, %struct.disk** %10, align 8
  %190 = getelementptr inbounds %struct.disk, %struct.disk* %189, i32 0, i32 8
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %193 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* @DISKFLAG_OPEN, align 4
  %195 = load %struct.disk*, %struct.disk** %10, align 8
  %196 = getelementptr inbounds %struct.disk, %struct.disk* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  %199 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %200 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %183
  %204 = load %struct.disk*, %struct.disk** %10, align 8
  %205 = getelementptr inbounds %struct.disk, %struct.disk* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %208 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 8
  br label %215

209:                                              ; preds = %183
  %210 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %211 = load %struct.disk*, %struct.disk** %10, align 8
  %212 = getelementptr inbounds %struct.disk, %struct.disk* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @g_resize_provider(%struct.g_provider* %210, i32 %213)
  br label %215

215:                                              ; preds = %209, %203
  br label %279

216:                                              ; preds = %83, %49
  %217 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %218 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %221 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %219, %222
  %224 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %225 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %223, %226
  %228 = icmp sgt i64 %227, 0
  br i1 %228, label %229, label %278

229:                                              ; preds = %216
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* %8, align 4
  %232 = add nsw i32 %230, %231
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %232, %233
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %278

236:                                              ; preds = %229
  %237 = load %struct.disk*, %struct.disk** %10, align 8
  %238 = getelementptr inbounds %struct.disk, %struct.disk* %237, i32 0, i32 6
  %239 = load i32 (%struct.disk*)*, i32 (%struct.disk*)** %238, align 8
  %240 = icmp ne i32 (%struct.disk*)* %239, null
  br i1 %240, label %241, label %256

241:                                              ; preds = %236
  %242 = load %struct.disk*, %struct.disk** %10, align 8
  %243 = getelementptr inbounds %struct.disk, %struct.disk* %242, i32 0, i32 6
  %244 = load i32 (%struct.disk*)*, i32 (%struct.disk*)** %243, align 8
  %245 = load %struct.disk*, %struct.disk** %10, align 8
  %246 = call i32 %244(%struct.disk* %245)
  store i32 %246, i32* %12, align 4
  %247 = load i32, i32* %12, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %241
  %250 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %251 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = load i32, i32* %12, align 4
  %254 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %252, i32 %253)
  br label %255

255:                                              ; preds = %249, %241
  br label %256

256:                                              ; preds = %255, %236
  %257 = load i32, i32* @G_STATE_ACTIVE, align 4
  %258 = load %struct.g_disk_softc*, %struct.g_disk_softc** %11, align 8
  %259 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 8
  %260 = load %struct.g_disk_softc*, %struct.g_disk_softc** %11, align 8
  %261 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %260, i32 0, i32 0
  %262 = load i64*, i64** %261, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %256
  %267 = load %struct.g_disk_softc*, %struct.g_disk_softc** %11, align 8
  %268 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %267, i32 0, i32 0
  %269 = load i64*, i64** %268, align 8
  %270 = call i32 @led_set(i64* %269, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %271

271:                                              ; preds = %266, %256
  %272 = load i32, i32* @DISKFLAG_OPEN, align 4
  %273 = xor i32 %272, -1
  %274 = load %struct.disk*, %struct.disk** %10, align 8
  %275 = getelementptr inbounds %struct.disk, %struct.disk* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = and i32 %276, %273
  store i32 %277, i32* %275, align 8
  br label %278

278:                                              ; preds = %271, %229, %216
  br label %279

279:                                              ; preds = %278, %215
  %280 = load i32, i32* %12, align 4
  store i32 %280, i32* %5, align 4
  br label %281

281:                                              ; preds = %279, %131, %47, %46
  %282 = load i32, i32* %5, align 4
  ret i32 %282
}

declare dso_local i32 @g_trace(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @g_resize_provider(%struct.g_provider*, i32) #1

declare dso_local i32 @led_set(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
