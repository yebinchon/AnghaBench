; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3_ctl.c_g_raid3_ctl_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3_ctl.c_g_raid3_ctl_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_raid3_metadata = type { i32, i32, i64, i64 }
%struct.g_raid3_softc = type { i64, i32, i32, i32, %struct.g_raid3_disk* }
%struct.g_raid3_disk = type { i64 }
%struct.g_geom = type { i32 }
%struct.g_provider = type { i64, i32, i32 }
%struct.g_consumer = type { i64, i32* }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"hardcode\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"arg1\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"No 'arg%u' argument.\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Invalid provider.\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"raid3:insert\00", align 1
@g_raid3_ctl_insert_orphan = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"Cannot attach to %s.\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Cannot access %s.\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"No such device: %s.\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Invalid component number.\00", align 1
@G_RAID3_DISK_STATE_NODISK = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [36 x i8] c"Component %jd is already connected.\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"No disconnected components.\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"Cannot insert provider %s, because of its sector size.\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Provider %s too small.\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"warning: %s: only %jd bytes from %jd bytes used.\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [29 x i8] c"Cannot store metadata on %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_raid3_ctl_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_ctl_insert(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_raid3_metadata, align 8
  %6 = alloca %struct.g_raid3_softc*, align 8
  %7 = alloca %struct.g_raid3_disk*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_provider*, align 8
  %10 = alloca %struct.g_consumer*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %19 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %20 = call i8* @gctl_get_paraml(%struct.gctl_req* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %16, align 8
  %22 = load i32*, i32** %16, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %26 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %375

27:                                               ; preds = %2
  %28 = load i32*, i32** %16, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %33 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %375

34:                                               ; preds = %27
  %35 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %36 = call i8* @gctl_get_paraml(%struct.gctl_req* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %15, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %42 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %375

43:                                               ; preds = %34
  %44 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %45 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %50 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 1)
  br label %375

51:                                               ; preds = %43
  %52 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %53 = call i32* @gctl_get_param(%struct.gctl_req* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %57 = call i8* @gctl_get_paraml(%struct.gctl_req* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %58 = bitcast i8* %57 to i64*
  store i64* %58, i64** %14, align 8
  br label %60

59:                                               ; preds = %51
  store i64* null, i64** %14, align 8
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i8*, i8** %11, align 8
  %62 = call i64 @strncmp(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 5
  store i8* %66, i8** %11, align 8
  br label %67

67:                                               ; preds = %64, %60
  %68 = call i32 (...) @g_topology_lock()
  %69 = load i8*, i8** %11, align 8
  %70 = call %struct.g_provider* @g_provider_by_name(i8* %69)
  store %struct.g_provider* %70, %struct.g_provider** %9, align 8
  %71 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %72 = icmp eq %struct.g_provider* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = call i32 (...) @g_topology_unlock()
  %75 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %76 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %375

77:                                               ; preds = %67
  %78 = load %struct.g_class*, %struct.g_class** %4, align 8
  %79 = call %struct.g_geom* @g_new_geomf(%struct.g_class* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store %struct.g_geom* %79, %struct.g_geom** %8, align 8
  %80 = load i32, i32* @g_raid3_ctl_insert_orphan, align 4
  %81 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %82 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %84 = call %struct.g_consumer* @g_new_consumer(%struct.g_geom* %83)
  store %struct.g_consumer* %84, %struct.g_consumer** %10, align 8
  %85 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %86 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %87 = call i32 @g_attach(%struct.g_consumer* %85, %struct.g_provider* %86)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %77
  %91 = call i32 (...) @g_topology_unlock()
  %92 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %93 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %94 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i64 %95)
  br label %352

97:                                               ; preds = %77
  %98 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %99 = call i32 @g_access(%struct.g_consumer* %98, i32 0, i32 1, i32 1)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = call i32 (...) @g_topology_unlock()
  %104 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %105 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %106 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i64 %107)
  br label %352

109:                                              ; preds = %97
  %110 = call i32 (...) @g_topology_unlock()
  %111 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %112 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store i8* %112, i8** %11, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %117 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %352

118:                                              ; preds = %109
  %119 = load %struct.g_class*, %struct.g_class** %4, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = call %struct.g_raid3_softc* @g_raid3_find_device(%struct.g_class* %119, i8* %120)
  store %struct.g_raid3_softc* %121, %struct.g_raid3_softc** %6, align 8
  %122 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %123 = icmp eq %struct.g_raid3_softc* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %126)
  br label %352

128:                                              ; preds = %118
  %129 = load i64*, i64** %14, align 8
  %130 = icmp ne i64* %129, null
  br i1 %130, label %131, label %169

131:                                              ; preds = %128
  %132 = load i64*, i64** %14, align 8
  %133 = load i64, i64* %132, align 8
  %134 = icmp ult i64 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %131
  %136 = load i64*, i64** %14, align 8
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %139 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp uge i64 %137, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %135, %131
  %143 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %144 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %143, i32 0, i32 3
  %145 = call i32 @sx_xunlock(i32* %144)
  %146 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %147 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %146, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %352

148:                                              ; preds = %135
  %149 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %150 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %149, i32 0, i32 4
  %151 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %150, align 8
  %152 = load i64*, i64** %14, align 8
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %151, i64 %153
  store %struct.g_raid3_disk* %154, %struct.g_raid3_disk** %7, align 8
  %155 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %7, align 8
  %156 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @G_RAID3_DISK_STATE_NODISK, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %148
  %161 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %162 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %161, i32 0, i32 3
  %163 = call i32 @sx_xunlock(i32* %162)
  %164 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %165 = load i64*, i64** %14, align 8
  %166 = load i64, i64* %165, align 8
  %167 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %164, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i64 %166)
  br label %352

168:                                              ; preds = %148
  br label %214

169:                                              ; preds = %128
  store %struct.g_raid3_disk* null, %struct.g_raid3_disk** %7, align 8
  store i32 0, i32* %18, align 4
  br label %170

170:                                              ; preds = %201, %169
  %171 = load i32, i32* %18, align 4
  %172 = sext i32 %171 to i64
  %173 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %174 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ult i64 %172, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %7, align 8
  %179 = icmp eq %struct.g_raid3_disk* %178, null
  br label %180

180:                                              ; preds = %177, %170
  %181 = phi i1 [ false, %170 ], [ %179, %177 ]
  br i1 %181, label %182, label %204

182:                                              ; preds = %180
  %183 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %184 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %183, i32 0, i32 4
  %185 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %184, align 8
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %185, i64 %187
  %189 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @G_RAID3_DISK_STATE_NODISK, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %182
  %194 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %195 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %194, i32 0, i32 4
  %196 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %195, align 8
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %196, i64 %198
  store %struct.g_raid3_disk* %199, %struct.g_raid3_disk** %7, align 8
  br label %200

200:                                              ; preds = %193, %182
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %18, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %18, align 4
  br label %170

204:                                              ; preds = %180
  %205 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %7, align 8
  %206 = icmp eq %struct.g_raid3_disk* %205, null
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %209 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %208, i32 0, i32 3
  %210 = call i32 @sx_xunlock(i32* %209)
  %211 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %212 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %211, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  br label %352

213:                                              ; preds = %204
  br label %214

214:                                              ; preds = %213, %168
  %215 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %216 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %220 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = sub i64 %221, 1
  %223 = udiv i64 %218, %222
  %224 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %225 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = urem i64 %223, %227
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %214
  %231 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %232 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %231, i32 0, i32 3
  %233 = call i32 @sx_xunlock(i32* %232)
  %234 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %235 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %236 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %234, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0), i64 %237)
  br label %352

239:                                              ; preds = %214
  %240 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %241 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %245 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = sub i64 %246, 1
  %248 = udiv i64 %243, %247
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* %13, align 4
  %251 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %252 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %255 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = sub nsw i32 %253, %256
  %258 = icmp sgt i32 %250, %257
  br i1 %258, label %259, label %268

259:                                              ; preds = %239
  %260 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %261 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %260, i32 0, i32 3
  %262 = call i32 @sx_xunlock(i32* %261)
  %263 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %264 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %265 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %263, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i64 %266)
  br label %352

268:                                              ; preds = %239
  %269 = load i32, i32* %13, align 4
  %270 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %271 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %274 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = sub nsw i32 %272, %275
  %277 = icmp slt i32 %269, %276
  br i1 %277, label %278, label %294

278:                                              ; preds = %268
  %279 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %280 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %281 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i32, i32* %13, align 4
  %284 = sext i32 %283 to i64
  %285 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %286 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %289 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = sub nsw i32 %287, %290
  %292 = sext i32 %291 to i64
  %293 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %279, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0), i64 %282, i64 %284, i64 %292)
  br label %294

294:                                              ; preds = %278, %268
  %295 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %7, align 8
  %296 = call i32 @g_raid3_fill_metadata(%struct.g_raid3_disk* %295, %struct.g_raid3_metadata* %5)
  %297 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %298 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %297, i32 0, i32 3
  %299 = call i32 @sx_xunlock(i32* %298)
  %300 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %5, i32 0, i32 3
  store i64 0, i64* %300, align 8
  %301 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %5, i32 0, i32 2
  store i64 0, i64* %301, align 8
  %302 = load i32*, i32** %15, align 8
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %294
  %306 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %5, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %309 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = call i32 @strlcpy(i32 %307, i64 %310, i32 4)
  br label %316

312:                                              ; preds = %294
  %313 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %5, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @bzero(i32 %314, i32 4)
  br label %316

316:                                              ; preds = %312, %305
  %317 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %318 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %5, i32 0, i32 0
  store i32 %319, i32* %320, align 8
  %321 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %322 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @M_WAITOK, align 4
  %325 = call i32* @g_malloc(i32 %323, i32 %324)
  store i32* %325, i32** %12, align 8
  %326 = load i32*, i32** %12, align 8
  %327 = call i32 @raid3_metadata_encode(%struct.g_raid3_metadata* %5, i32* %326)
  %328 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %329 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %330 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %333 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = sub nsw i32 %331, %334
  %336 = load i32*, i32** %12, align 8
  %337 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %338 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @g_write_data(%struct.g_consumer* %328, i32 %335, i32* %336, i32 %339)
  store i32 %340, i32* %17, align 4
  %341 = load i32*, i32** %12, align 8
  %342 = call i32 @g_free(i32* %341)
  %343 = load i32, i32* %17, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %316
  %346 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %347 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %348 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %346, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i64 %349)
  br label %351

351:                                              ; preds = %345, %316
  br label %352

352:                                              ; preds = %351, %259, %230, %207, %160, %142, %124, %115, %102, %90
  %353 = call i32 (...) @g_topology_lock()
  %354 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %355 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = icmp sgt i64 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %352
  %359 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %360 = call i32 @g_access(%struct.g_consumer* %359, i32 0, i32 -1, i32 -1)
  br label %361

361:                                              ; preds = %358, %352
  %362 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %363 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %362, i32 0, i32 1
  %364 = load i32*, i32** %363, align 8
  %365 = icmp ne i32* %364, null
  br i1 %365, label %366, label %369

366:                                              ; preds = %361
  %367 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %368 = call i32 @g_detach(%struct.g_consumer* %367)
  br label %369

369:                                              ; preds = %366, %361
  %370 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %371 = call i32 @g_destroy_consumer(%struct.g_consumer* %370)
  %372 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %373 = call i32 @g_destroy_geom(%struct.g_geom* %372)
  %374 = call i32 (...) @g_topology_unlock()
  br label %375

375:                                              ; preds = %369, %73, %48, %40, %31, %24
  ret void
}

declare dso_local i8* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i32* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local %struct.g_geom* @g_new_geomf(%struct.g_class*, i8*) #1

declare dso_local %struct.g_consumer* @g_new_consumer(%struct.g_geom*) #1

declare dso_local i32 @g_attach(%struct.g_consumer*, %struct.g_provider*) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local %struct.g_raid3_softc* @g_raid3_find_device(%struct.g_class*, i8*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @g_raid3_fill_metadata(%struct.g_raid3_disk*, %struct.g_raid3_metadata*) #1

declare dso_local i32 @strlcpy(i32, i64, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32* @g_malloc(i32, i32) #1

declare dso_local i32 @raid3_metadata_encode(%struct.g_raid3_metadata*, i32*) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i32, i32*, i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_geom(%struct.g_geom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
