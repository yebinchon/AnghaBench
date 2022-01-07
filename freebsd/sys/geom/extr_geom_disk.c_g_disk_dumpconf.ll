; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_geom = type { %struct.g_disk_softc* }
%struct.g_disk_softc = type { %struct.disk* }
%struct.disk = type { i8*, i8*, i8*, i32 (%struct.bio*)*, i8*, i8* }
%struct.bio = type opaque
%struct.g_consumer = type { i32 }
%struct.g_provider = type { i32 }
%struct.bio.0 = type { i8*, i8*, i8*, %struct.disk* }

@.str = private unnamed_addr constant [7 x i8] c" hd %u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" sc %u\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s<fwheads>%u</fwheads>\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s<fwsectors>%u</fwsectors>\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s<rotationrate>\00", align 1
@DISK_RR_UNKNOWN = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@DISK_RR_NON_ROTATING = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@DISK_RR_MIN = common dso_local global i8* null, align 8
@DISK_RR_MAX = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"</rotationrate>\0A\00", align 1
@DISK_IDENT_SIZE = common dso_local global i8* null, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"GEOM::ident\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"%s<ident>\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"</ident>\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"GEOM::lunid\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%s<lunid>\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"</lunid>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GEOM::lunname\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"%s<lunname>\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"</lunname>\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"%s<descr>\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"</descr>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i8*, %struct.g_geom*, %struct.g_consumer*, %struct.g_provider*)* @g_disk_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_disk_dumpconf(%struct.sbuf* %0, i8* %1, %struct.g_geom* %2, %struct.g_consumer* %3, %struct.g_provider* %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.bio.0*, align 8
  %12 = alloca %struct.disk*, align 8
  %13 = alloca %struct.g_disk_softc*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.g_geom* %2, %struct.g_geom** %8, align 8
  store %struct.g_consumer* %3, %struct.g_consumer** %9, align 8
  store %struct.g_provider* %4, %struct.g_provider** %10, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %17 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %16, i32 0, i32 0
  %18 = load %struct.g_disk_softc*, %struct.g_disk_softc** %17, align 8
  store %struct.g_disk_softc* %18, %struct.g_disk_softc** %13, align 8
  %19 = load %struct.g_disk_softc*, %struct.g_disk_softc** %13, align 8
  %20 = icmp eq %struct.g_disk_softc* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = load %struct.g_disk_softc*, %struct.g_disk_softc** %13, align 8
  %23 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %22, i32 0, i32 0
  %24 = load %struct.disk*, %struct.disk** %23, align 8
  store %struct.disk* %24, %struct.disk** %12, align 8
  %25 = icmp eq %struct.disk* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %5
  br label %222

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %32 = load %struct.disk*, %struct.disk** %12, align 8
  %33 = getelementptr inbounds %struct.disk, %struct.disk* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %37 = load %struct.disk*, %struct.disk** %12, align 8
  %38 = getelementptr inbounds %struct.disk, %struct.disk* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %222

41:                                               ; preds = %27
  %42 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %43 = icmp ne %struct.g_provider* %42, null
  br i1 %43, label %44, label %222

44:                                               ; preds = %41
  %45 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.disk*, %struct.disk** %12, align 8
  %48 = getelementptr inbounds %struct.disk, %struct.disk* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %49)
  %51 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.disk*, %struct.disk** %12, align 8
  %54 = getelementptr inbounds %struct.disk, %struct.disk* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %52, i8* %55)
  %57 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = load %struct.disk*, %struct.disk** %12, align 8
  %61 = getelementptr inbounds %struct.disk, %struct.disk* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** @DISK_RR_UNKNOWN, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %44
  %66 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %67 = call i32 @sbuf_cat(%struct.sbuf* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %100

68:                                               ; preds = %44
  %69 = load %struct.disk*, %struct.disk** %12, align 8
  %70 = getelementptr inbounds %struct.disk, %struct.disk* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** @DISK_RR_NON_ROTATING, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %76 = call i32 @sbuf_cat(%struct.sbuf* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %99

77:                                               ; preds = %68
  %78 = load %struct.disk*, %struct.disk** %12, align 8
  %79 = getelementptr inbounds %struct.disk, %struct.disk* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** @DISK_RR_MIN, align 8
  %82 = icmp uge i8* %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load %struct.disk*, %struct.disk** %12, align 8
  %85 = getelementptr inbounds %struct.disk, %struct.disk* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** @DISK_RR_MAX, align 8
  %88 = icmp ule i8* %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %91 = load %struct.disk*, %struct.disk** %12, align 8
  %92 = getelementptr inbounds %struct.disk, %struct.disk* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %93)
  br label %98

95:                                               ; preds = %83, %77
  %96 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %97 = call i32 @sbuf_cat(%struct.sbuf* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %89
  br label %99

99:                                               ; preds = %98, %74
  br label %100

100:                                              ; preds = %99, %65
  %101 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %102 = call i32 @sbuf_cat(%struct.sbuf* %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %103 = load %struct.disk*, %struct.disk** %12, align 8
  %104 = getelementptr inbounds %struct.disk, %struct.disk* %103, i32 0, i32 3
  %105 = load i32 (%struct.bio*)*, i32 (%struct.bio*)** %104, align 8
  %106 = icmp ne i32 (%struct.bio*)* %105, null
  br i1 %106, label %107, label %200

107:                                              ; preds = %100
  %108 = load i8*, i8** @DISK_IDENT_SIZE, align 8
  %109 = load i32, i32* @M_WAITOK, align 4
  %110 = call i8* @g_malloc(i8* %108, i32 %109)
  store i8* %110, i8** %14, align 8
  %111 = call %struct.bio.0* (...) @g_alloc_bio()
  store %struct.bio.0* %111, %struct.bio.0** %11, align 8
  %112 = load %struct.disk*, %struct.disk** %12, align 8
  %113 = load %struct.bio.0*, %struct.bio.0** %11, align 8
  %114 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %113, i32 0, i32 3
  store %struct.disk* %112, %struct.disk** %114, align 8
  %115 = load %struct.bio.0*, %struct.bio.0** %11, align 8
  %116 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %115, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %116, align 8
  %117 = load i8*, i8** @DISK_IDENT_SIZE, align 8
  %118 = load %struct.bio.0*, %struct.bio.0** %11, align 8
  %119 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** %14, align 8
  %121 = load %struct.bio.0*, %struct.bio.0** %11, align 8
  %122 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.disk*, %struct.disk** %12, align 8
  %124 = getelementptr inbounds %struct.disk, %struct.disk* %123, i32 0, i32 3
  %125 = load i32 (%struct.bio*)*, i32 (%struct.bio*)** %124, align 8
  %126 = load %struct.bio.0*, %struct.bio.0** %11, align 8
  %127 = bitcast %struct.bio.0* %126 to %struct.bio*
  %128 = call i32 %125(%struct.bio* %127)
  store i32 %128, i32* %15, align 4
  %129 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %130)
  %132 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %133 = load i32, i32* %15, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %107
  %136 = load i8*, i8** %14, align 8
  br label %141

137:                                              ; preds = %107
  %138 = load %struct.disk*, %struct.disk** %12, align 8
  %139 = getelementptr inbounds %struct.disk, %struct.disk* %138, i32 0, i32 4
  %140 = load i8*, i8** %139, align 8
  br label %141

141:                                              ; preds = %137, %135
  %142 = phi i8* [ %136, %135 ], [ %140, %137 ]
  %143 = call i32 @g_conf_cat_escaped(%struct.sbuf* %132, i8* %142)
  %144 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %145 = call i32 @sbuf_cat(%struct.sbuf* %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %146 = load %struct.bio.0*, %struct.bio.0** %11, align 8
  %147 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %146, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %147, align 8
  %148 = load i8*, i8** @DISK_IDENT_SIZE, align 8
  %149 = load %struct.bio.0*, %struct.bio.0** %11, align 8
  %150 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  %151 = load i8*, i8** %14, align 8
  %152 = load %struct.bio.0*, %struct.bio.0** %11, align 8
  %153 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = load %struct.disk*, %struct.disk** %12, align 8
  %155 = getelementptr inbounds %struct.disk, %struct.disk* %154, i32 0, i32 3
  %156 = load i32 (%struct.bio*)*, i32 (%struct.bio*)** %155, align 8
  %157 = load %struct.bio.0*, %struct.bio.0** %11, align 8
  %158 = bitcast %struct.bio.0* %157 to %struct.bio*
  %159 = call i32 %156(%struct.bio* %158)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %141
  %162 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* %163)
  %165 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %166 = load i8*, i8** %14, align 8
  %167 = call i32 @g_conf_cat_escaped(%struct.sbuf* %165, i8* %166)
  %168 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %169 = call i32 @sbuf_cat(%struct.sbuf* %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %170

170:                                              ; preds = %161, %141
  %171 = load %struct.bio.0*, %struct.bio.0** %11, align 8
  %172 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %171, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8** %172, align 8
  %173 = load i8*, i8** @DISK_IDENT_SIZE, align 8
  %174 = load %struct.bio.0*, %struct.bio.0** %11, align 8
  %175 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %174, i32 0, i32 2
  store i8* %173, i8** %175, align 8
  %176 = load i8*, i8** %14, align 8
  %177 = load %struct.bio.0*, %struct.bio.0** %11, align 8
  %178 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  %179 = load %struct.disk*, %struct.disk** %12, align 8
  %180 = getelementptr inbounds %struct.disk, %struct.disk* %179, i32 0, i32 3
  %181 = load i32 (%struct.bio*)*, i32 (%struct.bio*)** %180, align 8
  %182 = load %struct.bio.0*, %struct.bio.0** %11, align 8
  %183 = bitcast %struct.bio.0* %182 to %struct.bio*
  %184 = call i32 %181(%struct.bio* %183)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %170
  %187 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %187, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* %188)
  %190 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %191 = load i8*, i8** %14, align 8
  %192 = call i32 @g_conf_cat_escaped(%struct.sbuf* %190, i8* %191)
  %193 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %194 = call i32 @sbuf_cat(%struct.sbuf* %193, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  br label %195

195:                                              ; preds = %186, %170
  %196 = load %struct.bio.0*, %struct.bio.0** %11, align 8
  %197 = call i32 @g_destroy_bio(%struct.bio.0* %196)
  %198 = load i8*, i8** %14, align 8
  %199 = call i32 @g_free(i8* %198)
  br label %211

200:                                              ; preds = %100
  %201 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %202 = load i8*, i8** %7, align 8
  %203 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %202)
  %204 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %205 = load %struct.disk*, %struct.disk** %12, align 8
  %206 = getelementptr inbounds %struct.disk, %struct.disk* %205, i32 0, i32 4
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @g_conf_cat_escaped(%struct.sbuf* %204, i8* %207)
  %209 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %210 = call i32 @sbuf_cat(%struct.sbuf* %209, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %211

211:                                              ; preds = %200, %195
  %212 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %213 = load i8*, i8** %7, align 8
  %214 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %212, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* %213)
  %215 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %216 = load %struct.disk*, %struct.disk** %12, align 8
  %217 = getelementptr inbounds %struct.disk, %struct.disk* %216, i32 0, i32 5
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @g_conf_cat_escaped(%struct.sbuf* %215, i8* %218)
  %220 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %221 = call i32 @sbuf_cat(%struct.sbuf* %220, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  br label %222

222:                                              ; preds = %26, %30, %211, %41
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, ...) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i8* @g_malloc(i8*, i32) #1

declare dso_local %struct.bio.0* @g_alloc_bio(...) #1

declare dso_local i32 @g_conf_cat_escaped(%struct.sbuf*, i8*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio.0*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
