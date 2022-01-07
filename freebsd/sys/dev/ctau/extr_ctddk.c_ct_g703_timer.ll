; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_g703_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_g703_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_10__*, i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@M_G703 = common dso_local global i64 0, align 8
@GERR_BPV1 = common dso_local global i32 0, align 4
@GERR_BPV0 = common dso_local global i32 0, align 4
@GERR_ERR1 = common dso_local global i32 0, align 4
@GERR_ERR0 = common dso_local global i32 0, align 4
@GLDR_LREQ1 = common dso_local global i32 0, align 4
@GLDR_LREQ0 = common dso_local global i32 0, align 4
@ESTS_LOS = common dso_local global i32 0, align 4
@ESTS_TSTERR = common dso_local global i32 0, align 4
@ESTS_TSTREQ = common dso_local global i32 0, align 4
@ESTS_NOALARM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ct_g703_timer(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @M_G703, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %399

18:                                               ; preds = %1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %21, %24
  %26 = icmp sle i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %399

28:                                               ; preds = %18
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 8
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = call i32 @ct_get_cd(%struct.TYPE_9__* %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 9
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @GERR(i32 %37)
  %39 = call i32 @inb(i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 10
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* @GERR_BPV1, align 4
  br label %48

46:                                               ; preds = %28
  %47 = load i32, i32* @GERR_BPV0, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = and i32 %39, %49
  store i32 %50, i32* %3, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 9
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @GERR(i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @outb(i32 %56, i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 9
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @GERR(i32 %63)
  %65 = call i32 @inb(i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 10
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %48
  %71 = load i32, i32* @GERR_ERR1, align 4
  br label %74

72:                                               ; preds = %48
  %73 = load i32, i32* @GERR_ERR0, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = and i32 %65, %75
  store i32 %76, i32* %5, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 9
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @GERR(i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @outb(i32 %82, i32 %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 9
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @GLDR(i32 %89)
  %91 = call i32 @inb(i32 %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 10
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %74
  %97 = load i32, i32* @GLDR_LREQ1, align 4
  br label %100

98:                                               ; preds = %74
  %99 = load i32, i32* @GLDR_LREQ0, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = and i32 %91, %101
  store i32 %102, i32* %6, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 9
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @GLDR(i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @outb(i32 %108, i32 %109)
  %111 = load i32, i32* %3, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %100
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 11
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %116, align 8
  br label %119

119:                                              ; preds = %113, %100
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* @ESTS_LOS, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %119
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i32, i32* @ESTS_TSTERR, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %131, %128
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load i32, i32* @ESTS_TSTREQ, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %140, %137
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* @ESTS_NOALARM, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 8
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %151, %146
  %156 = load i32, i32* %4, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158, %155
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 7
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %164, align 8
  br label %192

167:                                              ; preds = %158
  %168 = load i32, i32* %3, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %173, align 8
  br label %176

176:                                              ; preds = %170, %167
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 4
  %181 = load i32, i32* %4, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %176
  %184 = load i32, i32* %3, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %186, %183, %176
  br label %192

192:                                              ; preds = %191, %161
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sdiv i32 %195, 60
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %218

198:                                              ; preds = %192
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = mul nsw i32 %201, 2
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = icmp sgt i32 %202, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %198
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %210, align 8
  br label %213

213:                                              ; preds = %207, %198
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 3
  store i32 0, i32* %215, align 4
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 4
  store i32 0, i32* %217, align 8
  br label %218

218:                                              ; preds = %213, %192
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp sgt i32 %221, 900
  br i1 %222, label %223, label %399

223:                                              ; preds = %218
  store i32 47, i32* %7, align 4
  br label %224

224:                                              ; preds = %243, %223
  %225 = load i32, i32* %7, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %246

227:                                              ; preds = %224
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 7
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %229, align 8
  %231 = load i32, i32* %7, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i64 %232
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 7
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = sub nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i64 %239
  %241 = bitcast %struct.TYPE_10__* %233 to i8*
  %242 = bitcast %struct.TYPE_10__* %240 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %241, i8* align 8 %242, i64 96, i1 false)
  br label %243

243:                                              ; preds = %227
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* %7, align 4
  br label %224

246:                                              ; preds = %224
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 7
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i64 0
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 5
  %253 = bitcast %struct.TYPE_10__* %250 to i8*
  %254 = bitcast %struct.TYPE_10__* %252 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %253, i8* align 8 %254, i64 96, i1 false)
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 11
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 6
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 11
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = add nsw i64 %263, %258
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %261, align 4
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 10
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 6
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 10
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = add nsw i64 %274, %269
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %272, align 8
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 9
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 6
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 9
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %285, %280
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %283, align 4
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 5
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 8
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 6
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 8
  %295 = load i32, i32* %294, align 8
  %296 = sext i32 %295 to i64
  %297 = add nsw i64 %296, %291
  %298 = trunc i64 %297 to i32
  store i32 %298, i32* %294, align 8
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 5
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 7
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 6
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 7
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  %308 = add nsw i64 %307, %302
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %305, align 4
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 5
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 6
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 6
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 6
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = add nsw i64 %318, %313
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %316, align 8
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 5
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 5
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 6
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 5
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %329, %324
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %327, align 4
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 5
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 4
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 6
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 8
  %340 = sext i32 %339 to i64
  %341 = add nsw i64 %340, %335
  %342 = trunc i64 %341 to i32
  store i32 %342, i32* %338, align 8
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 5
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 3
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 6
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = add nsw i64 %351, %346
  %353 = trunc i64 %352 to i32
  store i32 %353, i32* %349, align 4
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 5
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 6
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = sext i32 %361 to i64
  %363 = add nsw i64 %362, %357
  %364 = trunc i64 %363 to i32
  store i32 %364, i32* %360, align 8
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 5
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 6
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %372 to i64
  %374 = add nsw i64 %373, %368
  %375 = trunc i64 %374 to i32
  store i32 %375, i32* %371, align 4
  %376 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 5
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 6
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = sext i32 %383 to i64
  %385 = add nsw i64 %384, %379
  %386 = trunc i64 %385 to i32
  store i32 %386, i32* %382, align 8
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 5
  %389 = call i32 @memset(%struct.TYPE_10__* %388, i32 0, i32 96)
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = add nsw i32 %395, %392
  store i32 %396, i32* %394, align 8
  %397 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 0
  store i32 0, i32* %398, align 8
  br label %399

399:                                              ; preds = %17, %27, %246, %218
  ret void
}

declare dso_local i32 @ct_get_cd(%struct.TYPE_9__*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @GERR(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @GLDR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
