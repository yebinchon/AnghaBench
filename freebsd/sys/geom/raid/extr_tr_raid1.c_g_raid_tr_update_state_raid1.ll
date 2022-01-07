; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_update_state_raid1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_update_state_raid1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_volume = type { i32, i64, i64, i32, %struct.g_raid_subdisk*, %struct.g_raid_softc* }
%struct.g_raid_softc = type { i32 }
%struct.g_raid_subdisk = type { i64, i64, i32*, i32 }
%struct.g_raid_tr_raid1_object = type { i32, i64, i64 }

@TR_RAID1_F_DOING_SOME = common dso_local global i32 0, align 4
@G_RAID_VOLUME_S_STOPPED = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_STARTING = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_ACTIVE = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_REBUILD = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_RESYNC = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_UNINITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Promote subdisk %s:%d from %s to ACTIVE.\00", align 1
@G_RAID_SUBDISK_S_STALE = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_OPTIMAL = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_SUBOPTIMAL = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_DEGRADED = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_BROKEN = common dso_local global i64 0, align 8
@G_RAID_VOLUME_E_UP = common dso_local global i32 0, align 4
@G_RAID_VOLUME_E_DOWN = common dso_local global i32 0, align 4
@G_RAID_EVENT_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_volume*, %struct.g_raid_subdisk*)* @g_raid_tr_update_state_raid1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_update_state_raid1(%struct.g_raid_volume* %0, %struct.g_raid_subdisk* %1) #0 {
  %3 = alloca %struct.g_raid_volume*, align 8
  %4 = alloca %struct.g_raid_subdisk*, align 8
  %5 = alloca %struct.g_raid_tr_raid1_object*, align 8
  %6 = alloca %struct.g_raid_softc*, align 8
  %7 = alloca %struct.g_raid_subdisk*, align 8
  %8 = alloca %struct.g_raid_subdisk*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %3, align 8
  store %struct.g_raid_subdisk* %1, %struct.g_raid_subdisk** %4, align 8
  %13 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %14 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %13, i32 0, i32 5
  %15 = load %struct.g_raid_softc*, %struct.g_raid_softc** %14, align 8
  store %struct.g_raid_softc* %15, %struct.g_raid_softc** %6, align 8
  %16 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %17 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.g_raid_tr_raid1_object*
  store %struct.g_raid_tr_raid1_object* %19, %struct.g_raid_tr_raid1_object** %5, align 8
  %20 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %5, align 8
  %21 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %5, align 8
  %26 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TR_RAID1_F_DOING_SOME, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @G_RAID_VOLUME_S_STOPPED, align 8
  store i64 %32, i64* %9, align 8
  br label %182

33:                                               ; preds = %24, %2
  %34 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %5, align 8
  %35 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @G_RAID_VOLUME_S_STARTING, align 8
  store i64 %39, i64* %9, align 8
  br label %181

40:                                               ; preds = %33
  %41 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %42 = load i64, i64* @G_RAID_SUBDISK_S_ACTIVE, align 8
  %43 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %41, i64 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %138

46:                                               ; preds = %40
  %47 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %48 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %47, i32 0, i32 4
  %49 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %48, align 8
  %50 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %49, i64 0
  store %struct.g_raid_subdisk* %50, %struct.g_raid_subdisk** %8, align 8
  store i32 1, i32* %10, align 4
  br label %51

51:                                               ; preds = %105, %46
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %54 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %108

57:                                               ; preds = %51
  %58 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %59 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %58, i32 0, i32 4
  %60 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %60, i64 %62
  store %struct.g_raid_subdisk* %63, %struct.g_raid_subdisk** %7, align 8
  %64 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %65 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %68 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  store %struct.g_raid_subdisk* %72, %struct.g_raid_subdisk** %8, align 8
  br label %104

73:                                               ; preds = %57
  %74 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %75 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %78 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %73
  %82 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %83 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @G_RAID_SUBDISK_S_REBUILD, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %89 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @G_RAID_SUBDISK_S_RESYNC, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %87, %81
  %94 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %95 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %98 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %96, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  store %struct.g_raid_subdisk* %102, %struct.g_raid_subdisk** %8, align 8
  br label %103

103:                                              ; preds = %101, %93, %87, %73
  br label %104

104:                                              ; preds = %103, %71
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %51

108:                                              ; preds = %51
  %109 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %110 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @G_RAID_SUBDISK_S_UNINITIALIZED, align 8
  %113 = icmp sge i64 %111, %112
  br i1 %113, label %114, label %137

114:                                              ; preds = %108
  %115 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %116 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %117 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %120 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %123 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @g_raid_subdisk_state2str(i64 %124)
  %126 = call i32 @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %121, i32 %125)
  %127 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %128 = load i64, i64* @G_RAID_SUBDISK_S_ACTIVE, align 8
  %129 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %127, i64 %128)
  %130 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %131 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %132 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %133 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %8, align 8
  %134 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @g_raid_write_metadata(%struct.g_raid_softc* %130, %struct.g_raid_volume* %131, %struct.g_raid_subdisk* %132, i32* %135)
  br label %137

137:                                              ; preds = %114, %108
  br label %138

138:                                              ; preds = %137, %40
  %139 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %140 = load i64, i64* @G_RAID_SUBDISK_S_ACTIVE, align 8
  %141 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %139, i64 %140)
  store i32 %141, i32* %11, align 4
  %142 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %143 = load i64, i64* @G_RAID_SUBDISK_S_STALE, align 8
  %144 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %142, i64 %143)
  %145 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %146 = load i64, i64* @G_RAID_SUBDISK_S_RESYNC, align 8
  %147 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %145, i64 %146)
  %148 = add nsw i32 %144, %147
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %151 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %149, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %138
  %155 = load i64, i64* @G_RAID_VOLUME_S_OPTIMAL, align 8
  store i64 %155, i64* %9, align 8
  br label %175

156:                                              ; preds = %138
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %157, %158
  %160 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %161 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %159, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = load i64, i64* @G_RAID_VOLUME_S_SUBOPTIMAL, align 8
  store i64 %165, i64* %9, align 8
  br label %174

166:                                              ; preds = %156
  %167 = load i32, i32* %11, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i64, i64* @G_RAID_VOLUME_S_DEGRADED, align 8
  store i64 %170, i64* %9, align 8
  br label %173

171:                                              ; preds = %166
  %172 = load i64, i64* @G_RAID_VOLUME_S_BROKEN, align 8
  store i64 %172, i64* %9, align 8
  br label %173

173:                                              ; preds = %171, %169
  br label %174

174:                                              ; preds = %173, %164
  br label %175

175:                                              ; preds = %174, %154
  %176 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %177 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %180 = call i32 @g_raid_tr_raid1_maybe_rebuild(i64 %178, %struct.g_raid_subdisk* %179)
  br label %181

181:                                              ; preds = %175, %38
  br label %182

182:                                              ; preds = %181, %31
  %183 = load i64, i64* %9, align 8
  %184 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %185 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %183, %186
  br i1 %187, label %188, label %218

188:                                              ; preds = %182
  %189 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %190 = load i64, i64* %9, align 8
  %191 = call i64 @G_RAID_VOLUME_S_ALIVE(i64 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* @G_RAID_VOLUME_E_UP, align 4
  br label %197

195:                                              ; preds = %188
  %196 = load i32, i32* @G_RAID_VOLUME_E_DOWN, align 4
  br label %197

197:                                              ; preds = %195, %193
  %198 = phi i32 [ %194, %193 ], [ %196, %195 ]
  %199 = load i32, i32* @G_RAID_EVENT_VOLUME, align 4
  %200 = call i32 @g_raid_event_send(%struct.g_raid_volume* %189, i32 %198, i32 %199)
  %201 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %202 = load i64, i64* %9, align 8
  %203 = call i32 @g_raid_change_volume_state(%struct.g_raid_volume* %201, i64 %202)
  %204 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %5, align 8
  %205 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %217, label %208

208:                                              ; preds = %197
  %209 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %5, align 8
  %210 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %208
  %214 = load %struct.g_raid_softc*, %struct.g_raid_softc** %6, align 8
  %215 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %216 = call i32 @g_raid_write_metadata(%struct.g_raid_softc* %214, %struct.g_raid_volume* %215, %struct.g_raid_subdisk* null, i32* null)
  br label %217

217:                                              ; preds = %213, %208, %197
  br label %218

218:                                              ; preds = %217, %182
  ret i32 0
}

declare dso_local i32 @g_raid_nsubdisks(%struct.g_raid_volume*, i64) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i32, i32, i32) #1

declare dso_local i32 @g_raid_subdisk_state2str(i64) #1

declare dso_local i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk*, i64) #1

declare dso_local i32 @g_raid_write_metadata(%struct.g_raid_softc*, %struct.g_raid_volume*, %struct.g_raid_subdisk*, i32*) #1

declare dso_local i32 @g_raid_tr_raid1_maybe_rebuild(i64, %struct.g_raid_subdisk*) #1

declare dso_local i32 @g_raid_event_send(%struct.g_raid_volume*, i32, i32) #1

declare dso_local i64 @G_RAID_VOLUME_S_ALIVE(i64) #1

declare dso_local i32 @g_raid_change_volume_state(%struct.g_raid_volume*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
