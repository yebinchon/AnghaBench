; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_thermal.c_acpi_tz_cpufreq_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_thermal.c_acpi_tz_cpufreq_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_tz_softc = type { i32, i64, i32, i32, i8* }
%struct.cf_level = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CPUFREQ_MAX_LEVELS = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cpufreq\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"cpufreq: need to increase CPUFREQ_MAX_LEVELS\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"temperature %d.%dC: %screasing clock speed from %d MHz to %d MHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@CPUFREQ_PRIO_KERN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_tz_softc*, i32)* @acpi_tz_cpufreq_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_tz_cpufreq_update(%struct.acpi_tz_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_tz_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cf_level*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.acpi_tz_softc* %0, %struct.acpi_tz_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @CPUFREQ_MAX_LEVELS, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @M_TEMP, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = call %struct.cf_level* @malloc(i32 %17, i32 %18, i32 %19)
  store %struct.cf_level* %20, %struct.cf_level** %7, align 8
  %21 = load %struct.cf_level*, %struct.cf_level** %7, align 8
  %22 = icmp eq %struct.cf_level* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %3, align 4
  br label %257

25:                                               ; preds = %2
  %26 = call i32 @devclass_find(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %27 = call i32* @devclass_get_device(i32 %26, i32 0)
  store i32* %27, i32** %6, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %9, align 4
  br label %248

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.cf_level*, %struct.cf_level** %7, align 8
  %34 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %33, i64 0
  %35 = call i32 @CPUFREQ_GET(i32* %32, %struct.cf_level* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %248

39:                                               ; preds = %31
  %40 = load %struct.cf_level*, %struct.cf_level** %7, align 8
  %41 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %40, i64 0
  %42 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @CPUFREQ_MAX_LEVELS, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.cf_level*, %struct.cf_level** %7, align 8
  %48 = call i32 @CPUFREQ_LEVELS(i32* %46, %struct.cf_level* %47, i32* %8)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @E2BIG, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %51
  br label %248

58:                                               ; preds = %39
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 100, %59
  %61 = load %struct.cf_level*, %struct.cf_level** %7, align 8
  %62 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %61, i64 0
  %63 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %60, %65
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %77

72:                                               ; preds = %58
  %73 = load i32, i32* %12, align 4
  %74 = icmp sgt i32 %73, 100
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 100, i32* %12, align 4
  br label %76

76:                                               ; preds = %75, %72
  br label %77

77:                                               ; preds = %76, %71
  %78 = load %struct.cf_level*, %struct.cf_level** %7, align 8
  %79 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %78, i64 0
  %80 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %12, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sdiv i32 %84, 100
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %77
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %106, %89
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load %struct.cf_level*, %struct.cf_level** %7, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %95, i64 %97
  %99 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %109

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %90

109:                                              ; preds = %104, %90
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %113, %109
  br label %183

117:                                              ; preds = %77
  %118 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %119 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %117
  %123 = load i8*, i8** @FALSE, align 8
  %124 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %125 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  br label %248

126:                                              ; preds = %117
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %129 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp sgt i32 %127, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %134 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %132, %126
  %137 = load i32, i32* %8, align 4
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %154, %136
  %140 = load i32, i32* %13, align 4
  %141 = icmp sge i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %139
  %143 = load %struct.cf_level*, %struct.cf_level** %7, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %143, i64 %145
  %147 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp sge i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %142
  br label %157

153:                                              ; preds = %142
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %13, align 4
  br label %139

157:                                              ; preds = %152, %139
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i32, i32* %13, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %169 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %167, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %166, %163
  %173 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %174 = call i32 @acpi_tz_cpufreq_restore(%struct.acpi_tz_softc* %173)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = load i8*, i8** @FALSE, align 8
  %179 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %180 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %179, i32 0, i32 4
  store i8* %178, i8** %180, align 8
  br label %181

181:                                              ; preds = %177, %172
  br label %248

182:                                              ; preds = %166
  br label %183

183:                                              ; preds = %182, %116
  %184 = load %struct.cf_level*, %struct.cf_level** %7, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %184, i64 %186
  %188 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %247

193:                                              ; preds = %183
  %194 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %195 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %198 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @acpi_device_get_parent_softc(i32 %199)
  %201 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %202 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @TZ_KELVTOC(i32 %203)
  %205 = load i32, i32* %10, align 4
  %206 = load %struct.cf_level*, %struct.cf_level** %7, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %206, i64 %208
  %210 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp sgt i32 %205, %212
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %216 = load i32, i32* %10, align 4
  %217 = load %struct.cf_level*, %struct.cf_level** %7, align 8
  %218 = load i32, i32* %13, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %217, i64 %219
  %221 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @ACPI_VPRINT(i32 %196, i32 %200, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %204, i8* %215, i32 %216, i32 %223)
  %225 = load i32*, i32** %6, align 8
  %226 = load %struct.cf_level*, %struct.cf_level** %7, align 8
  %227 = load i32, i32* %13, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.cf_level, %struct.cf_level* %226, i64 %228
  %230 = load i32, i32* @CPUFREQ_PRIO_KERN, align 4
  %231 = call i32 @CPUFREQ_SET(i32* %225, %struct.cf_level* %229, i32 %230)
  store i32 %231, i32* %9, align 4
  %232 = load i32, i32* %9, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %193
  %235 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %236 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %246, label %239

239:                                              ; preds = %234
  %240 = load i32, i32* %10, align 4
  %241 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %242 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  %243 = load i64, i64* @TRUE, align 8
  %244 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %245 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %244, i32 0, i32 1
  store i64 %243, i64* %245, align 8
  br label %246

246:                                              ; preds = %239, %234, %193
  br label %247

247:                                              ; preds = %246, %183
  br label %248

248:                                              ; preds = %247, %181, %122, %57, %38, %29
  %249 = load %struct.cf_level*, %struct.cf_level** %7, align 8
  %250 = icmp ne %struct.cf_level* %249, null
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = load %struct.cf_level*, %struct.cf_level** %7, align 8
  %253 = load i32, i32* @M_TEMP, align 4
  %254 = call i32 @free(%struct.cf_level* %252, i32 %253)
  br label %255

255:                                              ; preds = %251, %248
  %256 = load i32, i32* %9, align 4
  store i32 %256, i32* %3, align 4
  br label %257

257:                                              ; preds = %255, %23
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local %struct.cf_level* @malloc(i32, i32, i32) #1

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @CPUFREQ_GET(i32*, %struct.cf_level*) #1

declare dso_local i32 @CPUFREQ_LEVELS(i32*, %struct.cf_level*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @acpi_tz_cpufreq_restore(%struct.acpi_tz_softc*) #1

declare dso_local i32 @ACPI_VPRINT(i32, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @acpi_device_get_parent_softc(i32) #1

declare dso_local i32 @TZ_KELVTOC(i32) #1

declare dso_local i32 @CPUFREQ_SET(i32*, %struct.cf_level*, i32) #1

declare dso_local i32 @free(%struct.cf_level*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
