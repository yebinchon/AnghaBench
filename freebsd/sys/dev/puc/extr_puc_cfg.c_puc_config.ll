; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_puc_cfg.c_puc_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_puc_cfg.c_puc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puc_softc = type { %struct.puc_cfg* }
%struct.puc_cfg = type { i32 (%struct.puc_softc*, i32, i32, i64*)*, i64, i32, i32, i64, i32, i32* }

@EDOOFUS = common dso_local global i32 0, align 4
@PUC_ILR_NONE = common dso_local global i64 0, align 8
@PUC_TYPE_PARALLEL = common dso_local global i64 0, align 8
@PUC_TYPE_SERIAL = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puc_config(%struct.puc_softc* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.puc_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.puc_cfg*, align 8
  %11 = alloca i32, align 4
  store %struct.puc_softc* %0, %struct.puc_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %13 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %12, i32 0, i32 0
  %14 = load %struct.puc_cfg*, %struct.puc_cfg** %13, align 8
  store %struct.puc_cfg* %14, %struct.puc_cfg** %10, align 8
  %15 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %16 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %15, i32 0, i32 0
  %17 = load i32 (%struct.puc_softc*, i32, i32, i64*)*, i32 (%struct.puc_softc*, i32, i32, i64*)** %16, align 8
  %18 = icmp ne i32 (%struct.puc_softc*, i32, i32, i64*)* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %21 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %20, i32 0, i32 0
  %22 = load i32 (%struct.puc_softc*, i32, i32, i64*)*, i32 (%struct.puc_softc*, i32, i32, i64*)** %21, align 8
  %23 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i64*, i64** %9, align 8
  %27 = call i32 %22(%struct.puc_softc* %23, i32 %24, i32 %25, i64* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %243

31:                                               ; preds = %19
  br label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @EDOOFUS, align 4
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %241 [
    i32 151, label %36
    i32 150, label %48
    i32 149, label %61
    i32 148, label %64
    i32 147, label %66
    i32 146, label %91
    i32 145, label %106
    i32 144, label %157
    i32 143, label %237
  ]

36:                                               ; preds = %34
  %37 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %38 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %243

43:                                               ; preds = %36
  %44 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %45 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  store i32 0, i32* %5, align 4
  br label %243

48:                                               ; preds = %34
  %49 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %50 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %243

55:                                               ; preds = %48
  %56 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %57 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %56, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = ptrtoint i32* %58 to i64
  %60 = load i64*, i64** %9, align 8
  store i64 %59, i64* %60, align 8
  store i32 0, i32* %5, align 4
  br label %243

61:                                               ; preds = %34
  %62 = load i64, i64* @PUC_ILR_NONE, align 8
  %63 = load i64*, i64** %9, align 8
  store i64 %62, i64* %63, align 8
  store i32 0, i32* %5, align 4
  br label %243

64:                                               ; preds = %34
  %65 = load i64*, i64** %9, align 8
  store i64 8, i64* %65, align 8
  store i32 0, i32* %5, align 4
  br label %243

66:                                               ; preds = %34
  %67 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %68 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %90 [
    i32 128, label %70
    i32 140, label %72
    i32 139, label %72
    i32 138, label %74
    i32 136, label %74
    i32 135, label %74
    i32 137, label %76
    i32 134, label %76
    i32 133, label %76
    i32 132, label %78
    i32 131, label %80
    i32 130, label %82
    i32 129, label %84
    i32 142, label %86
    i32 141, label %88
  ]

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %243

72:                                               ; preds = %66, %66
  %73 = load i64*, i64** %9, align 8
  store i64 1, i64* %73, align 8
  store i32 0, i32* %5, align 4
  br label %243

74:                                               ; preds = %66, %66, %66
  %75 = load i64*, i64** %9, align 8
  store i64 2, i64* %75, align 8
  store i32 0, i32* %5, align 4
  br label %243

76:                                               ; preds = %66, %66, %66
  %77 = load i64*, i64** %9, align 8
  store i64 3, i64* %77, align 8
  store i32 0, i32* %5, align 4
  br label %243

78:                                               ; preds = %66
  %79 = load i64*, i64** %9, align 8
  store i64 4, i64* %79, align 8
  store i32 0, i32* %5, align 4
  br label %243

80:                                               ; preds = %66
  %81 = load i64*, i64** %9, align 8
  store i64 5, i64* %81, align 8
  store i32 0, i32* %5, align 4
  br label %243

82:                                               ; preds = %66
  %83 = load i64*, i64** %9, align 8
  store i64 6, i64* %83, align 8
  store i32 0, i32* %5, align 4
  br label %243

84:                                               ; preds = %66
  %85 = load i64*, i64** %9, align 8
  store i64 8, i64* %85, align 8
  store i32 0, i32* %5, align 4
  br label %243

86:                                               ; preds = %66
  %87 = load i64*, i64** %9, align 8
  store i64 12, i64* %87, align 8
  store i32 0, i32* %5, align 4
  br label %243

88:                                               ; preds = %66
  %89 = load i64*, i64** %9, align 8
  store i64 16, i64* %89, align 8
  store i32 0, i32* %5, align 4
  br label %243

90:                                               ; preds = %66
  br label %241

91:                                               ; preds = %34
  %92 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %93 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %5, align 4
  br label %243

98:                                               ; preds = %91
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %101 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = load i64*, i64** %9, align 8
  store i64 %104, i64* %105, align 8
  store i32 0, i32* %5, align 4
  br label %243

106:                                              ; preds = %34
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %111 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %5, align 4
  br label %243

116:                                              ; preds = %109
  %117 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %118 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %9, align 8
  store i64 %119, i64* %120, align 8
  store i32 0, i32* %5, align 4
  br label %243

121:                                              ; preds = %106
  %122 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %123 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %5, align 4
  br label %243

128:                                              ; preds = %121
  %129 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %130 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %135 = load i64*, i64** %9, align 8
  %136 = call i32 @puc_config(%struct.puc_softc* %134, i32 145, i32 0, i64* %135)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %5, align 4
  br label %243

141:                                              ; preds = %133
  br label %147

142:                                              ; preds = %128
  %143 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %144 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %9, align 8
  store i64 %145, i64* %146, align 8
  br label %147

147:                                              ; preds = %142, %141
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %150 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = mul nsw i32 %148, %151
  %153 = sext i32 %152 to i64
  %154 = load i64*, i64** %9, align 8
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, %153
  store i64 %156, i64* %154, align 8
  store i32 0, i32* %5, align 4
  br label %243

157:                                              ; preds = %34
  %158 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %159 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 128
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i32, i32* %11, align 4
  store i32 %163, i32* %5, align 4
  br label %243

164:                                              ; preds = %157
  %165 = load i32, i32* %8, align 4
  switch i32 %165, label %234 [
    i32 0, label %166
    i32 1, label %183
    i32 2, label %205
    i32 4, label %222
  ]

166:                                              ; preds = %164
  %167 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %168 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 140
  br i1 %170, label %176, label %171

171:                                              ; preds = %166
  %172 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %173 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 136
  br i1 %175, label %176, label %179

176:                                              ; preds = %171, %166
  %177 = load i64, i64* @PUC_TYPE_PARALLEL, align 8
  %178 = load i64*, i64** %9, align 8
  store i64 %177, i64* %178, align 8
  br label %182

179:                                              ; preds = %171
  %180 = load i64, i64* @PUC_TYPE_SERIAL, align 8
  %181 = load i64*, i64** %9, align 8
  store i64 %180, i64* %181, align 8
  br label %182

182:                                              ; preds = %179, %176
  store i32 0, i32* %5, align 4
  br label %243

183:                                              ; preds = %164
  %184 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %185 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %186, 138
  br i1 %187, label %198, label %188

188:                                              ; preds = %183
  %189 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %190 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %191, 137
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %195 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 136
  br i1 %197, label %198, label %201

198:                                              ; preds = %193, %188, %183
  %199 = load i64, i64* @PUC_TYPE_PARALLEL, align 8
  %200 = load i64*, i64** %9, align 8
  store i64 %199, i64* %200, align 8
  br label %204

201:                                              ; preds = %193
  %202 = load i64, i64* @PUC_TYPE_SERIAL, align 8
  %203 = load i64*, i64** %9, align 8
  store i64 %202, i64* %203, align 8
  br label %204

204:                                              ; preds = %201, %198
  store i32 0, i32* %5, align 4
  br label %243

205:                                              ; preds = %164
  %206 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %207 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 137
  br i1 %209, label %215, label %210

210:                                              ; preds = %205
  %211 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %212 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 134
  br i1 %214, label %215, label %218

215:                                              ; preds = %210, %205
  %216 = load i64, i64* @PUC_TYPE_PARALLEL, align 8
  %217 = load i64*, i64** %9, align 8
  store i64 %216, i64* %217, align 8
  br label %221

218:                                              ; preds = %210
  %219 = load i64, i64* @PUC_TYPE_SERIAL, align 8
  %220 = load i64*, i64** %9, align 8
  store i64 %219, i64* %220, align 8
  br label %221

221:                                              ; preds = %218, %215
  store i32 0, i32* %5, align 4
  br label %243

222:                                              ; preds = %164
  %223 = load %struct.puc_cfg*, %struct.puc_cfg** %10, align 8
  %224 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 131
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = load i64, i64* @PUC_TYPE_PARALLEL, align 8
  %229 = load i64*, i64** %9, align 8
  store i64 %228, i64* %229, align 8
  br label %233

230:                                              ; preds = %222
  %231 = load i64, i64* @PUC_TYPE_SERIAL, align 8
  %232 = load i64*, i64** %9, align 8
  store i64 %231, i64* %232, align 8
  br label %233

233:                                              ; preds = %230, %227
  store i32 0, i32* %5, align 4
  br label %243

234:                                              ; preds = %164
  %235 = load i64, i64* @PUC_TYPE_SERIAL, align 8
  %236 = load i64*, i64** %9, align 8
  store i64 %235, i64* %236, align 8
  store i32 0, i32* %5, align 4
  br label %243

237:                                              ; preds = %34
  %238 = load i32, i32* @ENXIO, align 4
  %239 = sext i32 %238 to i64
  %240 = load i64*, i64** %9, align 8
  store i64 %239, i64* %240, align 8
  store i32 0, i32* %5, align 4
  br label %243

241:                                              ; preds = %34, %90
  %242 = load i32, i32* @ENXIO, align 4
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %241, %237, %234, %233, %221, %204, %182, %162, %147, %139, %126, %116, %114, %98, %96, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %64, %61, %55, %53, %43, %41, %30
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
