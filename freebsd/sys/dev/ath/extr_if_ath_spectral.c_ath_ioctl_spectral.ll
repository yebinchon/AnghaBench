; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_spectral.c_ath_ioctl_spectral.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_spectral.c_ath_ioctl_spectral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i32, %struct.ath_spectral_state* }
%struct.ath_spectral_state = type { i32, i32 }
%struct.ath_diag = type { i32, i32, i32, i32, i32 }

@ATH_DIAG_ID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@ATH_DIAG_IN = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH_DIAG_DYN = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%d != %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"indata=NULL\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_ioctl_spectral(%struct.ath_softc* %0, %struct.ath_diag* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_diag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ath_spectral_state*, align 8
  %15 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_diag* %1, %struct.ath_diag** %5, align 8
  %16 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %17 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ATH_DIAG_ID, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %21 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %22 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %25 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %27 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 3
  %29 = load %struct.ath_spectral_state*, %struct.ath_spectral_state** %28, align 8
  store %struct.ath_spectral_state* %29, %struct.ath_spectral_state** %14, align 8
  %30 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ath_hal_spectral_supported(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %3, align 4
  br label %240

37:                                               ; preds = %2
  %38 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %39 = call i32 @ATH_LOCK(%struct.ath_softc* %38)
  %40 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %41 = load i32, i32* @HAL_PM_AWAKE, align 4
  %42 = call i32 @ath_power_set_power_state(%struct.ath_softc* %40, i32 %41)
  %43 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %44 = call i32 @ATH_UNLOCK(%struct.ath_softc* %43)
  %45 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %46 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ATH_DIAG_IN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %37
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @M_TEMP, align 4
  %54 = load i32, i32* @M_NOWAIT, align 4
  %55 = call i8* @malloc(i32 %52, i32 %53, i32 %54)
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %11, align 4
  br label %204

60:                                               ; preds = %51
  %61 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %62 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @copyin(i32 %63, i8* %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %204

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %37
  %72 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %73 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ATH_DIAG_DYN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @M_TEMP, align 4
  %81 = load i32, i32* @M_NOWAIT, align 4
  %82 = load i32, i32* @M_ZERO, align 4
  %83 = or i32 %81, %82
  %84 = call i8* @malloc(i32 %79, i32 %80, i32 %83)
  store i8* %84, i8** %8, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i32, i32* @ENOMEM, align 4
  store i32 %88, i32* %11, align 4
  br label %204

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %71
  %91 = load i32, i32* %6, align 4
  switch i32 %91, label %176 [
    i32 131, label %92
    i32 130, label %102
    i32 129, label %122
    i32 128, label %135
    i32 132, label %142
    i32 133, label %175
    i32 134, label %175
  ]

92:                                               ; preds = %90
  %93 = call i32 @memset(i32* %12, i32 0, i32 4)
  store i32 4, i32* %10, align 4
  %94 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %95 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ath_hal_spectral_get_config(i32 %96, i32* %12)
  %98 = load i8*, i8** %8, align 8
  %99 = bitcast i8* %98 to i32*
  store i32* %99, i32** %13, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @memcpy(i32* %100, i32* %12, i32 4)
  br label %178

102:                                              ; preds = %90
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ult i64 %104, 4
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @EINVAL, align 4
  store i32 %107, i32* %11, align 4
  br label %178

108:                                              ; preds = %102
  %109 = load i8*, i8** %7, align 8
  %110 = bitcast i8* %109 to i32*
  store i32* %110, i32** %13, align 8
  %111 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %112 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = call i32 @ath_hal_spectral_configure(i32 %113, i32* %114)
  %116 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %117 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ath_spectral_state*, %struct.ath_spectral_state** %14, align 8
  %120 = getelementptr inbounds %struct.ath_spectral_state, %struct.ath_spectral_state* %119, i32 0, i32 1
  %121 = call i32 @ath_hal_spectral_get_config(i32 %118, i32* %120)
  br label %178

122:                                              ; preds = %90
  %123 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %124 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ath_spectral_state*, %struct.ath_spectral_state** %14, align 8
  %127 = getelementptr inbounds %struct.ath_spectral_state, %struct.ath_spectral_state* %126, i32 0, i32 1
  %128 = call i32 @ath_hal_spectral_configure(i32 %125, i32* %127)
  %129 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %130 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ath_hal_spectral_start(i32 %131)
  %133 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %134 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  br label %178

135:                                              ; preds = %90
  %136 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %137 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ath_hal_spectral_stop(i32 %138)
  %140 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %141 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  br label %178

142:                                              ; preds = %90
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp ult i64 %144, 4
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %148 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 (i32, i8*, ...) @device_printf(i32 %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %150, i32 4)
  %152 = load i32, i32* @EINVAL, align 4
  store i32 %152, i32* %11, align 4
  br label %178

153:                                              ; preds = %142
  %154 = load i8*, i8** %7, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %158 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32, i8*, ...) @device_printf(i32 %159, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %161 = load i32, i32* @EINVAL, align 4
  store i32 %161, i32* %11, align 4
  br label %178

162:                                              ; preds = %153
  %163 = load i8*, i8** %7, align 8
  %164 = bitcast i8* %163 to i32*
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load %struct.ath_spectral_state*, %struct.ath_spectral_state** %14, align 8
  %170 = getelementptr inbounds %struct.ath_spectral_state, %struct.ath_spectral_state* %169, i32 0, i32 0
  store i32 0, i32* %170, align 4
  br label %174

171:                                              ; preds = %162
  %172 = load %struct.ath_spectral_state*, %struct.ath_spectral_state** %14, align 8
  %173 = getelementptr inbounds %struct.ath_spectral_state, %struct.ath_spectral_state* %172, i32 0, i32 0
  store i32 1, i32* %173, align 4
  br label %174

174:                                              ; preds = %171, %168
  br label %178

175:                                              ; preds = %90, %90
  br label %178

176:                                              ; preds = %90
  %177 = load i32, i32* @EINVAL, align 4
  store i32 %177, i32* %11, align 4
  br label %204

178:                                              ; preds = %175, %174, %156, %146, %135, %122, %108, %106, %92
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %181 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %187 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %184, %178
  %189 = load i8*, i8** %8, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %203

191:                                              ; preds = %188
  %192 = load i8*, i8** %8, align 8
  %193 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %194 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %197 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @copyout(i8* %192, i32 %195, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %191
  %202 = load i32, i32* @EFAULT, align 4
  store i32 %202, i32* %11, align 4
  br label %203

203:                                              ; preds = %201, %191, %188
  br label %204

204:                                              ; preds = %203, %176, %87, %69, %58
  %205 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %206 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @ATH_DIAG_IN, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %204
  %212 = load i8*, i8** %7, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load i8*, i8** %7, align 8
  %216 = load i32, i32* @M_TEMP, align 4
  %217 = call i32 @free(i8* %215, i32 %216)
  br label %218

218:                                              ; preds = %214, %211, %204
  %219 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %220 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @ATH_DIAG_DYN, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %218
  %226 = load i8*, i8** %8, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load i8*, i8** %8, align 8
  %230 = load i32, i32* @M_TEMP, align 4
  %231 = call i32 @free(i8* %229, i32 %230)
  br label %232

232:                                              ; preds = %228, %225, %218
  %233 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %234 = call i32 @ATH_LOCK(%struct.ath_softc* %233)
  %235 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %236 = call i32 @ath_power_restore_power_state(%struct.ath_softc* %235)
  %237 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %238 = call i32 @ATH_UNLOCK(%struct.ath_softc* %237)
  %239 = load i32, i32* %11, align 4
  store i32 %239, i32* %3, align 4
  br label %240

240:                                              ; preds = %232, %35
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local i32 @ath_hal_spectral_supported(i32) #1

declare dso_local i32 @ATH_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_power_set_power_state(%struct.ath_softc*, i32) #1

declare dso_local i32 @ATH_UNLOCK(%struct.ath_softc*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ath_hal_spectral_get_config(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ath_hal_spectral_configure(i32, i32*) #1

declare dso_local i32 @ath_hal_spectral_start(i32) #1

declare dso_local i32 @ath_hal_spectral_stop(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @copyout(i8*, i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @ath_power_restore_power_state(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
