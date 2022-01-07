; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvram2env/extr_nvram2env.c_nvram2env_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvram2env/extr_nvram2env.c_nvram2env_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvram2env_softc = type { i64, i64, i32, i32, i32, i32, i64, i32* }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"nvram\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@CFE_NVRAM_SIGNATURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"maxsize\00", align 1
@NVRAM_MAX_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@NVRAM_FLAGS_GENERIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"fallbackbase\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [52 x i8] c"base=0x%08x sig=0x%08x maxsize=0x%08x flags=0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Found NVRAM at %#x\0A\00", align 1
@NVRAM_FLAGS_UBOOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"Use NVRAM at %#x\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"NVRAM to ENV pseudo-device\00", align 1
@BUS_PROBE_SPECIFIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvram2env_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvram2env_softc*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.nvram2env_softc* @device_get_softc(i32 %8)
  store %struct.nvram2env_softc* %9, %struct.nvram2env_softc** %7, align 8
  %10 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %11 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %10, i32 0, i32 7
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %230

16:                                               ; preds = %1
  %17 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %18 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_get_unit(i32 %22)
  %24 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %25 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %24, i32 0, i32 0
  %26 = bitcast i64* %25 to i32*
  %27 = call i64 @resource_int_value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %31 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29, %21
  %35 = load i64, i64* @CFE_NVRAM_SIGNATURE, align 8
  %36 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %37 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %29
  br label %39

39:                                               ; preds = %38, %16
  %40 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %41 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_get_unit(i32 %45)
  %47 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %48 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %47, i32 0, i32 1
  %49 = bitcast i64* %48 to i32*
  %50 = call i64 @resource_int_value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %54 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52, %44
  %58 = load i64, i64* @NVRAM_MAX_SIZE, align 8
  %59 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %60 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %52
  br label %62

62:                                               ; preds = %61, %39
  %63 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %64 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %62
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @device_get_unit(i32 %68)
  %70 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %71 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %70, i32 0, i32 2
  %72 = call i64 @resource_int_value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %76 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74, %67
  %80 = load i32, i32* @NVRAM_FLAGS_GENERIC, align 4
  %81 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %82 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %74
  br label %84

84:                                               ; preds = %83, %62
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %207, %84
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 2
  br i1 %87, label %88, label %210

88:                                               ; preds = %85
  %89 = load i32, i32* %4, align 4
  switch i32 %89, label %108 [
    i32 0, label %90
    i32 1, label %91
    i32 2, label %91
  ]

90:                                               ; preds = %88
  br label %109

91:                                               ; preds = %88, %88
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @device_get_unit(i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %94, 1
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)
  %98 = call i64 @resource_int_value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %93, i8* %97, i32* %5)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %5, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100, %91
  br label %207

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %107 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  br label %109

108:                                              ; preds = %88
  br label %109

109:                                              ; preds = %108, %104, %90
  %110 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %111 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %207

115:                                              ; preds = %109
  %116 = load i64, i64* @bootverbose, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  %119 = load i32, i32* %3, align 4
  %120 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %121 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %124 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %127 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %130 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %122, i64 %125, i64 %128, i32 %131)
  br label %133

133:                                              ; preds = %118, %115
  %134 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %135 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %134, i32 0, i32 7
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %138 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %142 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %145 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %144, i32 0, i32 6
  %146 = call i64 @bus_space_map(i32* %136, i64 %140, i64 %143, i32 0, i64* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %133
  br label %207

149:                                              ; preds = %133
  %150 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %151 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %150, i32 0, i32 7
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %154 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @bus_space_read_4(i32* %152, i64 %155, i32 0)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %160 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %158, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %149
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* %5, align 4
  %166 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %164, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %165)
  %167 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %168 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %167, i32 0, i32 4
  store i32 0, i32* %168, align 8
  br label %218

169:                                              ; preds = %149
  %170 = load i32, i32* %6, align 4
  %171 = call i64 @htole32(i32 %170)
  %172 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %173 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %171, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %169
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* %5, align 4
  %179 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %177, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %178)
  %180 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %181 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %180, i32 0, i32 4
  store i32 1, i32* %181, align 8
  br label %218

182:                                              ; preds = %169
  %183 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %184 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @NVRAM_FLAGS_UBOOT, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %182
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* %5, align 4
  %192 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* %6, align 4
  %194 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %195 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %194, i32 0, i32 5
  store i32 %193, i32* %195, align 4
  br label %218

196:                                              ; preds = %182
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197
  %199 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %200 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %199, i32 0, i32 7
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %203 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @NVRAM_MAX_SIZE, align 8
  %206 = call i32 @bus_space_unmap(i32* %201, i64 %204, i64 %205)
  br label %207

207:                                              ; preds = %198, %148, %114, %103
  %208 = load i32, i32* %4, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %4, align 4
  br label %85

210:                                              ; preds = %85
  %211 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %212 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %211, i32 0, i32 7
  store i32* null, i32** %212, align 8
  %213 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %214 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %213, i32 0, i32 6
  store i64 0, i64* %214, align 8
  %215 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %216 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %215, i32 0, i32 3
  store i32 0, i32* %216, align 4
  %217 = load i32, i32* @ENXIO, align 4
  store i32 %217, i32* %2, align 4
  br label %230

218:                                              ; preds = %189, %176, %163
  %219 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %220 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %219, i32 0, i32 7
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.nvram2env_softc*, %struct.nvram2env_softc** %7, align 8
  %223 = getelementptr inbounds %struct.nvram2env_softc, %struct.nvram2env_softc* %222, i32 0, i32 6
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @NVRAM_MAX_SIZE, align 8
  %226 = call i32 @bus_space_unmap(i32* %221, i64 %224, i64 %225)
  %227 = load i32, i32* %3, align 4
  %228 = call i32 @device_set_desc(i32 %227, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %229 = load i32, i32* @BUS_PROBE_SPECIFIC, align 4
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %218, %210, %14
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local %struct.nvram2env_softc* @device_get_softc(i32) #1

declare dso_local i64 @resource_int_value(i8*, i32, i8*, i32*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i64 @bus_space_map(i32*, i64, i64, i32, i64*) #1

declare dso_local i32 @bus_space_read_4(i32*, i64, i32) #1

declare dso_local i64 @htole32(i32) #1

declare dso_local i32 @bus_space_unmap(i32*, i64, i64) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
