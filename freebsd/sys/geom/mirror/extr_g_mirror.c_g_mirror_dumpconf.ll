; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_geom = type { %struct.g_mirror_softc* }
%struct.g_mirror_softc = type { i32, i32, i64, i64, i64, i32, i64, i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.g_geom* }
%struct.g_consumer = type { %struct.g_mirror_disk* }
%struct.g_mirror_disk = type { i64, i64, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s<ID>%u</ID>\0A\00", align 1
@G_MIRROR_DISK_STATE_SYNCHRONIZING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%s<Synchronized>\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0%\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%u%%\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"</Synchronized>\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"%s<BytesSynced>%jd</BytesSynced>\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"%s<SyncID>%u</SyncID>\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s<GenID>%u</GenID>\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%s<Flags>\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@G_MIRROR_DISK_FLAG_DIRTY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"DIRTY\00", align 1
@G_MIRROR_DISK_FLAG_HARDCODED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"HARDCODED\00", align 1
@G_MIRROR_DISK_FLAG_INACTIVE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"INACTIVE\00", align 1
@G_MIRROR_DISK_FLAG_SYNCHRONIZING = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"SYNCHRONIZING\00", align 1
@G_MIRROR_DISK_FLAG_FORCE_SYNC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"FORCE_SYNC\00", align 1
@G_MIRROR_DISK_FLAG_BROKEN = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"BROKEN\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"</Flags>\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"%s<Priority>%u</Priority>\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"%s<State>%s</State>\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"%s<Type>\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"AUTOMATIC\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"MANUAL\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"</Type>\0A\00", align 1
@G_MIRROR_DEVICE_FLAG_NOFAILSYNC = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"NOFAILSYNC\00", align 1
@G_MIRROR_DEVICE_FLAG_NOAUTOSYNC = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"NOAUTOSYNC\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"%s<Slice>%u</Slice>\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"%s<Balance>%s</Balance>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"%s<Components>%u</Components>\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"%s<State>\00", align 1
@G_MIRROR_DEVICE_STATE_STARTING = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"STARTING\00", align 1
@G_MIRROR_DISK_STATE_ACTIVE = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"DEGRADED\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"</State>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i8*, %struct.g_geom*, %struct.g_consumer*, %struct.g_provider*)* @g_mirror_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_dumpconf(%struct.sbuf* %0, i8* %1, %struct.g_geom* %2, %struct.g_consumer* %3, %struct.g_provider* %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.g_mirror_softc*, align 8
  %12 = alloca %struct.g_mirror_disk*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.g_geom* %2, %struct.g_geom** %8, align 8
  store %struct.g_consumer* %3, %struct.g_consumer** %9, align 8
  store %struct.g_provider* %4, %struct.g_provider** %10, align 8
  %15 = call i32 (...) @g_topology_assert()
  %16 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %17 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %16, i32 0, i32 0
  %18 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %17, align 8
  store %struct.g_mirror_softc* %18, %struct.g_mirror_softc** %11, align 8
  %19 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %20 = icmp eq %struct.g_mirror_softc* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %403

22:                                               ; preds = %5
  %23 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %24 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %25 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %24, i32 0, i32 10
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.g_geom*, %struct.g_geom** %26, align 8
  %28 = icmp eq %struct.g_geom* %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %403

30:                                               ; preds = %22
  %31 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %32 = icmp ne %struct.g_provider* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %403

34:                                               ; preds = %30
  %35 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %36 = icmp ne %struct.g_consumer* %35, null
  br i1 %36, label %37, label %261

37:                                               ; preds = %34
  %38 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %39 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %38, i32 0, i32 0
  %40 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %39, align 8
  store %struct.g_mirror_disk* %40, %struct.g_mirror_disk** %12, align 8
  %41 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %42 = icmp eq %struct.g_mirror_disk* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %403

44:                                               ; preds = %37
  %45 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %48 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %50)
  %52 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %53 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @G_MIRROR_DISK_STATE_SYNCHRONIZING, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %100

57:                                               ; preds = %44
  %58 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %62 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %68 = call i32 @sbuf_cat(%struct.sbuf* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %83

69:                                               ; preds = %57
  %70 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %71 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %72 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %74, 100
  %76 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %77 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sdiv i32 %75, %78
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %69, %66
  %84 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %85 = call i32 @sbuf_cat(%struct.sbuf* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %86 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %87 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %95 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %93, i32 %97)
  br label %99

99:                                               ; preds = %91, %83
  br label %100

100:                                              ; preds = %99, %44
  %101 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %104 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %102, i32 %106)
  %108 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %111 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %109, i32 %112)
  %114 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %115)
  %117 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %118 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %100
  %122 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %123 = call i32 @sbuf_cat(%struct.sbuf* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %245

124:                                              ; preds = %100
  store i32 1, i32* %13, align 4
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %127 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @G_MIRROR_DISK_FLAG_DIRTY, align 4
  %130 = sext i32 %129 to i64
  %131 = and i64 %128, %130
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %125
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %138 = call i32 @sbuf_cat(%struct.sbuf* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %140

139:                                              ; preds = %133
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %139, %136
  %141 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %142 = call i32 @sbuf_cat(%struct.sbuf* %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %125
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  %146 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %147 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* @G_MIRROR_DISK_FLAG_HARDCODED, align 4
  %150 = sext i32 %149 to i64
  %151 = and i64 %148, %150
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %145
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %158 = call i32 @sbuf_cat(%struct.sbuf* %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %160

159:                                              ; preds = %153
  store i32 0, i32* %13, align 4
  br label %160

160:                                              ; preds = %159, %156
  %161 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %162 = call i32 @sbuf_cat(%struct.sbuf* %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %145
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164
  %166 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %167 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* @G_MIRROR_DISK_FLAG_INACTIVE, align 4
  %170 = sext i32 %169 to i64
  %171 = and i64 %168, %170
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %165
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %178 = call i32 @sbuf_cat(%struct.sbuf* %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %180

179:                                              ; preds = %173
  store i32 0, i32* %13, align 4
  br label %180

180:                                              ; preds = %179, %176
  %181 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %182 = call i32 @sbuf_cat(%struct.sbuf* %181, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  br label %183

183:                                              ; preds = %180, %165
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %187 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* @G_MIRROR_DISK_FLAG_SYNCHRONIZING, align 4
  %190 = sext i32 %189 to i64
  %191 = and i64 %188, %190
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %185
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %198 = call i32 @sbuf_cat(%struct.sbuf* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %200

199:                                              ; preds = %193
  store i32 0, i32* %13, align 4
  br label %200

200:                                              ; preds = %199, %196
  %201 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %202 = call i32 @sbuf_cat(%struct.sbuf* %201, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %185
  br label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204
  %206 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %207 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* @G_MIRROR_DISK_FLAG_FORCE_SYNC, align 4
  %210 = sext i32 %209 to i64
  %211 = and i64 %208, %210
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %205
  %214 = load i32, i32* %13, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %213
  %217 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %218 = call i32 @sbuf_cat(%struct.sbuf* %217, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %220

219:                                              ; preds = %213
  store i32 0, i32* %13, align 4
  br label %220

220:                                              ; preds = %219, %216
  %221 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %222 = call i32 @sbuf_cat(%struct.sbuf* %221, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  br label %223

223:                                              ; preds = %220, %205
  br label %224

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %224
  %226 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %227 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* @G_MIRROR_DISK_FLAG_BROKEN, align 4
  %230 = sext i32 %229 to i64
  %231 = and i64 %228, %230
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %225
  %234 = load i32, i32* %13, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %233
  %237 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %238 = call i32 @sbuf_cat(%struct.sbuf* %237, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %240

239:                                              ; preds = %233
  store i32 0, i32* %13, align 4
  br label %240

240:                                              ; preds = %239, %236
  %241 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %242 = call i32 @sbuf_cat(%struct.sbuf* %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %243

243:                                              ; preds = %240, %225
  br label %244

244:                                              ; preds = %243
  br label %245

245:                                              ; preds = %244, %121
  %246 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %247 = call i32 @sbuf_cat(%struct.sbuf* %246, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %248 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %249 = load i8*, i8** %7, align 8
  %250 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %251 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %248, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* %249, i32 %252)
  %254 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %255 = load i8*, i8** %7, align 8
  %256 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %12, align 8
  %257 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @g_mirror_disk_state2str(i64 %258)
  %260 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %254, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* %255, i32 %259)
  br label %402

261:                                              ; preds = %34
  %262 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %263 = load i8*, i8** %7, align 8
  %264 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %262, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* %263)
  %265 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %266 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  switch i32 %267, label %274 [
    i32 129, label %268
    i32 128, label %271
  ]

268:                                              ; preds = %261
  %269 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %270 = call i32 @sbuf_cat(%struct.sbuf* %269, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  br label %277

271:                                              ; preds = %261
  %272 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %273 = call i32 @sbuf_cat(%struct.sbuf* %272, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  br label %277

274:                                              ; preds = %261
  %275 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %276 = call i32 @sbuf_cat(%struct.sbuf* %275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  br label %277

277:                                              ; preds = %274, %271, %268
  %278 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %279 = call i32 @sbuf_cat(%struct.sbuf* %278, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  %280 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %281 = load i8*, i8** %7, align 8
  %282 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %283 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %282, i32 0, i32 9
  %284 = load i64, i64* %283, align 8
  %285 = inttoptr i64 %284 to i8*
  %286 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %280, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %281, i8* %285)
  %287 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %288 = load i8*, i8** %7, align 8
  %289 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %290 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %289, i32 0, i32 8
  %291 = load i32, i32* %290, align 4
  %292 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %287, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %288, i32 %291)
  %293 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %294 = load i8*, i8** %7, align 8
  %295 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %296 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %295, i32 0, i32 7
  %297 = load i32, i32* %296, align 8
  %298 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %293, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %294, i32 %297)
  %299 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %300 = load i8*, i8** %7, align 8
  %301 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %299, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %300)
  %302 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %303 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %277
  %307 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %308 = call i32 @sbuf_cat(%struct.sbuf* %307, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %350

309:                                              ; preds = %277
  store i32 1, i32* %14, align 4
  br label %310

310:                                              ; preds = %309
  %311 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %312 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %311, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = load i32, i32* @G_MIRROR_DEVICE_FLAG_NOFAILSYNC, align 4
  %315 = sext i32 %314 to i64
  %316 = and i64 %313, %315
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %328

318:                                              ; preds = %310
  %319 = load i32, i32* %14, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %318
  %322 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %323 = call i32 @sbuf_cat(%struct.sbuf* %322, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %325

324:                                              ; preds = %318
  store i32 0, i32* %14, align 4
  br label %325

325:                                              ; preds = %324, %321
  %326 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %327 = call i32 @sbuf_cat(%struct.sbuf* %326, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  br label %328

328:                                              ; preds = %325, %310
  br label %329

329:                                              ; preds = %328
  br label %330

330:                                              ; preds = %329
  %331 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %332 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = load i32, i32* @G_MIRROR_DEVICE_FLAG_NOAUTOSYNC, align 4
  %335 = sext i32 %334 to i64
  %336 = and i64 %333, %335
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %348

338:                                              ; preds = %330
  %339 = load i32, i32* %14, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %344, label %341

341:                                              ; preds = %338
  %342 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %343 = call i32 @sbuf_cat(%struct.sbuf* %342, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %345

344:                                              ; preds = %338
  store i32 0, i32* %14, align 4
  br label %345

345:                                              ; preds = %344, %341
  %346 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %347 = call i32 @sbuf_cat(%struct.sbuf* %346, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  br label %348

348:                                              ; preds = %345, %330
  br label %349

349:                                              ; preds = %348
  br label %350

350:                                              ; preds = %349, %306
  %351 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %352 = call i32 @sbuf_cat(%struct.sbuf* %351, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %353 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %354 = load i8*, i8** %7, align 8
  %355 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %356 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %355, i32 0, i32 6
  %357 = load i64, i64* %356, align 8
  %358 = inttoptr i64 %357 to i8*
  %359 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %353, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i8* %354, i8* %358)
  %360 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %361 = load i8*, i8** %7, align 8
  %362 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %363 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %362, i32 0, i32 5
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @balance_name(i32 %364)
  %366 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %360, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i8* %361, i32 %365)
  %367 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %368 = load i8*, i8** %7, align 8
  %369 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %370 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %369, i32 0, i32 3
  %371 = load i64, i64* %370, align 8
  %372 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %367, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i8* %368, i64 %371)
  %373 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %374 = load i8*, i8** %7, align 8
  %375 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %373, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* %374)
  %376 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %377 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %376, i32 0, i32 4
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @G_MIRROR_DEVICE_STATE_STARTING, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %381, label %384

381:                                              ; preds = %350
  %382 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %383 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %382, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  br label %399

384:                                              ; preds = %350
  %385 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %386 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %385, i32 0, i32 3
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %11, align 8
  %389 = load i32, i32* @G_MIRROR_DISK_STATE_ACTIVE, align 4
  %390 = call i64 @g_mirror_ndisks(%struct.g_mirror_softc* %388, i32 %389)
  %391 = icmp eq i64 %387, %390
  br i1 %391, label %392, label %395

392:                                              ; preds = %384
  %393 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %394 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %393, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0))
  br label %398

395:                                              ; preds = %384
  %396 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %397 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %396, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0))
  br label %398

398:                                              ; preds = %395, %392
  br label %399

399:                                              ; preds = %398, %381
  %400 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %401 = call i32 @sbuf_cat(%struct.sbuf* %400, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0))
  br label %402

402:                                              ; preds = %399, %245
  br label %403

403:                                              ; preds = %21, %29, %43, %402, %33
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, ...) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @g_mirror_disk_state2str(i64) #1

declare dso_local i32 @balance_name(i32) #1

declare dso_local i64 @g_mirror_ndisks(%struct.g_mirror_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
