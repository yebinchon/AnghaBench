; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_g_raid_md_promise_new_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_g_raid_md_promise_new_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_disk = type { i64, %struct.g_raid_softc* }
%struct.g_raid_softc = type { %struct.g_raid_md_object* }
%struct.g_raid_md_object = type { i32 }
%struct.promise_raid_conf = type { i64, i32, i32 }
%struct.g_raid_md_promise_perdisk = type { i32, %struct.promise_raid_conf** }
%struct.g_raid_md_promise_pervolume = type { i64, i32, %struct.TYPE_3__*, i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.g_raid_volume = type { %struct.g_raid_md_promise_pervolume* }

@G_RAID_DISK_S_SPARE = common dso_local global i32 0, align 4
@M_MD_PROMISE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@g_raid_start_timeout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@g_raid_promise_go = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Newer disk\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Matching disk (%d of %d up)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Older disk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_disk*)* @g_raid_md_promise_new_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_md_promise_new_disk(%struct.g_raid_disk* %0) #0 {
  %2 = alloca %struct.g_raid_disk*, align 8
  %3 = alloca %struct.g_raid_softc*, align 8
  %4 = alloca %struct.g_raid_md_object*, align 8
  %5 = alloca %struct.promise_raid_conf*, align 8
  %6 = alloca %struct.g_raid_md_promise_perdisk*, align 8
  %7 = alloca %struct.g_raid_md_promise_pervolume*, align 8
  %8 = alloca %struct.g_raid_volume*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [33 x i8], align 16
  store %struct.g_raid_disk* %0, %struct.g_raid_disk** %2, align 8
  %11 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %12 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %11, i32 0, i32 1
  %13 = load %struct.g_raid_softc*, %struct.g_raid_softc** %12, align 8
  store %struct.g_raid_softc* %13, %struct.g_raid_softc** %3, align 8
  %14 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %15 = getelementptr inbounds %struct.g_raid_softc, %struct.g_raid_softc* %14, i32 0, i32 0
  %16 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %15, align 8
  store %struct.g_raid_md_object* %16, %struct.g_raid_md_object** %4, align 8
  %17 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %18 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.g_raid_md_promise_perdisk*
  store %struct.g_raid_md_promise_perdisk* %20, %struct.g_raid_md_promise_perdisk** %6, align 8
  %21 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %6, align 8
  %22 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %27 = load i32, i32* @G_RAID_DISK_S_SPARE, align 4
  %28 = call i32 @g_raid_change_disk_state(%struct.g_raid_disk* %26, i32 %27)
  %29 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %30 = call i32 @g_raid_md_promise_refill(%struct.g_raid_softc* %29)
  br label %234

31:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %171, %31
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %6, align 8
  %35 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %174

38:                                               ; preds = %32
  %39 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %6, align 8
  %40 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %39, i32 0, i32 1
  %41 = load %struct.promise_raid_conf**, %struct.promise_raid_conf*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.promise_raid_conf*, %struct.promise_raid_conf** %41, i64 %43
  %45 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %44, align 8
  store %struct.promise_raid_conf* %45, %struct.promise_raid_conf** %5, align 8
  %46 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %47 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %5, align 8
  %48 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.g_raid_volume* @g_raid_md_promise_get_volume(%struct.g_raid_softc* %46, i32 %49)
  store %struct.g_raid_volume* %50, %struct.g_raid_volume** %8, align 8
  %51 = load %struct.g_raid_volume*, %struct.g_raid_volume** %8, align 8
  %52 = icmp eq %struct.g_raid_volume* %51, null
  br i1 %52, label %53, label %87

53:                                               ; preds = %38
  %54 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %5, align 8
  %55 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %56 = call i32 @promise_meta_get_name(%struct.promise_raid_conf* %54, i8* %55)
  %57 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %58 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %59 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %5, align 8
  %60 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.g_raid_volume* @g_raid_create_volume(%struct.g_raid_softc* %57, i8* %58, i32 %61)
  store %struct.g_raid_volume* %62, %struct.g_raid_volume** %8, align 8
  %63 = load i32, i32* @M_MD_PROMISE, align 4
  %64 = load i32, i32* @M_WAITOK, align 4
  %65 = load i32, i32* @M_ZERO, align 4
  %66 = or i32 %64, %65
  %67 = call %struct.g_raid_md_promise_pervolume* @malloc(i32 40, i32 %63, i32 %66)
  store %struct.g_raid_md_promise_pervolume* %67, %struct.g_raid_md_promise_pervolume** %7, align 8
  %68 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %5, align 8
  %69 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %72 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %74 = load %struct.g_raid_volume*, %struct.g_raid_volume** %8, align 8
  %75 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %74, i32 0, i32 0
  store %struct.g_raid_md_promise_pervolume* %73, %struct.g_raid_md_promise_pervolume** %75, align 8
  %76 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %77 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %76, i32 0, i32 4
  %78 = call i32 @callout_init(i32* %77, i32 1)
  %79 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %80 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %79, i32 0, i32 4
  %81 = load i32, i32* @g_raid_start_timeout, align 4
  %82 = load i32, i32* @hz, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* @g_raid_promise_go, align 4
  %85 = load %struct.g_raid_volume*, %struct.g_raid_volume** %8, align 8
  %86 = call i32 @callout_reset(i32* %80, i32 %83, i32 %84, %struct.g_raid_volume* %85)
  br label %91

87:                                               ; preds = %38
  %88 = load %struct.g_raid_volume*, %struct.g_raid_volume** %8, align 8
  %89 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %88, i32 0, i32 0
  %90 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %89, align 8
  store %struct.g_raid_md_promise_pervolume* %90, %struct.g_raid_md_promise_pervolume** %7, align 8
  br label %91

91:                                               ; preds = %87, %53
  %92 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %93 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %92, i32 0, i32 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = icmp eq %struct.TYPE_3__* %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %98 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %170, label %101

101:                                              ; preds = %96, %91
  %102 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %103 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = icmp eq %struct.TYPE_3__* %104, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %101
  %107 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %5, align 8
  %108 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %111 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %109, %112
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %106, %101
  %116 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %117 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %118 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %119 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %118, i32 0, i32 2
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = icmp ne %struct.TYPE_3__* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %124 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %123, i32 0, i32 2
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load i32, i32* @M_MD_PROMISE, align 4
  %127 = call i32 @free(%struct.TYPE_3__* %125, i32 %126)
  br label %128

128:                                              ; preds = %122, %115
  %129 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %5, align 8
  %130 = call %struct.TYPE_3__* @promise_meta_copy(%struct.promise_raid_conf* %129)
  %131 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %132 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %131, i32 0, i32 2
  store %struct.TYPE_3__* %130, %struct.TYPE_3__** %132, align 8
  %133 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %134 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %133, i32 0, i32 2
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %139 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %141 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %140, i32 0, i32 1
  store i32 1, i32* %141, align 8
  br label %169

142:                                              ; preds = %106
  %143 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %5, align 8
  %144 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %147 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %145, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %142
  %151 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %152 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  %155 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %156 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %157 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %160 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %159, i32 0, i32 2
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %155, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %158, i32 %163)
  br label %168

165:                                              ; preds = %142
  %166 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %167 = call i32 (i32, %struct.g_raid_softc*, i8*, ...) @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %166, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %150
  br label %169

169:                                              ; preds = %168, %128
  br label %170

170:                                              ; preds = %169, %96
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %32

174:                                              ; preds = %32
  store i32 0, i32* %9, align 4
  br label %175

175:                                              ; preds = %231, %174
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %6, align 8
  %178 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %234

181:                                              ; preds = %175
  %182 = load %struct.g_raid_md_promise_perdisk*, %struct.g_raid_md_promise_perdisk** %6, align 8
  %183 = getelementptr inbounds %struct.g_raid_md_promise_perdisk, %struct.g_raid_md_promise_perdisk* %182, i32 0, i32 1
  %184 = load %struct.promise_raid_conf**, %struct.promise_raid_conf*** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.promise_raid_conf*, %struct.promise_raid_conf** %184, i64 %186
  %188 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %187, align 8
  store %struct.promise_raid_conf* %188, %struct.promise_raid_conf** %5, align 8
  %189 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %190 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %5, align 8
  %191 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call %struct.g_raid_volume* @g_raid_md_promise_get_volume(%struct.g_raid_softc* %189, i32 %192)
  store %struct.g_raid_volume* %193, %struct.g_raid_volume** %8, align 8
  %194 = load %struct.g_raid_volume*, %struct.g_raid_volume** %8, align 8
  %195 = icmp eq %struct.g_raid_volume* %194, null
  br i1 %195, label %196, label %197

196:                                              ; preds = %181
  br label %231

197:                                              ; preds = %181
  %198 = load %struct.g_raid_volume*, %struct.g_raid_volume** %8, align 8
  %199 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %198, i32 0, i32 0
  %200 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %199, align 8
  store %struct.g_raid_md_promise_pervolume* %200, %struct.g_raid_md_promise_pervolume** %7, align 8
  %201 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %202 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %197
  %206 = load %struct.g_raid_disk*, %struct.g_raid_disk** %2, align 8
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.g_raid_volume*, %struct.g_raid_volume** %8, align 8
  %209 = call i64 @g_raid_md_promise_start_disk(%struct.g_raid_disk* %206, i32 %207, %struct.g_raid_volume* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %205
  %212 = load %struct.g_raid_md_object*, %struct.g_raid_md_object** %4, align 8
  %213 = load %struct.g_raid_volume*, %struct.g_raid_volume** %8, align 8
  %214 = call i32 @g_raid_md_write_promise(%struct.g_raid_md_object* %212, %struct.g_raid_volume* %213, i32* null, i32* null)
  br label %215

215:                                              ; preds = %211, %205
  br label %230

216:                                              ; preds = %197
  %217 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %218 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.g_raid_md_promise_pervolume*, %struct.g_raid_md_promise_pervolume** %7, align 8
  %221 = getelementptr inbounds %struct.g_raid_md_promise_pervolume, %struct.g_raid_md_promise_pervolume* %220, i32 0, i32 2
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %219, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %216
  %227 = load %struct.g_raid_volume*, %struct.g_raid_volume** %8, align 8
  %228 = call i32 @g_raid_md_promise_start(%struct.g_raid_volume* %227)
  br label %229

229:                                              ; preds = %226, %216
  br label %230

230:                                              ; preds = %229, %215
  br label %231

231:                                              ; preds = %230, %196
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %175

234:                                              ; preds = %25, %175
  ret void
}

declare dso_local i32 @g_raid_change_disk_state(%struct.g_raid_disk*, i32) #1

declare dso_local i32 @g_raid_md_promise_refill(%struct.g_raid_softc*) #1

declare dso_local %struct.g_raid_volume* @g_raid_md_promise_get_volume(%struct.g_raid_softc*, i32) #1

declare dso_local i32 @promise_meta_get_name(%struct.promise_raid_conf*, i8*) #1

declare dso_local %struct.g_raid_volume* @g_raid_create_volume(%struct.g_raid_softc*, i8*, i32) #1

declare dso_local %struct.g_raid_md_promise_pervolume* @malloc(i32, i32, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.g_raid_volume*) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.TYPE_3__* @promise_meta_copy(%struct.promise_raid_conf*) #1

declare dso_local i64 @g_raid_md_promise_start_disk(%struct.g_raid_disk*, i32, %struct.g_raid_volume*) #1

declare dso_local i32 @g_raid_md_write_promise(%struct.g_raid_md_object*, %struct.g_raid_volume*, i32*, i32*) #1

declare dso_local i32 @g_raid_md_promise_start(%struct.g_raid_volume*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
