; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_list.c_gv_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_list.c_gv_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.gv_softc* }
%struct.gv_softc = type { i32 }
%struct.gctl_req = type { i32 }
%struct.gv_drive = type { i32 }
%struct.gv_plex = type { i32 }
%struct.gv_sd = type { i32 }
%struct.gv_volume = type { i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"no arguments given\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"no flags given\00", align 1
@GV_CFG_LEN = common dso_local global i32 0, align 4
@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"no command given\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"argv%d\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"unknown object '%s'\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"'%s' is not a drive\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"lv\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"'%s' is not a volume\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"lp\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"'%s' is not a plex\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"'%s' is not a subdisk\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"unknown command '%s'\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"config\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_list(%struct.g_geom* %0, %struct.gctl_req* %1) #0 {
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.gv_softc*, align 8
  %6 = alloca %struct.gv_drive*, align 8
  %7 = alloca %struct.gv_plex*, align 8
  %8 = alloca %struct.gv_sd*, align 8
  %9 = alloca %struct.gv_volume*, align 8
  %10 = alloca %struct.sbuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [20 x i8], align 16
  %17 = alloca i8*, align 8
  store %struct.g_geom* %0, %struct.g_geom** %3, align 8
  store %struct.gctl_req* %1, %struct.gctl_req** %4, align 8
  %18 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %19 = call i32* @gctl_get_paraml(%struct.gctl_req* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %24 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %385

25:                                               ; preds = %2
  %26 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %27 = call i32* @gctl_get_paraml(%struct.gctl_req* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %32 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %385

33:                                               ; preds = %25
  %34 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %35 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %34, i32 0, i32 0
  %36 = load %struct.gv_softc*, %struct.gv_softc** %35, align 8
  store %struct.gv_softc* %36, %struct.gv_softc** %5, align 8
  %37 = load i32, i32* @GV_CFG_LEN, align 4
  %38 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %39 = call %struct.sbuf* @sbuf_new(i32* null, i32* null, i32 %37, i32 %38)
  store %struct.sbuf* %39, %struct.sbuf** %10, align 8
  %40 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %41 = call i8* @gctl_get_param(%struct.gctl_req* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i8* %41, i8** %17, align 8
  %42 = load i8*, i8** %17, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %46 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %385

47:                                               ; preds = %33
  %48 = load i8*, i8** %17, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8*, i8** %17, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %149, label %55

55:                                               ; preds = %51, %47
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %125

59:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %121, %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %124

65:                                               ; preds = %60
  %66 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @snprintf(i8* %66, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %67)
  %69 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %71 = call i8* @gctl_get_param(%struct.gctl_req* %69, i8* %70, i32* null)
  store i8* %71, i8** %15, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %121

75:                                               ; preds = %65
  %76 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = call i32 @gv_object_type(%struct.gv_softc* %76, i8* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  switch i32 %79, label %116 [
    i32 128, label %80
    i32 130, label %89
    i32 129, label %98
    i32 131, label %107
  ]

80:                                               ; preds = %75
  %81 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = call %struct.gv_volume* @gv_find_vol(%struct.gv_softc* %81, i8* %82)
  store %struct.gv_volume* %83, %struct.gv_volume** %9, align 8
  %84 = load %struct.gv_volume*, %struct.gv_volume** %9, align 8
  %85 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @gv_lvi(%struct.gv_volume* %84, %struct.sbuf* %85, i32 %87)
  br label %120

89:                                               ; preds = %75
  %90 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = call %struct.gv_plex* @gv_find_plex(%struct.gv_softc* %90, i8* %91)
  store %struct.gv_plex* %92, %struct.gv_plex** %7, align 8
  %93 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %94 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @gv_lpi(%struct.gv_plex* %93, %struct.sbuf* %94, i32 %96)
  br label %120

98:                                               ; preds = %75
  %99 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = call %struct.gv_sd* @gv_find_sd(%struct.gv_softc* %99, i8* %100)
  store %struct.gv_sd* %101, %struct.gv_sd** %8, align 8
  %102 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %103 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @gv_lsi(%struct.gv_sd* %102, %struct.sbuf* %103, i32 %105)
  br label %120

107:                                              ; preds = %75
  %108 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = call %struct.gv_drive* @gv_find_drive(%struct.gv_softc* %108, i8* %109)
  store %struct.gv_drive* %110, %struct.gv_drive** %6, align 8
  %111 = load %struct.gv_drive*, %struct.gv_drive** %6, align 8
  %112 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @gv_ldi(%struct.gv_drive* %111, %struct.sbuf* %112, i32 %114)
  br label %120

116:                                              ; preds = %75
  %117 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %116, %107, %98, %89, %80
  br label %121

121:                                              ; preds = %120, %74
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %60

124:                                              ; preds = %60
  br label %148

125:                                              ; preds = %55
  %126 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %127 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %128 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %129 = call i32 @gv_ld(%struct.g_geom* %126, %struct.gctl_req* %127, %struct.sbuf* %128)
  %130 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %131 = call i32 @sbuf_printf(%struct.sbuf* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %132 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %133 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %134 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %135 = call i32 @gv_lv(%struct.g_geom* %132, %struct.gctl_req* %133, %struct.sbuf* %134)
  %136 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %137 = call i32 @sbuf_printf(%struct.sbuf* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %138 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %139 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %140 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %141 = call i32 @gv_lp(%struct.g_geom* %138, %struct.gctl_req* %139, %struct.sbuf* %140)
  %142 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %143 = call i32 @sbuf_printf(%struct.sbuf* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %144 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %145 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %146 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %147 = call i32 @gv_ls(%struct.g_geom* %144, %struct.gctl_req* %145, %struct.sbuf* %146)
  br label %148

148:                                              ; preds = %125, %124
  br label %373

149:                                              ; preds = %51
  %150 = load i8*, i8** %17, align 8
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %203, label %153

153:                                              ; preds = %149
  %154 = load i32*, i32** %11, align 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %197

157:                                              ; preds = %153
  store i32 0, i32* %12, align 4
  br label %158

158:                                              ; preds = %193, %157
  %159 = load i32, i32* %12, align 4
  %160 = load i32*, i32** %11, align 8
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %159, %161
  br i1 %162, label %163, label %196

163:                                              ; preds = %158
  %164 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @snprintf(i8* %164, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %165)
  %167 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %168 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %169 = call i8* @gctl_get_param(%struct.gctl_req* %167, i8* %168, i32* null)
  store i8* %169, i8** %15, align 8
  %170 = load i8*, i8** %15, align 8
  %171 = icmp eq i8* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  br label %193

173:                                              ; preds = %163
  %174 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %175 = load i8*, i8** %15, align 8
  %176 = call i32 @gv_object_type(%struct.gv_softc* %174, i8* %175)
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp ne i32 %177, 131
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %181 = load i8*, i8** %15, align 8
  %182 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %180, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* %181)
  br label %193

183:                                              ; preds = %173
  %184 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %185 = load i8*, i8** %15, align 8
  %186 = call %struct.gv_drive* @gv_find_drive(%struct.gv_softc* %184, i8* %185)
  store %struct.gv_drive* %186, %struct.gv_drive** %6, align 8
  %187 = load %struct.gv_drive*, %struct.gv_drive** %6, align 8
  %188 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %189 = load i32*, i32** %13, align 8
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @gv_ldi(%struct.gv_drive* %187, %struct.sbuf* %188, i32 %190)
  br label %192

192:                                              ; preds = %183
  br label %193

193:                                              ; preds = %192, %179, %172
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %12, align 4
  br label %158

196:                                              ; preds = %158
  br label %202

197:                                              ; preds = %153
  %198 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %199 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %200 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %201 = call i32 @gv_ld(%struct.g_geom* %198, %struct.gctl_req* %199, %struct.sbuf* %200)
  br label %202

202:                                              ; preds = %197, %196
  br label %372

203:                                              ; preds = %149
  %204 = load i8*, i8** %17, align 8
  %205 = call i32 @strcmp(i8* %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %257, label %207

207:                                              ; preds = %203
  %208 = load i32*, i32** %11, align 8
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %251

211:                                              ; preds = %207
  store i32 0, i32* %12, align 4
  br label %212

212:                                              ; preds = %247, %211
  %213 = load i32, i32* %12, align 4
  %214 = load i32*, i32** %11, align 8
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %213, %215
  br i1 %216, label %217, label %250

217:                                              ; preds = %212
  %218 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @snprintf(i8* %218, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %219)
  %221 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %222 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %223 = call i8* @gctl_get_param(%struct.gctl_req* %221, i8* %222, i32* null)
  store i8* %223, i8** %15, align 8
  %224 = load i8*, i8** %15, align 8
  %225 = icmp eq i8* %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %217
  br label %247

227:                                              ; preds = %217
  %228 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %229 = load i8*, i8** %15, align 8
  %230 = call i32 @gv_object_type(%struct.gv_softc* %228, i8* %229)
  store i32 %230, i32* %14, align 4
  %231 = load i32, i32* %14, align 4
  %232 = icmp ne i32 %231, 128
  br i1 %232, label %233, label %237

233:                                              ; preds = %227
  %234 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %235 = load i8*, i8** %15, align 8
  %236 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %234, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %235)
  br label %247

237:                                              ; preds = %227
  %238 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %239 = load i8*, i8** %15, align 8
  %240 = call %struct.gv_volume* @gv_find_vol(%struct.gv_softc* %238, i8* %239)
  store %struct.gv_volume* %240, %struct.gv_volume** %9, align 8
  %241 = load %struct.gv_volume*, %struct.gv_volume** %9, align 8
  %242 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %243 = load i32*, i32** %13, align 8
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @gv_lvi(%struct.gv_volume* %241, %struct.sbuf* %242, i32 %244)
  br label %246

246:                                              ; preds = %237
  br label %247

247:                                              ; preds = %246, %233, %226
  %248 = load i32, i32* %12, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %12, align 4
  br label %212

250:                                              ; preds = %212
  br label %256

251:                                              ; preds = %207
  %252 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %253 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %254 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %255 = call i32 @gv_lv(%struct.g_geom* %252, %struct.gctl_req* %253, %struct.sbuf* %254)
  br label %256

256:                                              ; preds = %251, %250
  br label %371

257:                                              ; preds = %203
  %258 = load i8*, i8** %17, align 8
  %259 = call i32 @strcmp(i8* %258, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %311, label %261

261:                                              ; preds = %257
  %262 = load i32*, i32** %11, align 8
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %305

265:                                              ; preds = %261
  store i32 0, i32* %12, align 4
  br label %266

266:                                              ; preds = %301, %265
  %267 = load i32, i32* %12, align 4
  %268 = load i32*, i32** %11, align 8
  %269 = load i32, i32* %268, align 4
  %270 = icmp slt i32 %267, %269
  br i1 %270, label %271, label %304

271:                                              ; preds = %266
  %272 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %273 = load i32, i32* %12, align 4
  %274 = call i32 @snprintf(i8* %272, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %273)
  %275 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %276 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %277 = call i8* @gctl_get_param(%struct.gctl_req* %275, i8* %276, i32* null)
  store i8* %277, i8** %15, align 8
  %278 = load i8*, i8** %15, align 8
  %279 = icmp eq i8* %278, null
  br i1 %279, label %280, label %281

280:                                              ; preds = %271
  br label %301

281:                                              ; preds = %271
  %282 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %283 = load i8*, i8** %15, align 8
  %284 = call i32 @gv_object_type(%struct.gv_softc* %282, i8* %283)
  store i32 %284, i32* %14, align 4
  %285 = load i32, i32* %14, align 4
  %286 = icmp ne i32 %285, 130
  br i1 %286, label %287, label %291

287:                                              ; preds = %281
  %288 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %289 = load i8*, i8** %15, align 8
  %290 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* %289)
  br label %301

291:                                              ; preds = %281
  %292 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %293 = load i8*, i8** %15, align 8
  %294 = call %struct.gv_plex* @gv_find_plex(%struct.gv_softc* %292, i8* %293)
  store %struct.gv_plex* %294, %struct.gv_plex** %7, align 8
  %295 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %296 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %297 = load i32*, i32** %13, align 8
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @gv_lpi(%struct.gv_plex* %295, %struct.sbuf* %296, i32 %298)
  br label %300

300:                                              ; preds = %291
  br label %301

301:                                              ; preds = %300, %287, %280
  %302 = load i32, i32* %12, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %12, align 4
  br label %266

304:                                              ; preds = %266
  br label %310

305:                                              ; preds = %261
  %306 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %307 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %308 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %309 = call i32 @gv_lp(%struct.g_geom* %306, %struct.gctl_req* %307, %struct.sbuf* %308)
  br label %310

310:                                              ; preds = %305, %304
  br label %370

311:                                              ; preds = %257
  %312 = load i8*, i8** %17, align 8
  %313 = call i32 @strcmp(i8* %312, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %365, label %315

315:                                              ; preds = %311
  %316 = load i32*, i32** %11, align 8
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %359

319:                                              ; preds = %315
  store i32 0, i32* %12, align 4
  br label %320

320:                                              ; preds = %355, %319
  %321 = load i32, i32* %12, align 4
  %322 = load i32*, i32** %11, align 8
  %323 = load i32, i32* %322, align 4
  %324 = icmp slt i32 %321, %323
  br i1 %324, label %325, label %358

325:                                              ; preds = %320
  %326 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %327 = load i32, i32* %12, align 4
  %328 = call i32 @snprintf(i8* %326, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %327)
  %329 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %330 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %331 = call i8* @gctl_get_param(%struct.gctl_req* %329, i8* %330, i32* null)
  store i8* %331, i8** %15, align 8
  %332 = load i8*, i8** %15, align 8
  %333 = icmp eq i8* %332, null
  br i1 %333, label %334, label %335

334:                                              ; preds = %325
  br label %355

335:                                              ; preds = %325
  %336 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %337 = load i8*, i8** %15, align 8
  %338 = call i32 @gv_object_type(%struct.gv_softc* %336, i8* %337)
  store i32 %338, i32* %14, align 4
  %339 = load i32, i32* %14, align 4
  %340 = icmp ne i32 %339, 129
  br i1 %340, label %341, label %345

341:                                              ; preds = %335
  %342 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %343 = load i8*, i8** %15, align 8
  %344 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %342, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* %343)
  br label %355

345:                                              ; preds = %335
  %346 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %347 = load i8*, i8** %15, align 8
  %348 = call %struct.gv_sd* @gv_find_sd(%struct.gv_softc* %346, i8* %347)
  store %struct.gv_sd* %348, %struct.gv_sd** %8, align 8
  %349 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %350 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %351 = load i32*, i32** %13, align 8
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @gv_lsi(%struct.gv_sd* %349, %struct.sbuf* %350, i32 %352)
  br label %354

354:                                              ; preds = %345
  br label %355

355:                                              ; preds = %354, %341, %334
  %356 = load i32, i32* %12, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %12, align 4
  br label %320

358:                                              ; preds = %320
  br label %364

359:                                              ; preds = %315
  %360 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %361 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %362 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %363 = call i32 @gv_ls(%struct.g_geom* %360, %struct.gctl_req* %361, %struct.sbuf* %362)
  br label %364

364:                                              ; preds = %359, %358
  br label %369

365:                                              ; preds = %311
  %366 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %367 = load i8*, i8** %17, align 8
  %368 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %366, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* %367)
  br label %369

369:                                              ; preds = %365, %364
  br label %370

370:                                              ; preds = %369, %310
  br label %371

371:                                              ; preds = %370, %256
  br label %372

372:                                              ; preds = %371, %202
  br label %373

373:                                              ; preds = %372, %148
  %374 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %375 = call i32 @sbuf_finish(%struct.sbuf* %374)
  %376 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %377 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %378 = call i32 @sbuf_data(%struct.sbuf* %377)
  %379 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %380 = call i64 @sbuf_len(%struct.sbuf* %379)
  %381 = add nsw i64 %380, 1
  %382 = call i32 @gctl_set_param(%struct.gctl_req* %376, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %378, i64 %381)
  %383 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %384 = call i32 @sbuf_delete(%struct.sbuf* %383)
  br label %385

385:                                              ; preds = %373, %44, %30, %22
  ret void
}

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local %struct.sbuf* @sbuf_new(i32*, i32*, i32, i32) #1

declare dso_local i8* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @gv_object_type(%struct.gv_softc*, i8*) #1

declare dso_local %struct.gv_volume* @gv_find_vol(%struct.gv_softc*, i8*) #1

declare dso_local i32 @gv_lvi(%struct.gv_volume*, %struct.sbuf*, i32) #1

declare dso_local %struct.gv_plex* @gv_find_plex(%struct.gv_softc*, i8*) #1

declare dso_local i32 @gv_lpi(%struct.gv_plex*, %struct.sbuf*, i32) #1

declare dso_local %struct.gv_sd* @gv_find_sd(%struct.gv_softc*, i8*) #1

declare dso_local i32 @gv_lsi(%struct.gv_sd*, %struct.sbuf*, i32) #1

declare dso_local %struct.gv_drive* @gv_find_drive(%struct.gv_softc*, i8*) #1

declare dso_local i32 @gv_ldi(%struct.gv_drive*, %struct.sbuf*, i32) #1

declare dso_local i32 @gv_ld(%struct.g_geom*, %struct.gctl_req*, %struct.sbuf*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*) #1

declare dso_local i32 @gv_lv(%struct.g_geom*, %struct.gctl_req*, %struct.sbuf*) #1

declare dso_local i32 @gv_lp(%struct.g_geom*, %struct.gctl_req*, %struct.sbuf*) #1

declare dso_local i32 @gv_ls(%struct.g_geom*, %struct.gctl_req*, %struct.sbuf*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @gctl_set_param(%struct.gctl_req*, i8*, i32, i64) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i64 @sbuf_len(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
