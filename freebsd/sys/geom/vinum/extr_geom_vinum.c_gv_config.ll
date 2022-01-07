; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_geom = type { %struct.gv_softc* }
%struct.gv_softc = type { i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"saveconfig\00", align 1
@GV_EVENT_SAVE_CONFIG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"getconfig\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"no comment parameter given\00", align 1
@GV_CFG_LEN = common dso_local global i32 0, align 4
@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"raid5\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"rebuildparity\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"checkparity\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"resetconfig\00", align 1
@GV_EVENT_RESET_CONFIG = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"stripe\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"setstate\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Unknown verb parameter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*, i8*)* @gv_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv_config(%struct.gctl_req* %0, %struct.g_class* %1, i8* %2) #0 {
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.g_geom*, align 8
  %8 = alloca %struct.gv_softc*, align 8
  %9 = alloca %struct.sbuf*, align 8
  %10 = alloca i8*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store %struct.g_class* %1, %struct.g_class** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = call i32 (...) @g_topology_assert()
  %12 = load %struct.g_class*, %struct.g_class** %5, align 8
  %13 = getelementptr inbounds %struct.g_class, %struct.g_class* %12, i32 0, i32 0
  %14 = call %struct.g_geom* @LIST_FIRST(i32* %13)
  store %struct.g_geom* %14, %struct.g_geom** %7, align 8
  %15 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %16 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %15, i32 0, i32 0
  %17 = load %struct.gv_softc*, %struct.gv_softc** %16, align 8
  store %struct.gv_softc* %17, %struct.gv_softc** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load %struct.gv_softc*, %struct.gv_softc** %8, align 8
  %23 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %24 = call i32 @gv_attach(%struct.gv_softc* %22, %struct.gctl_req* %23)
  br label %201

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %31 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %32 = call i32 @gv_concat(%struct.g_geom* %30, %struct.gctl_req* %31)
  br label %200

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load %struct.gv_softc*, %struct.gv_softc** %8, align 8
  %39 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %40 = call i32 @gv_detach(%struct.gv_softc* %38, %struct.gctl_req* %39)
  br label %199

41:                                               ; preds = %33
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %47 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %48 = call i32 @gv_list(%struct.g_geom* %46, %struct.gctl_req* %47)
  br label %198

49:                                               ; preds = %41
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load %struct.gv_softc*, %struct.gv_softc** %8, align 8
  %55 = load i32, i32* @GV_EVENT_SAVE_CONFIG, align 4
  %56 = load %struct.gv_softc*, %struct.gv_softc** %8, align 8
  %57 = call i32 @gv_post_event(%struct.gv_softc* %54, i32 %55, %struct.gv_softc* %56, i32* null, i32 0, i32 0)
  br label %197

58:                                               ; preds = %49
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %89, label %62

62:                                               ; preds = %58
  %63 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %64 = call i8* @gctl_get_param(%struct.gctl_req* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* null)
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %69 = call i32 @gctl_error(%struct.gctl_req* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %201

70:                                               ; preds = %62
  %71 = load i32, i32* @GV_CFG_LEN, align 4
  %72 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %73 = call %struct.sbuf* @sbuf_new(i32* null, i32* null, i32 %71, i32 %72)
  store %struct.sbuf* %73, %struct.sbuf** %9, align 8
  %74 = load %struct.gv_softc*, %struct.gv_softc** %8, align 8
  %75 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @gv_format_config(%struct.gv_softc* %74, %struct.sbuf* %75, i32 0, i8* %76)
  %78 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %79 = call i32 @sbuf_finish(%struct.sbuf* %78)
  %80 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %81 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %82 = call i32 @sbuf_data(%struct.sbuf* %81)
  %83 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %84 = call i64 @sbuf_len(%struct.sbuf* %83)
  %85 = add nsw i64 %84, 1
  %86 = call i32 @gctl_set_param(%struct.gctl_req* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %82, i64 %85)
  %87 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %88 = call i32 @sbuf_delete(%struct.sbuf* %87)
  br label %196

89:                                               ; preds = %58
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %95 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %96 = call i32 @gv_create(%struct.g_geom* %94, %struct.gctl_req* %95)
  br label %195

97:                                               ; preds = %89
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %103 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %104 = call i32 @gv_mirror(%struct.g_geom* %102, %struct.gctl_req* %103)
  br label %194

105:                                              ; preds = %97
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %111 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %112 = call i32 @gv_move(%struct.g_geom* %110, %struct.gctl_req* %111)
  br label %193

113:                                              ; preds = %105
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %119 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %120 = call i32 @gv_raid5(%struct.g_geom* %118, %struct.gctl_req* %119)
  br label %192

121:                                              ; preds = %113
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125, %121
  %130 = load %struct.gv_softc*, %struct.gv_softc** %8, align 8
  %131 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %132 = call i32 @gv_parityop(%struct.gv_softc* %130, %struct.gctl_req* %131)
  br label %191

133:                                              ; preds = %125
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @strcmp(i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %139 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %140 = call i32 @gv_remove(%struct.g_geom* %138, %struct.gctl_req* %139)
  br label %190

141:                                              ; preds = %133
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %147 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %148 = call i32 @gv_rename(%struct.g_geom* %146, %struct.gctl_req* %147)
  br label %189

149:                                              ; preds = %141
  %150 = load i8*, i8** %6, align 8
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %149
  %154 = load %struct.gv_softc*, %struct.gv_softc** %8, align 8
  %155 = load i32, i32* @GV_EVENT_RESET_CONFIG, align 4
  %156 = load %struct.gv_softc*, %struct.gv_softc** %8, align 8
  %157 = call i32 @gv_post_event(%struct.gv_softc* %154, i32 %155, %struct.gv_softc* %156, i32* null, i32 0, i32 0)
  br label %188

158:                                              ; preds = %149
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %164 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %165 = call i32 @gv_start_obj(%struct.g_geom* %163, %struct.gctl_req* %164)
  br label %187

166:                                              ; preds = %158
  %167 = load i8*, i8** %6, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %172 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %173 = call i32 @gv_stripe(%struct.g_geom* %171, %struct.gctl_req* %172)
  br label %186

174:                                              ; preds = %166
  %175 = load i8*, i8** %6, align 8
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %180 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %181 = call i32 @gv_setstate(%struct.g_geom* %179, %struct.gctl_req* %180)
  br label %185

182:                                              ; preds = %174
  %183 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %184 = call i32 @gctl_error(%struct.gctl_req* %183, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %178
  br label %186

186:                                              ; preds = %185, %170
  br label %187

187:                                              ; preds = %186, %162
  br label %188

188:                                              ; preds = %187, %153
  br label %189

189:                                              ; preds = %188, %145
  br label %190

190:                                              ; preds = %189, %137
  br label %191

191:                                              ; preds = %190, %129
  br label %192

192:                                              ; preds = %191, %117
  br label %193

193:                                              ; preds = %192, %109
  br label %194

194:                                              ; preds = %193, %101
  br label %195

195:                                              ; preds = %194, %93
  br label %196

196:                                              ; preds = %195, %70
  br label %197

197:                                              ; preds = %196, %53
  br label %198

198:                                              ; preds = %197, %45
  br label %199

199:                                              ; preds = %198, %37
  br label %200

200:                                              ; preds = %199, %29
  br label %201

201:                                              ; preds = %67, %200, %21
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_geom* @LIST_FIRST(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @gv_attach(%struct.gv_softc*, %struct.gctl_req*) #1

declare dso_local i32 @gv_concat(%struct.g_geom*, %struct.gctl_req*) #1

declare dso_local i32 @gv_detach(%struct.gv_softc*, %struct.gctl_req*) #1

declare dso_local i32 @gv_list(%struct.g_geom*, %struct.gctl_req*) #1

declare dso_local i32 @gv_post_event(%struct.gv_softc*, i32, %struct.gv_softc*, i32*, i32, i32) #1

declare dso_local i8* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

declare dso_local %struct.sbuf* @sbuf_new(i32*, i32*, i32, i32) #1

declare dso_local i32 @gv_format_config(%struct.gv_softc*, %struct.sbuf*, i32, i8*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @gctl_set_param(%struct.gctl_req*, i8*, i32, i64) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i64 @sbuf_len(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @gv_create(%struct.g_geom*, %struct.gctl_req*) #1

declare dso_local i32 @gv_mirror(%struct.g_geom*, %struct.gctl_req*) #1

declare dso_local i32 @gv_move(%struct.g_geom*, %struct.gctl_req*) #1

declare dso_local i32 @gv_raid5(%struct.g_geom*, %struct.gctl_req*) #1

declare dso_local i32 @gv_parityop(%struct.gv_softc*, %struct.gctl_req*) #1

declare dso_local i32 @gv_remove(%struct.g_geom*, %struct.gctl_req*) #1

declare dso_local i32 @gv_rename(%struct.g_geom*, %struct.gctl_req*) #1

declare dso_local i32 @gv_start_obj(%struct.g_geom*, %struct.gctl_req*) #1

declare dso_local i32 @gv_stripe(%struct.g_geom*, %struct.gctl_req*) #1

declare dso_local i32 @gv_setstate(%struct.g_geom*, %struct.gctl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
