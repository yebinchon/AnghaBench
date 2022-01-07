; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_subr.c_gv_parse_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_subr.c_gv_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_softc = type { i32 }
%struct.gv_drive = type { i32 }
%struct.gv_volume = type { i64, i32, i32 }
%struct.gv_plex = type { i64, i32, i32 }
%struct.gv_sd = type { i64, i32, i32 }

@GV_MAXARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"config parse failed volume\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"newer volume found!\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"plex\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"config parse failed plex\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"newer plex found!\00", align 1
@GV_PLEX_ADDED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"config parse failed subdisk\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"newer subdisk found!\00", align 1
@GV_SD_TASTED = common dso_local global i32 0, align 4
@GV_SD_UP = common dso_local global i64 0, align 8
@GV_SD_CANGOUP = common dso_local global i32 0, align 4
@GV_SD_NEWBORN = common dso_local global i32 0, align 4
@GV_SD_GROW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_parse_config(%struct.gv_softc* %0, i8* %1, %struct.gv_drive* %2) #0 {
  %4 = alloca %struct.gv_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gv_drive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.gv_volume*, align 8
  %11 = alloca %struct.gv_volume*, align 8
  %12 = alloca %struct.gv_plex*, align 8
  %13 = alloca %struct.gv_plex*, align 8
  %14 = alloca %struct.gv_sd*, align 8
  %15 = alloca %struct.gv_sd*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store %struct.gv_softc* %0, %struct.gv_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.gv_drive* %2, %struct.gv_drive** %6, align 8
  %21 = load i32, i32* @GV_MAXARGS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %19, align 8
  %24 = alloca i8*, i64 %22, align 16
  store i64 %22, i64* %20, align 8
  %25 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %26 = load %struct.gv_drive*, %struct.gv_drive** %6, align 8
  %27 = call i32 @gv_drive_is_newer(%struct.gv_softc* %25, %struct.gv_drive* %26)
  store i32 %27, i32* %17, align 4
  %28 = load i8*, i8** %5, align 8
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %220, %3
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %222

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %7, align 8
  store i8* %36, i8** %9, align 8
  br label %37

37:                                               ; preds = %42, %34
  %38 = load i8*, i8** %8, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 10
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %8, align 8
  br label %37

45:                                               ; preds = %37
  %46 = load i8*, i8** %8, align 8
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* @GV_MAXARGS, align 4
  %51 = call i32 @gv_tokenize(i8* %49, i8** %24, i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %220

55:                                               ; preds = %45
  %56 = getelementptr inbounds i8*, i8** %24, i64 0
  %57 = load i8*, i8** %56, align 16
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %92, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %18, align 4
  %62 = call %struct.gv_volume* @gv_new_volume(i32 %61, i8** %24)
  store %struct.gv_volume* %62, %struct.gv_volume** %10, align 8
  %63 = load %struct.gv_volume*, %struct.gv_volume** %10, align 8
  %64 = icmp eq %struct.gv_volume* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %222

67:                                               ; preds = %60
  %68 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %69 = load %struct.gv_volume*, %struct.gv_volume** %10, align 8
  %70 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.gv_volume* @gv_find_vol(%struct.gv_softc* %68, i32 %71)
  store %struct.gv_volume* %72, %struct.gv_volume** %11, align 8
  %73 = load %struct.gv_volume*, %struct.gv_volume** %11, align 8
  %74 = icmp ne %struct.gv_volume* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %67
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.gv_volume*, %struct.gv_volume** %10, align 8
  %80 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.gv_volume*, %struct.gv_volume** %11, align 8
  %83 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = call i32 @G_VINUM_DEBUG(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %78, %75
  %86 = load %struct.gv_volume*, %struct.gv_volume** %10, align 8
  %87 = call i32 @g_free(%struct.gv_volume* %86)
  br label %220

88:                                               ; preds = %67
  %89 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %90 = load %struct.gv_volume*, %struct.gv_volume** %10, align 8
  %91 = call i32 @gv_create_volume(%struct.gv_softc* %89, %struct.gv_volume* %90)
  br label %219

92:                                               ; preds = %55
  %93 = getelementptr inbounds i8*, i8** %24, i64 0
  %94 = load i8*, i8** %93, align 16
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %143, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %18, align 4
  %99 = call %struct.gv_volume* @gv_new_plex(i32 %98, i8** %24)
  %100 = bitcast %struct.gv_volume* %99 to %struct.gv_plex*
  store %struct.gv_plex* %100, %struct.gv_plex** %12, align 8
  %101 = load %struct.gv_plex*, %struct.gv_plex** %12, align 8
  %102 = icmp eq %struct.gv_plex* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = call i32 @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %222

105:                                              ; preds = %97
  %106 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %107 = load %struct.gv_plex*, %struct.gv_plex** %12, align 8
  %108 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call %struct.gv_volume* @gv_find_plex(%struct.gv_softc* %106, i32 %109)
  %111 = bitcast %struct.gv_volume* %110 to %struct.gv_plex*
  store %struct.gv_plex* %111, %struct.gv_plex** %13, align 8
  %112 = load %struct.gv_plex*, %struct.gv_plex** %13, align 8
  %113 = icmp ne %struct.gv_plex* %112, null
  br i1 %113, label %114, label %128

114:                                              ; preds = %105
  %115 = load i32, i32* %17, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load %struct.gv_plex*, %struct.gv_plex** %12, align 8
  %119 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.gv_plex*, %struct.gv_plex** %13, align 8
  %122 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = call i32 @G_VINUM_DEBUG(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %124

124:                                              ; preds = %117, %114
  %125 = load %struct.gv_plex*, %struct.gv_plex** %12, align 8
  %126 = bitcast %struct.gv_plex* %125 to %struct.gv_volume*
  %127 = call i32 @g_free(%struct.gv_volume* %126)
  br label %220

128:                                              ; preds = %105
  %129 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %130 = load %struct.gv_plex*, %struct.gv_plex** %12, align 8
  %131 = bitcast %struct.gv_plex* %130 to %struct.gv_volume*
  %132 = call i32 @gv_create_plex(%struct.gv_softc* %129, %struct.gv_volume* %131)
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %220

136:                                              ; preds = %128
  %137 = load i32, i32* @GV_PLEX_ADDED, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.gv_plex*, %struct.gv_plex** %12, align 8
  %140 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %218

143:                                              ; preds = %92
  %144 = getelementptr inbounds i8*, i8** %24, i64 0
  %145 = load i8*, i8** %144, align 16
  %146 = call i32 @strcmp(i8* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %217, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %18, align 4
  %150 = call %struct.gv_volume* @gv_new_sd(i32 %149, i8** %24)
  %151 = bitcast %struct.gv_volume* %150 to %struct.gv_sd*
  store %struct.gv_sd* %151, %struct.gv_sd** %14, align 8
  %152 = load %struct.gv_sd*, %struct.gv_sd** %14, align 8
  %153 = icmp eq %struct.gv_sd* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = call i32 @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %222

156:                                              ; preds = %148
  %157 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %158 = load %struct.gv_sd*, %struct.gv_sd** %14, align 8
  %159 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call %struct.gv_volume* @gv_find_sd(%struct.gv_softc* %157, i32 %160)
  %162 = bitcast %struct.gv_volume* %161 to %struct.gv_sd*
  store %struct.gv_sd* %162, %struct.gv_sd** %15, align 8
  %163 = load %struct.gv_sd*, %struct.gv_sd** %15, align 8
  %164 = icmp ne %struct.gv_sd* %163, null
  br i1 %164, label %165, label %179

165:                                              ; preds = %156
  %166 = load i32, i32* %17, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %165
  %169 = load %struct.gv_sd*, %struct.gv_sd** %14, align 8
  %170 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.gv_sd*, %struct.gv_sd** %15, align 8
  %173 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  %174 = call i32 @G_VINUM_DEBUG(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %175

175:                                              ; preds = %168, %165
  %176 = load %struct.gv_sd*, %struct.gv_sd** %14, align 8
  %177 = bitcast %struct.gv_sd* %176 to %struct.gv_volume*
  %178 = call i32 @g_free(%struct.gv_volume* %177)
  br label %220

179:                                              ; preds = %156
  %180 = load i32, i32* @GV_SD_TASTED, align 4
  %181 = load %struct.gv_sd*, %struct.gv_sd** %14, align 8
  %182 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load %struct.gv_sd*, %struct.gv_sd** %14, align 8
  %186 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @GV_SD_UP, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %179
  %191 = load i32, i32* @GV_SD_CANGOUP, align 4
  %192 = load %struct.gv_sd*, %struct.gv_sd** %14, align 8
  %193 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %190, %179
  %197 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %198 = load %struct.gv_sd*, %struct.gv_sd** %14, align 8
  %199 = bitcast %struct.gv_sd* %198 to %struct.gv_volume*
  %200 = call i32 @gv_create_sd(%struct.gv_softc* %197, %struct.gv_volume* %199)
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %16, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  br label %220

204:                                              ; preds = %196
  %205 = load i32, i32* @GV_SD_NEWBORN, align 4
  %206 = xor i32 %205, -1
  %207 = load %struct.gv_sd*, %struct.gv_sd** %14, align 8
  %208 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = and i32 %209, %206
  store i32 %210, i32* %208, align 8
  %211 = load i32, i32* @GV_SD_GROW, align 4
  %212 = xor i32 %211, -1
  %213 = load %struct.gv_sd*, %struct.gv_sd** %14, align 8
  %214 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %215, %212
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %204, %143
  br label %218

218:                                              ; preds = %217, %136
  br label %219

219:                                              ; preds = %218, %88
  br label %220

220:                                              ; preds = %219, %203, %175, %135, %124, %85, %54
  %221 = load i8*, i8** %8, align 8
  store i8* %221, i8** %7, align 8
  br label %29

222:                                              ; preds = %154, %103, %65, %29
  %223 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %223)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gv_drive_is_newer(%struct.gv_softc*, %struct.gv_drive*) #2

declare dso_local i32 @gv_tokenize(i8*, i8**, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local %struct.gv_volume* @gv_new_volume(i32, i8**) #2

declare dso_local i32 @G_VINUM_DEBUG(i32, i8*) #2

declare dso_local %struct.gv_volume* @gv_find_vol(%struct.gv_softc*, i32) #2

declare dso_local i32 @g_free(%struct.gv_volume*) #2

declare dso_local i32 @gv_create_volume(%struct.gv_softc*, %struct.gv_volume*) #2

declare dso_local %struct.gv_volume* @gv_new_plex(i32, i8**) #2

declare dso_local %struct.gv_volume* @gv_find_plex(%struct.gv_softc*, i32) #2

declare dso_local i32 @gv_create_plex(%struct.gv_softc*, %struct.gv_volume*) #2

declare dso_local %struct.gv_volume* @gv_new_sd(i32, i8**) #2

declare dso_local %struct.gv_volume* @gv_find_sd(%struct.gv_softc*, i32) #2

declare dso_local i32 @gv_create_sd(%struct.gv_softc*, %struct.gv_volume*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
