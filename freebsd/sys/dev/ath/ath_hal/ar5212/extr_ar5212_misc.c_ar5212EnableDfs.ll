; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212EnableDfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212EnableDfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@AR_PHY_RADAR_0 = common dso_local global i32 0, align 4
@HAL_PHYERR_PARAM_NOVAL = common dso_local global i64 0, align 8
@AR_PHY_RADAR_0_FIRPWR = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_RRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_HEIGHT = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_PRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_INBAND = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_ENA = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_BLOCKOFDMWEAK = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_ENRELSTEPCHK = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_USEFIR128 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_ENMAXRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_ENRELPWRCHK = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_RELPWR = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_RELSTEP = common dso_local global i32 0, align 4
@AR_PHY_RADAR_2_MAXLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212EnableDfs(%struct.ath_hal* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %8 = call i32 @OS_REG_READ(%struct.ath_hal* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, i32* @AR_PHY_RADAR_0_FIRPWR, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @AR_PHY_RADAR_0_FIRPWR, align 4
  %23 = call i32 @SM(i64 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %14, %2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load i32, i32* @AR_PHY_RADAR_0_RRSSI, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @AR_PHY_RADAR_0_RRSSI, align 4
  %41 = call i32 @SM(i64 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %32, %26
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load i32, i32* @AR_PHY_RADAR_0_HEIGHT, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @AR_PHY_RADAR_0_HEIGHT, align 4
  %59 = call i32 @SM(i64 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %50, %44
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load i32, i32* @AR_PHY_RADAR_0_PRSSI, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @AR_PHY_RADAR_0_PRSSI, align 4
  %77 = call i32 @SM(i64 %75, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %68, %62
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load i32, i32* @AR_PHY_RADAR_0_INBAND, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @AR_PHY_RADAR_0_INBAND, align 4
  %95 = call i32 @SM(i64 %93, i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %86, %80
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 13
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @AR_PHY_RADAR_0_ENA, align 4
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %5, align 4
  br label %112

107:                                              ; preds = %98
  %108 = load i32, i32* @AR_PHY_RADAR_0_ENA, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %5, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %107, %103
  %113 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %114 = call i64 @IS_5413(%struct.ath_hal* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %234

116:                                              ; preds = %112
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %123 = load i32, i32* @AR_PHY_RADAR_2, align 4
  %124 = load i32, i32* @AR_PHY_RADAR_2_BLOCKOFDMWEAK, align 4
  %125 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %122, i32 %123, i32 %124)
  br label %131

126:                                              ; preds = %116
  %127 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %128 = load i32, i32* @AR_PHY_RADAR_2, align 4
  %129 = load i32, i32* @AR_PHY_RADAR_2_BLOCKOFDMWEAK, align 4
  %130 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %138 = load i32, i32* @AR_PHY_RADAR_2, align 4
  %139 = load i32, i32* @AR_PHY_RADAR_2_ENRELSTEPCHK, align 4
  %140 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %137, i32 %138, i32 %139)
  br label %146

141:                                              ; preds = %131
  %142 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %143 = load i32, i32* @AR_PHY_RADAR_2, align 4
  %144 = load i32, i32* @AR_PHY_RADAR_2_ENRELSTEPCHK, align 4
  %145 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %136
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %153 = load i32, i32* @AR_PHY_RADAR_2, align 4
  %154 = load i32, i32* @AR_PHY_RADAR_2_USEFIR128, align 4
  %155 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %152, i32 %153, i32 %154)
  br label %161

156:                                              ; preds = %146
  %157 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %158 = load i32, i32* @AR_PHY_RADAR_2, align 4
  %159 = load i32, i32* @AR_PHY_RADAR_2_USEFIR128, align 4
  %160 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %168 = load i32, i32* @AR_PHY_RADAR_2, align 4
  %169 = load i32, i32* @AR_PHY_RADAR_2_ENMAXRSSI, align 4
  %170 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %167, i32 %168, i32 %169)
  br label %176

171:                                              ; preds = %161
  %172 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %173 = load i32, i32* @AR_PHY_RADAR_2, align 4
  %174 = load i32, i32* @AR_PHY_RADAR_2_ENMAXRSSI, align 4
  %175 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %171, %166
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 9
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %183 = load i32, i32* @AR_PHY_RADAR_2, align 4
  %184 = load i32, i32* @AR_PHY_RADAR_2_ENRELPWRCHK, align 4
  %185 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %182, i32 %183, i32 %184)
  br label %191

186:                                              ; preds = %176
  %187 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %188 = load i32, i32* @AR_PHY_RADAR_2, align 4
  %189 = load i32, i32* @AR_PHY_RADAR_2_ENRELPWRCHK, align 4
  %190 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %186, %181
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 10
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %191
  %198 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %199 = load i32, i32* @AR_PHY_RADAR_2, align 4
  %200 = load i32, i32* @AR_PHY_RADAR_2_RELPWR, align 4
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 10
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %198, i32 %199, i32 %200, i64 %203)
  br label %205

205:                                              ; preds = %197, %191
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 11
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %205
  %212 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %213 = load i32, i32* @AR_PHY_RADAR_2, align 4
  %214 = load i32, i32* @AR_PHY_RADAR_2_RELSTEP, align 4
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 11
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %212, i32 %213, i32 %214, i64 %217)
  br label %219

219:                                              ; preds = %211, %205
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 12
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %219
  %226 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %227 = load i32, i32* @AR_PHY_RADAR_2, align 4
  %228 = load i32, i32* @AR_PHY_RADAR_2_MAXLEN, align 4
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 12
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %226, i32 %227, i32 %228, i64 %231)
  br label %233

233:                                              ; preds = %225, %219
  br label %234

234:                                              ; preds = %233, %112
  %235 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %236 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %237 = load i32, i32* %5, align 4
  %238 = call i32 @OS_REG_WRITE(%struct.ath_hal* %235, i32 %236, i32 %237)
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @SM(i64, i32) #1

declare dso_local i64 @IS_5413(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i64) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
