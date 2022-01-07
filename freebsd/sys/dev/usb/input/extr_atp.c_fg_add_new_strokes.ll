; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_fg_add_new_strokes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_fg_add_new_strokes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atp_softc = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }

@FG_MAX_PSPANS_PER_AXIS = common dso_local global i32 0, align 4
@X = common dso_local global i64 0, align 8
@Y = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atp_softc*, %struct.TYPE_6__*, i64, %struct.TYPE_6__*, i64)* @fg_add_new_strokes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fg_add_new_strokes(%struct.atp_softc* %0, %struct.TYPE_6__* %1, i64 %2, %struct.TYPE_6__* %3, i64 %4) #0 {
  %6 = alloca %struct.atp_softc*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [2 x i64], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.atp_softc* %0, %struct.atp_softc** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i64 %4, i64* %10, align 8
  %20 = load i32, i32* @FG_MAX_PSPANS_PER_AXIS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = mul nuw i64 2, %21
  %24 = alloca %struct.TYPE_6__, i64 %23, align 16
  store i64 %21, i64* %12, align 8
  store i64 0, i64* %14, align 8
  %25 = load i64, i64* @X, align 8
  %26 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %25
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %56, %5
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = load i64, i64* %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %31
  %39 = load i64, i64* @X, align 8
  %40 = mul nsw i64 %39, %21
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %40
  %42 = load i64, i64* @X, align 8
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = load i64, i64* %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %47
  %49 = bitcast %struct.TYPE_6__* %45 to i8*
  %50 = bitcast %struct.TYPE_6__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %49, i8* align 8 %50, i64 16, i1 false)
  %51 = load i64, i64* @X, align 8
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %38, %31
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %14, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %14, align 8
  br label %27

59:                                               ; preds = %27
  store i64 0, i64* %15, align 8
  %60 = load i64, i64* @Y, align 8
  %61 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %60
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %91, %59
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %94

66:                                               ; preds = %62
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = load i64, i64* %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %66
  %74 = load i64, i64* @Y, align 8
  %75 = mul nsw i64 %74, %21
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %75
  %77 = load i64, i64* @Y, align 8
  %78 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %79
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %82 = load i64, i64* %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %82
  %84 = bitcast %struct.TYPE_6__* %80 to i8*
  %85 = bitcast %struct.TYPE_6__* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %84, i8* align 8 %85, i64 16, i1 false)
  %86 = load i64, i64* @Y, align 8
  %87 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %73, %66
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %15, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %15, align 8
  br label %62

94:                                               ; preds = %62
  %95 = load i64, i64* @X, align 8
  %96 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @Y, align 8
  %99 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %136

102:                                              ; preds = %94
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %103

103:                                              ; preds = %130, %102
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* @X, align 8
  %106 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %104, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* @Y, align 8
  %112 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp ult i64 %110, %113
  br label %115

115:                                              ; preds = %109, %103
  %116 = phi i1 [ false, %103 ], [ %114, %109 ]
  br i1 %116, label %117, label %135

117:                                              ; preds = %115
  %118 = load %struct.atp_softc*, %struct.atp_softc** %6, align 8
  %119 = load i64, i64* @X, align 8
  %120 = mul nsw i64 %119, %21
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %120
  %122 = load i64, i64* %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %122
  %124 = load i64, i64* @Y, align 8
  %125 = mul nsw i64 %124, %21
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %125
  %127 = load i64, i64* %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %127
  %129 = call i32 @fg_add_stroke(%struct.atp_softc* %118, %struct.TYPE_6__* %123, %struct.TYPE_6__* %128)
  br label %130

130:                                              ; preds = %117
  %131 = load i64, i64* %14, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %14, align 8
  %133 = load i64, i64* %15, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %15, align 8
  br label %103

135:                                              ; preds = %115
  br label %252

136:                                              ; preds = %94
  store i64 0, i64* %16, align 8
  store i64 0, i64* %19, align 8
  %137 = load i64, i64* @X, align 8
  %138 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @Y, align 8
  %141 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp ugt i64 %139, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %136
  %145 = load i64, i64* @Y, align 8
  br label %148

146:                                              ; preds = %136
  %147 = load i64, i64* @X, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i64 [ %145, %144 ], [ %147, %146 ]
  store i64 %149, i64* %17, align 8
  %150 = load i64, i64* @X, align 8
  %151 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @Y, align 8
  %154 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = sub i64 %152, %155
  %157 = call i64 @abs(i64 %156)
  store i64 %157, i64* %18, align 8
  store i64 0, i64* %14, align 8
  br label %158

158:                                              ; preds = %184, %148
  %159 = load i64, i64* %14, align 8
  %160 = load i64, i64* %17, align 8
  %161 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = icmp ult i64 %159, %162
  br i1 %163, label %164, label %187

164:                                              ; preds = %158
  %165 = load i64, i64* %17, align 8
  %166 = mul nsw i64 %165, %21
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %166
  %168 = load i64, i64* %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %16, align 8
  %173 = icmp ugt i64 %171, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %164
  %175 = load i64, i64* %14, align 8
  store i64 %175, i64* %19, align 8
  %176 = load i64, i64* %17, align 8
  %177 = mul nsw i64 %176, %21
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %177
  %179 = load i64, i64* %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %16, align 8
  br label %183

183:                                              ; preds = %174, %164
  br label %184

184:                                              ; preds = %183
  %185 = load i64, i64* %14, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %14, align 8
  br label %158

187:                                              ; preds = %158
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %188

188:                                              ; preds = %246, %187
  %189 = load i64, i64* %14, align 8
  %190 = load i64, i64* @X, align 8
  %191 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = icmp ult i64 %189, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %188
  %195 = load i64, i64* %15, align 8
  %196 = load i64, i64* @Y, align 8
  %197 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = icmp ult i64 %195, %198
  br label %200

200:                                              ; preds = %194, %188
  %201 = phi i1 [ false, %188 ], [ %199, %194 ]
  br i1 %201, label %202, label %251

202:                                              ; preds = %200
  %203 = load %struct.atp_softc*, %struct.atp_softc** %6, align 8
  %204 = load i64, i64* @X, align 8
  %205 = mul nsw i64 %204, %21
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %205
  %207 = load i64, i64* %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i64 %207
  %209 = load i64, i64* @Y, align 8
  %210 = mul nsw i64 %209, %21
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %210
  %212 = load i64, i64* %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i64 %212
  %214 = call i32 @fg_add_stroke(%struct.atp_softc* %203, %struct.TYPE_6__* %208, %struct.TYPE_6__* %213)
  %215 = load i64, i64* %18, align 8
  %216 = icmp ugt i64 %215, 0
  br i1 %216, label %217, label %245

217:                                              ; preds = %202
  %218 = load i64, i64* %17, align 8
  %219 = load i64, i64* @X, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %230

221:                                              ; preds = %217
  %222 = load i64, i64* %19, align 8
  %223 = load i64, i64* %14, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %221
  %226 = load i64, i64* %14, align 8
  %227 = add i64 %226, -1
  store i64 %227, i64* %14, align 8
  %228 = load i64, i64* %18, align 8
  %229 = add i64 %228, -1
  store i64 %229, i64* %18, align 8
  br label %244

230:                                              ; preds = %221, %217
  %231 = load i64, i64* %17, align 8
  %232 = load i64, i64* @Y, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %243

234:                                              ; preds = %230
  %235 = load i64, i64* %19, align 8
  %236 = load i64, i64* %15, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %234
  %239 = load i64, i64* %15, align 8
  %240 = add i64 %239, -1
  store i64 %240, i64* %15, align 8
  %241 = load i64, i64* %18, align 8
  %242 = add i64 %241, -1
  store i64 %242, i64* %18, align 8
  br label %243

243:                                              ; preds = %238, %234, %230
  br label %244

244:                                              ; preds = %243, %225
  br label %245

245:                                              ; preds = %244, %202
  br label %246

246:                                              ; preds = %245
  %247 = load i64, i64* %14, align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* %14, align 8
  %249 = load i64, i64* %15, align 8
  %250 = add i64 %249, 1
  store i64 %250, i64* %15, align 8
  br label %188

251:                                              ; preds = %200
  br label %252

252:                                              ; preds = %251, %135
  %253 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %253)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fg_add_stroke(%struct.atp_softc*, %struct.TYPE_6__*, %struct.TYPE_6__*) #3

declare dso_local i64 @abs(i64) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
