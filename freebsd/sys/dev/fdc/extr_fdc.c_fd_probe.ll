; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_data = type { i32, i32, %struct.fdc_data*, i32, i64, i32, i32, i32 }
%struct.fdc_data = type { i32, %struct.fd_data* }

@FD_TYPEMASK = common dso_local global i32 0, align 4
@FDT_NONE = common dso_local global i32 0, align 4
@FD_EMPTY = common dso_local global i32 0, align 4
@RTC_FDISKETTE = common dso_local global i32 0, align 4
@FDT_288M_1 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@FD_NO_PROBE = common dso_local global i32 0, align 4
@NE7_ST3_T0 = common dso_local global i32 0, align 4
@NE7CMD_SEEK = common dso_local global i32 0, align 4
@NE7CMD_RECAL = common dso_local global i32 0, align 4
@NE7_ST0_EC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"1200-KB 5.25\22 drive\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"1440-KB 3.5\22 drive\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"2880-KB 3.5\22 drive (in 1440-KB mode)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"360-KB 5.25\22 drive\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"720-KB 3.5\22 drive\00", align 1
@FD_NO_TRACK = common dso_local global i32 0, align 4
@fd_native_types = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd_data*, align 8
  %9 = alloca %struct.fdc_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @fdc_get_fdunit(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i8* @device_get_softc(i32 %15)
  %17 = bitcast i8* %16 to %struct.fd_data*
  store %struct.fd_data* %17, %struct.fd_data** %8, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  %20 = call i8* @device_get_softc(i32 %19)
  %21 = bitcast i8* %20 to %struct.fdc_data*
  store %struct.fdc_data* %21, %struct.fdc_data** %9, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_get_flags(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %26 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = load %struct.fdc_data*, %struct.fdc_data** %9, align 8
  %28 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %29 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %28, i32 0, i32 2
  store %struct.fdc_data* %27, %struct.fdc_data** %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %32 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_get_unit(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @FD_TYPEMASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @FDT_NONE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %1
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @fdc_get_fdtype(i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @FDT_NONE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %49 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %192

50:                                               ; preds = %41, %1
  %51 = load i32, i32* @FD_EMPTY, align 4
  %52 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %53 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %56 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %50
  %58 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %59 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FDT_NONE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %57
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %95

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* @RTC_FDISKETTE, align 4
  %74 = call i32 @rtcin(i32 %73)
  %75 = and i32 %74, 240
  %76 = ashr i32 %75, 4
  %77 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %78 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %85

79:                                               ; preds = %69
  %80 = load i32, i32* @RTC_FDISKETTE, align 4
  %81 = call i32 @rtcin(i32 %80)
  %82 = and i32 %81, 15
  %83 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %84 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %72
  %86 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %87 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @FDT_288M_1, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %93 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %92, i32 0, i32 1
  store i32 130, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %85
  br label %95

95:                                               ; preds = %94, %66, %57
  %96 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %97 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @FDT_NONE, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @ENXIO, align 4
  store i32 %102, i32* %2, align 4
  br label %241

103:                                              ; preds = %95
  %104 = load %struct.fdc_data*, %struct.fdc_data** %9, align 8
  %105 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %104, i32 0, i32 0
  %106 = call i32 @mtx_lock(i32* %105)
  %107 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %108 = call i32 @fd_select(%struct.fd_data* %107)
  %109 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %110 = call i32 @fd_motor(%struct.fd_data* %109, i32 1)
  %111 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %112 = load %struct.fdc_data*, %struct.fdc_data** %9, align 8
  %113 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %112, i32 0, i32 1
  store %struct.fd_data* %111, %struct.fd_data** %113, align 8
  %114 = load %struct.fdc_data*, %struct.fdc_data** %9, align 8
  %115 = call i32 @fdc_reset(%struct.fdc_data* %114)
  %116 = call i32 @DELAY(i32 1000000)
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @FD_NO_PROBE, align 4
  %119 = and i32 %117, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %172

121:                                              ; preds = %103
  %122 = load %struct.fdc_data*, %struct.fdc_data** %9, align 8
  %123 = call i64 @fdc_sense_drive(%struct.fdc_data* %122, i32* %7)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %121
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @NE7_ST3_T0, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.fdc_data*, %struct.fdc_data** %9, align 8
  %132 = load i32, i32* @NE7CMD_SEEK, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i64 (%struct.fdc_data*, i32, i32, i32, i32, ...) @fdc_cmd(%struct.fdc_data* %131, i32 3, i32 %132, i32 %133, i32 10, i32 0)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = call i32 @DELAY(i32 300000)
  %138 = load %struct.fdc_data*, %struct.fdc_data** %9, align 8
  %139 = call i64 @fdc_sense_int(%struct.fdc_data* %138, i32* null, i32* null)
  br label %140

140:                                              ; preds = %136, %130
  br label %141

141:                                              ; preds = %140, %125, %121
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %168, %141
  %143 = load i32, i32* %5, align 4
  %144 = icmp slt i32 %143, 2
  br i1 %144, label %145, label %171

145:                                              ; preds = %142
  %146 = load %struct.fdc_data*, %struct.fdc_data** %9, align 8
  %147 = load i32, i32* @NE7CMD_RECAL, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i64 (%struct.fdc_data*, i32, i32, i32, i32, ...) @fdc_cmd(%struct.fdc_data* %146, i32 2, i32 %147, i32 %148, i32 0)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %145
  %152 = load i32, i32* %5, align 4
  %153 = icmp eq i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 1000000, i32 300000
  %156 = call i32 @DELAY(i32 %155)
  %157 = load %struct.fdc_data*, %struct.fdc_data** %9, align 8
  %158 = call i64 @fdc_sense_int(%struct.fdc_data* %157, i32* %6, i32* null)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %151
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @NE7_ST0_EC, align 4
  %163 = and i32 %161, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %171

166:                                              ; preds = %160, %151
  br label %167

167:                                              ; preds = %166, %145
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %5, align 4
  br label %142

171:                                              ; preds = %165, %142
  br label %172

172:                                              ; preds = %171, %103
  %173 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %174 = call i32 @fd_motor(%struct.fd_data* %173, i32 0)
  %175 = load %struct.fdc_data*, %struct.fdc_data** %9, align 8
  %176 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %175, i32 0, i32 1
  store %struct.fd_data* null, %struct.fd_data** %176, align 8
  %177 = load %struct.fdc_data*, %struct.fdc_data** %9, align 8
  %178 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %177, i32 0, i32 0
  %179 = call i32 @mtx_unlock(i32* %178)
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @FD_NO_PROBE, align 4
  %182 = and i32 %180, %181
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %172
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @NE7_ST0_EC, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = load i32, i32* @ENXIO, align 4
  store i32 %190, i32* %2, align 4
  br label %241

191:                                              ; preds = %184, %172
  br label %192

192:                                              ; preds = %191, %46
  %193 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %194 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  switch i32 %195, label %211 [
    i32 132, label %196
    i32 131, label %199
    i32 130, label %202
    i32 129, label %205
    i32 128, label %208
  ]

196:                                              ; preds = %192
  %197 = load i32, i32* %3, align 4
  %198 = call i32 @device_set_desc(i32 %197, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %213

199:                                              ; preds = %192
  %200 = load i32, i32* %3, align 4
  %201 = call i32 @device_set_desc(i32 %200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %213

202:                                              ; preds = %192
  %203 = load i32, i32* %3, align 4
  %204 = call i32 @device_set_desc(i32 %203, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %213

205:                                              ; preds = %192
  %206 = load i32, i32* %3, align 4
  %207 = call i32 @device_set_desc(i32 %206, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %213

208:                                              ; preds = %192
  %209 = load i32, i32* %3, align 4
  %210 = call i32 @device_set_desc(i32 %209, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %213

211:                                              ; preds = %192
  %212 = load i32, i32* @ENXIO, align 4
  store i32 %212, i32* %2, align 4
  br label %241

213:                                              ; preds = %208, %205, %202, %199, %196
  %214 = load i32, i32* @FD_NO_TRACK, align 4
  %215 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %216 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %215, i32 0, i32 5
  store i32 %214, i32* %216, align 8
  %217 = load %struct.fdc_data*, %struct.fdc_data** %9, align 8
  %218 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %219 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %218, i32 0, i32 2
  store %struct.fdc_data* %217, %struct.fdc_data** %219, align 8
  %220 = load i32, i32* %10, align 4
  %221 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %222 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %224 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %223, i32 0, i32 4
  store i64 0, i64* %224, align 8
  %225 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %226 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %225, i32 0, i32 3
  %227 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %228 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %227, i32 0, i32 2
  %229 = load %struct.fdc_data*, %struct.fdc_data** %228, align 8
  %230 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %229, i32 0, i32 0
  %231 = call i32 @callout_init_mtx(i32* %226, i32* %230, i32 0)
  %232 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %233 = load i32*, i32** @fd_native_types, align 8
  %234 = load %struct.fd_data*, %struct.fd_data** %8, align 8
  %235 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %233, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @fdsettype(%struct.fd_data* %232, i32 %239)
  store i32 0, i32* %2, align 4
  br label %241

241:                                              ; preds = %213, %211, %189, %101
  %242 = load i32, i32* %2, align 4
  ret i32 %242
}

declare dso_local i32 @fdc_get_fdunit(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @fdc_get_fdtype(i32) #1

declare dso_local i32 @rtcin(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @fd_select(%struct.fd_data*) #1

declare dso_local i32 @fd_motor(%struct.fd_data*, i32) #1

declare dso_local i32 @fdc_reset(%struct.fdc_data*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @fdc_sense_drive(%struct.fdc_data*, i32*) #1

declare dso_local i64 @fdc_cmd(%struct.fdc_data*, i32, i32, i32, i32, ...) #1

declare dso_local i64 @fdc_sense_int(%struct.fdc_data*, i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @fdsettype(%struct.fd_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
