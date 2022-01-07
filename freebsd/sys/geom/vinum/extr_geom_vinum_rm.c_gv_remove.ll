; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_rm.c_gv_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_rm.c_gv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.gv_volume* }
%struct.gv_volume = type { i8*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gctl_req = type { i32 }
%struct.gv_softc = type { i8*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32 }
%struct.gv_plex = type { i8*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32 }
%struct.gv_sd = type { i8*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32 }
%struct.gv_drive = type { i8*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"no arguments given\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"no flags given\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"argv%d\00", align 1
@GV_FLAG_R = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"volume '%s' has attached plexes - need recursive removal\00", align 1
@GV_EVENT_RM_VOLUME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"plex '%s' has attached subdisks - need recursive removal\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"plex '%s' is still attached to volume '%s'\00", align 1
@GV_EVENT_RM_PLEX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"subdisk '%s' is still attached to plex '%s'\00", align 1
@GV_EVENT_RM_SD = common dso_local global i32 0, align 4
@GV_FLAG_F = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"drive '%s' is open\00", align 1
@GV_EVENT_RM_DRIVE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"unknown object '%s'\00", align 1
@GV_EVENT_SAVE_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_remove(%struct.g_geom* %0, %struct.gctl_req* %1) #0 {
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.gv_softc*, align 8
  %6 = alloca %struct.gv_volume*, align 8
  %7 = alloca %struct.gv_plex*, align 8
  %8 = alloca %struct.gv_sd*, align 8
  %9 = alloca %struct.gv_drive*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [20 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.g_geom* %0, %struct.g_geom** %3, align 8
  store %struct.gctl_req* %1, %struct.gctl_req** %4, align 8
  %16 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %17 = call i32* @gctl_get_paraml(%struct.gctl_req* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %2
  %25 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %26 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %213

27:                                               ; preds = %20
  %28 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %29 = call i32* @gctl_get_paraml(%struct.gctl_req* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %34 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %213

35:                                               ; preds = %27
  %36 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %37 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %36, i32 0, i32 0
  %38 = load %struct.gv_volume*, %struct.gv_volume** %37, align 8
  %39 = bitcast %struct.gv_volume* %38 to %struct.gv_softc*
  store %struct.gv_softc* %39, %struct.gv_softc** %5, align 8
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %203, %35
  %41 = load i32, i32* %14, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %206

45:                                               ; preds = %40
  %46 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @snprintf(i8* %46, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %51 = call i8* @gctl_get_param(%struct.gctl_req* %49, i8* %50, i32* null)
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %203

55:                                               ; preds = %45
  %56 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %57 = bitcast %struct.gv_softc* %56 to %struct.gv_volume*
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @gv_object_type(%struct.gv_volume* %57, i8* %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  switch i32 %60, label %198 [
    i32 128, label %61
    i32 130, label %88
    i32 129, label %138
    i32 131, label %166
  ]

61:                                               ; preds = %55
  %62 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %63 = bitcast %struct.gv_softc* %62 to %struct.gv_volume*
  %64 = load i8*, i8** %12, align 8
  %65 = call %struct.gv_volume* @gv_find_vol(%struct.gv_volume* %63, i8* %64)
  store %struct.gv_volume* %65, %struct.gv_volume** %6, align 8
  %66 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %67 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %66, i32 0, i32 6
  %68 = call i32 @LIST_EMPTY(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %61
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @GV_FLAG_R, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %78 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %79 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %77, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  br label %213

82:                                               ; preds = %70, %61
  %83 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %84 = bitcast %struct.gv_softc* %83 to %struct.gv_volume*
  %85 = load i32, i32* @GV_EVENT_RM_VOLUME, align 4
  %86 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %87 = call i32 @gv_post_event(%struct.gv_volume* %84, i32 %85, %struct.gv_volume* %86, i32* null, i32 0, i32 0)
  br label %202

88:                                               ; preds = %55
  %89 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %90 = bitcast %struct.gv_softc* %89 to %struct.gv_volume*
  %91 = load i8*, i8** %12, align 8
  %92 = call %struct.gv_volume* @gv_find_plex(%struct.gv_volume* %90, i8* %91)
  %93 = bitcast %struct.gv_volume* %92 to %struct.gv_plex*
  store %struct.gv_plex* %93, %struct.gv_plex** %7, align 8
  %94 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %95 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %94, i32 0, i32 5
  %96 = call i32 @LIST_EMPTY(i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %88
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @GV_FLAG_R, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %106 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %107 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %105, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i8* %108)
  br label %213

110:                                              ; preds = %98, %88
  %111 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %112 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %111, i32 0, i32 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = icmp ne %struct.TYPE_3__* %113, null
  br i1 %114, label %115, label %131

115:                                              ; preds = %110
  %116 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %117 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %116, i32 0, i32 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %131

122:                                              ; preds = %115
  %123 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %124 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %125 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %128 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %123, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %126, i32 %129)
  br label %213

131:                                              ; preds = %115, %110
  %132 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %133 = bitcast %struct.gv_softc* %132 to %struct.gv_volume*
  %134 = load i32, i32* @GV_EVENT_RM_PLEX, align 4
  %135 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %136 = bitcast %struct.gv_plex* %135 to %struct.gv_volume*
  %137 = call i32 @gv_post_event(%struct.gv_volume* %133, i32 %134, %struct.gv_volume* %136, i32* null, i32 0, i32 0)
  br label %202

138:                                              ; preds = %55
  %139 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %140 = bitcast %struct.gv_softc* %139 to %struct.gv_volume*
  %141 = load i8*, i8** %12, align 8
  %142 = call %struct.gv_volume* @gv_find_sd(%struct.gv_volume* %140, i8* %141)
  %143 = bitcast %struct.gv_volume* %142 to %struct.gv_sd*
  store %struct.gv_sd* %143, %struct.gv_sd** %8, align 8
  %144 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %145 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = icmp ne %struct.TYPE_4__* %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %138
  %149 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %150 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %151 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %154 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %153, i32 0, i32 2
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %149, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8* %152, i32 %157)
  br label %213

159:                                              ; preds = %138
  %160 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %161 = bitcast %struct.gv_softc* %160 to %struct.gv_volume*
  %162 = load i32, i32* @GV_EVENT_RM_SD, align 4
  %163 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %164 = bitcast %struct.gv_sd* %163 to %struct.gv_volume*
  %165 = call i32 @gv_post_event(%struct.gv_volume* %161, i32 %162, %struct.gv_volume* %164, i32* null, i32 0, i32 0)
  br label %202

166:                                              ; preds = %55
  %167 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %168 = bitcast %struct.gv_softc* %167 to %struct.gv_volume*
  %169 = load i8*, i8** %12, align 8
  %170 = call %struct.gv_volume* @gv_find_drive(%struct.gv_volume* %168, i8* %169)
  %171 = bitcast %struct.gv_volume* %170 to %struct.gv_drive*
  store %struct.gv_drive* %171, %struct.gv_drive** %9, align 8
  %172 = load %struct.gv_drive*, %struct.gv_drive** %9, align 8
  %173 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @gv_consumer_is_open(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %166
  %178 = load i32*, i32** %11, align 8
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @GV_FLAG_F, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %177
  %184 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %185 = load %struct.gv_drive*, %struct.gv_drive** %9, align 8
  %186 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %187)
  br label %213

189:                                              ; preds = %177, %166
  %190 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %191 = bitcast %struct.gv_softc* %190 to %struct.gv_volume*
  %192 = load i32, i32* @GV_EVENT_RM_DRIVE, align 4
  %193 = load %struct.gv_drive*, %struct.gv_drive** %9, align 8
  %194 = bitcast %struct.gv_drive* %193 to %struct.gv_volume*
  %195 = load i32*, i32** %11, align 8
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @gv_post_event(%struct.gv_volume* %191, i32 %192, %struct.gv_volume* %194, i32* null, i32 %196, i32 0)
  br label %202

198:                                              ; preds = %55
  %199 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %200 = load i8*, i8** %12, align 8
  %201 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %199, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %200)
  br label %213

202:                                              ; preds = %189, %159, %131, %82
  br label %203

203:                                              ; preds = %202, %54
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %14, align 4
  br label %40

206:                                              ; preds = %40
  %207 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %208 = bitcast %struct.gv_softc* %207 to %struct.gv_volume*
  %209 = load i32, i32* @GV_EVENT_SAVE_CONFIG, align 4
  %210 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %211 = bitcast %struct.gv_softc* %210 to %struct.gv_volume*
  %212 = call i32 @gv_post_event(%struct.gv_volume* %208, i32 %209, %struct.gv_volume* %211, i32* null, i32 0, i32 0)
  br label %213

213:                                              ; preds = %206, %198, %183, %148, %122, %104, %76, %32, %24
  ret void
}

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local i32 @gv_object_type(%struct.gv_volume*, i8*) #1

declare dso_local %struct.gv_volume* @gv_find_vol(%struct.gv_volume*, i8*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @gv_post_event(%struct.gv_volume*, i32, %struct.gv_volume*, i32*, i32, i32) #1

declare dso_local %struct.gv_volume* @gv_find_plex(%struct.gv_volume*, i8*) #1

declare dso_local %struct.gv_volume* @gv_find_sd(%struct.gv_volume*, i8*) #1

declare dso_local %struct.gv_volume* @gv_find_drive(%struct.gv_volume*, i8*) #1

declare dso_local i32 @gv_consumer_is_open(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
