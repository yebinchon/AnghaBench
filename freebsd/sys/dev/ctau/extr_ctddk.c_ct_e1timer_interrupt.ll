; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_e1timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_e1timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, i64, i32, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_10__*, %struct.TYPE_9__, i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32 }

@DS_SR2 = common dso_local global i32 0, align 4
@SR2_SEC = common dso_local global i8 0, align 1
@DS_SR1 = common dso_local global i32 0, align 4
@DS_SSR = common dso_local global i32 0, align 4
@SR1_RCL = common dso_local global i8 0, align 1
@SR1_RLOS = common dso_local global i8 0, align 1
@ESTS_LOS = common dso_local global i32 0, align 4
@SR1_RUA1 = common dso_local global i8 0, align 1
@ESTS_AIS = common dso_local global i32 0, align 4
@SR1_RSA1 = common dso_local global i8 0, align 1
@ESTS_AIS16 = common dso_local global i32 0, align 4
@SR1_RDMA = common dso_local global i8 0, align 1
@ESTS_FARLOMF = common dso_local global i32 0, align 4
@SR1_RRA = common dso_local global i8 0, align 1
@ESTS_FARLOF = common dso_local global i32 0, align 4
@SR1_RSLIP = common dso_local global i8 0, align 1
@SSR_SYNC = common dso_local global i8 0, align 1
@ESTS_LOF = common dso_local global i32 0, align 4
@SSR_SYNC_CAS = common dso_local global i8 0, align 1
@SSR_SYNC_CRC4 = common dso_local global i8 0, align 1
@ESTS_LOMF = common dso_local global i32 0, align 4
@ESTS_NOALARM = common dso_local global i32 0, align 4
@DS_VCR1 = common dso_local global i32 0, align 4
@DS_VCR2 = common dso_local global i32 0, align 4
@DS_FASCR1 = common dso_local global i32 0, align 4
@DS_FASCR2 = common dso_local global i32 0, align 4
@DS_CRCCR1 = common dso_local global i32 0, align 4
@DS_CRCCR2 = common dso_local global i32 0, align 4
@DS_EBCR1 = common dso_local global i32 0, align 4
@DS_EBCR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @ct_e1timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_e1timer_interrupt(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 11
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 10
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call zeroext i16 @E1CS1(i32 %23)
  %25 = zext i16 %24 to i32
  br label %34

26:                                               ; preds = %1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 10
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call zeroext i16 @E1CS0(i32 %31)
  %33 = zext i16 %32 to i32
  br label %34

34:                                               ; preds = %26, %18
  %35 = phi i32 [ %25, %18 ], [ %33, %26 ]
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %3, align 2
  %37 = load i16, i16* %3, align 2
  %38 = load i32, i32* @DS_SR2, align 4
  %39 = call zeroext i8 @cte_ins(i16 zeroext %37, i32 %38, i32 255)
  store i8 %39, i8* %5, align 1
  %40 = load i8, i8* %5, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @SR2_SEC, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  br label %601

47:                                               ; preds = %34
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %54, align 8
  br label %601

57:                                               ; preds = %47
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 9
  store i32 0, i32* %63, align 8
  %64 = load i16, i16* %3, align 2
  %65 = load i32, i32* @DS_SR1, align 4
  %66 = call zeroext i8 @cte_ins(i16 zeroext %64, i32 %65, i32 255)
  store i8 %66, i8* %4, align 1
  %67 = load i16, i16* %3, align 2
  %68 = load i32, i32* @DS_SSR, align 4
  %69 = call zeroext i8 @cte_in(i16 zeroext %67, i32 %68)
  store i8 %69, i8* %6, align 1
  store i64 0, i64* %12, align 8
  %70 = load i8, i8* %4, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @SR1_RCL, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* @SR1_RLOS, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %73, %75
  %77 = and i32 %71, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %57
  %80 = load i32, i32* @ESTS_LOS, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %57
  %86 = load i8, i8* %4, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* @SR1_RUA1, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load i32, i32* @ESTS_AIS, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %85
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %98
  %105 = load i8, i8* %4, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* @SR1_RSA1, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load i32, i32* @ESTS_AIS16, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %104, %98
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %117
  %124 = load i8, i8* %4, align 1
  %125 = zext i8 %124 to i32
  %126 = load i8, i8* @SR1_RDMA, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %125, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load i32, i32* @ESTS_FARLOMF, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %130, %123, %117
  %137 = load i8, i8* %4, align 1
  %138 = zext i8 %137 to i32
  %139 = load i8, i8* @SR1_RRA, align 1
  %140 = zext i8 %139 to i32
  %141 = and i32 %138, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load i32, i32* @ESTS_FARLOF, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %136
  %150 = load i8, i8* %4, align 1
  %151 = zext i8 %150 to i32
  %152 = load i8, i8* @SR1_RSLIP, align 1
  %153 = zext i8 %152 to i32
  %154 = and i32 %151, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %159, align 8
  br label %162

162:                                              ; preds = %156, %149
  %163 = load i8, i8* %6, align 1
  %164 = zext i8 %163 to i32
  %165 = load i8, i8* @SSR_SYNC, align 1
  %166 = zext i8 %165 to i32
  %167 = and i32 %164, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %162
  %170 = load i32, i32* @ESTS_LOF, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load i64, i64* %12, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %12, align 8
  br label %177

177:                                              ; preds = %169, %162
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %177
  %184 = load i8, i8* %6, align 1
  %185 = zext i8 %184 to i32
  %186 = load i8, i8* @SSR_SYNC_CAS, align 1
  %187 = zext i8 %186 to i32
  %188 = and i32 %185, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %203, label %190

190:                                              ; preds = %183, %177
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %211

196:                                              ; preds = %190
  %197 = load i8, i8* %6, align 1
  %198 = zext i8 %197 to i32
  %199 = load i8, i8* @SSR_SYNC_CRC4, align 1
  %200 = zext i8 %199 to i32
  %201 = and i32 %198, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %196, %183
  %204 = load i32, i32* @ESTS_LOMF, align 4
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 9
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 8
  %209 = load i64, i64* %12, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %12, align 8
  br label %211

211:                                              ; preds = %203, %196, %190
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 9
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %211
  %217 = load i32, i32* @ESTS_NOALARM, align 4
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 9
  store i32 %217, i32* %219, align 8
  br label %220

220:                                              ; preds = %216, %211
  %221 = load i16, i16* %3, align 2
  %222 = load i32, i32* @DS_VCR1, align 4
  %223 = call zeroext i8 @cte_in(i16 zeroext %221, i32 %222)
  %224 = load i16, i16* %3, align 2
  %225 = load i32, i32* @DS_VCR2, align 4
  %226 = call zeroext i8 @cte_in(i16 zeroext %224, i32 %225)
  %227 = call i64 @VCR(i8 zeroext %223, i8 zeroext %226)
  store i64 %227, i64* %7, align 8
  %228 = load i16, i16* %3, align 2
  %229 = load i32, i32* @DS_FASCR1, align 4
  %230 = call zeroext i8 @cte_in(i16 zeroext %228, i32 %229)
  %231 = load i16, i16* %3, align 2
  %232 = load i32, i32* @DS_FASCR2, align 4
  %233 = call zeroext i8 @cte_in(i16 zeroext %231, i32 %232)
  %234 = call i64 @FASCR(i8 zeroext %230, i8 zeroext %233)
  store i64 %234, i64* %8, align 8
  %235 = load i16, i16* %3, align 2
  %236 = load i32, i32* @DS_CRCCR1, align 4
  %237 = call zeroext i8 @cte_in(i16 zeroext %235, i32 %236)
  %238 = load i16, i16* %3, align 2
  %239 = load i32, i32* @DS_CRCCR2, align 4
  %240 = call zeroext i8 @cte_in(i16 zeroext %238, i32 %239)
  %241 = call i64 @CRCCR(i8 zeroext %237, i8 zeroext %240)
  store i64 %241, i64* %9, align 8
  %242 = load i16, i16* %3, align 2
  %243 = load i32, i32* @DS_EBCR1, align 4
  %244 = call zeroext i8 @cte_in(i16 zeroext %242, i32 %243)
  %245 = load i16, i16* %3, align 2
  %246 = load i32, i32* @DS_EBCR2, align 4
  %247 = call zeroext i8 @cte_in(i16 zeroext %245, i32 %246)
  %248 = call i64 @EBCR(i8 zeroext %244, i8 zeroext %247)
  store i64 %248, i64* %10, align 8
  %249 = load i64, i64* %7, align 8
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 11
  %253 = load i64, i64* %252, align 8
  %254 = add i64 %253, %249
  store i64 %254, i64* %252, align 8
  %255 = load i64, i64* %8, align 8
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 10
  %259 = load i64, i64* %258, align 8
  %260 = add i64 %259, %255
  store i64 %260, i64* %258, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %279

266:                                              ; preds = %220
  %267 = load i64, i64* %9, align 8
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 9
  %271 = load i64, i64* %270, align 8
  %272 = add i64 %271, %267
  store i64 %272, i64* %270, align 8
  %273 = load i64, i64* %10, align 8
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 8
  %277 = load i64, i64* %276, align 8
  %278 = add i64 %277, %273
  store i64 %278, i64* %276, align 8
  br label %279

279:                                              ; preds = %266, %220
  %280 = load i64, i64* %8, align 8
  store i64 %280, i64* %11, align 8
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %279
  %287 = load i64, i64* %9, align 8
  %288 = load i64, i64* %11, align 8
  %289 = add i64 %288, %287
  store i64 %289, i64* %11, align 8
  br label %290

290:                                              ; preds = %286, %279
  %291 = load i8, i8* %4, align 1
  %292 = zext i8 %291 to i32
  %293 = load i8, i8* @SR1_RUA1, align 1
  %294 = zext i8 %293 to i32
  %295 = load i8, i8* @SR1_RCL, align 1
  %296 = zext i8 %295 to i32
  %297 = or i32 %294, %296
  %298 = load i8, i8* @SR1_RLOS, align 1
  %299 = zext i8 %298 to i32
  %300 = or i32 %297, %299
  %301 = and i32 %292, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %290
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 5
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 7
  %307 = load i64, i64* %306, align 8
  %308 = add nsw i64 %307, 1
  store i64 %308, i64* %306, align 8
  br label %380

309:                                              ; preds = %290
  %310 = load i64, i64* %7, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %309
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 5
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 6
  %316 = load i64, i64* %315, align 8
  %317 = add nsw i64 %316, 1
  store i64 %317, i64* %315, align 8
  br label %318

318:                                              ; preds = %312, %309
  %319 = load i64, i64* %11, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %331, label %321

321:                                              ; preds = %318
  %322 = load i64, i64* %12, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %331, label %324

324:                                              ; preds = %321
  %325 = load i8, i8* %4, align 1
  %326 = zext i8 %325 to i32
  %327 = load i8, i8* @SR1_RSLIP, align 1
  %328 = zext i8 %327 to i32
  %329 = and i32 %326, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %337

331:                                              ; preds = %324, %321, %318
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 5
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 5
  %335 = load i64, i64* %334, align 8
  %336 = add nsw i64 %335, 1
  store i64 %336, i64* %334, align 8
  br label %337

337:                                              ; preds = %331, %324
  %338 = load i64, i64* %12, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %337
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 2
  %344 = load i64, i64* %343, align 8
  %345 = add nsw i64 %344, 1
  store i64 %345, i64* %343, align 8
  br label %346

346:                                              ; preds = %340, %337
  %347 = load i64, i64* %7, align 8
  %348 = icmp uge i64 %347, 2048
  br i1 %348, label %352, label %349

349:                                              ; preds = %346
  %350 = load i64, i64* %11, align 8
  %351 = icmp uge i64 %350, 832
  br i1 %351, label %352, label %358

352:                                              ; preds = %349, %346
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 5
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i32 0, i32 3
  %356 = load i64, i64* %355, align 8
  %357 = add nsw i64 %356, 1
  store i64 %357, i64* %355, align 8
  br label %379

358:                                              ; preds = %349
  %359 = load i64, i64* %11, align 8
  %360 = icmp ugt i64 %359, 1
  br i1 %360, label %361, label %367

361:                                              ; preds = %358
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 5
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 4
  %365 = load i64, i64* %364, align 8
  %366 = add nsw i64 %365, 1
  store i64 %366, i64* %364, align 8
  br label %367

367:                                              ; preds = %361, %358
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %369, align 4
  %372 = load i64, i64* %7, align 8
  %373 = load i64, i64* %11, align 8
  %374 = add i64 %372, %373
  %375 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 3
  %377 = load i64, i64* %376, align 8
  %378 = add i64 %377, %374
  store i64 %378, i64* %376, align 8
  br label %379

379:                                              ; preds = %367, %352
  br label %380

380:                                              ; preds = %379, %303
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = sdiv i32 %383, 60
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %408

386:                                              ; preds = %380
  %387 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 3
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 4
  %393 = mul nsw i32 %392, 2048
  %394 = sdiv i32 %393, 1000
  %395 = sext i32 %394 to i64
  %396 = icmp ugt i64 %389, %395
  br i1 %396, label %397, label %403

397:                                              ; preds = %386
  %398 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 5
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = add nsw i64 %401, 1
  store i64 %402, i64* %400, align 8
  br label %403

403:                                              ; preds = %397, %386
  %404 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %405 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %404, i32 0, i32 2
  store i32 0, i32* %405, align 4
  %406 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 3
  store i64 0, i64* %407, align 8
  br label %408

408:                                              ; preds = %403, %380
  %409 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 8
  %412 = icmp sgt i32 %411, 900
  br i1 %412, label %413, label %601

413:                                              ; preds = %408
  store i32 47, i32* %13, align 4
  br label %414

414:                                              ; preds = %433, %413
  %415 = load i32, i32* %13, align 4
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %436

417:                                              ; preds = %414
  %418 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %419 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %418, i32 0, i32 7
  %420 = load %struct.TYPE_10__*, %struct.TYPE_10__** %419, align 8
  %421 = load i32, i32* %13, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %420, i64 %422
  %424 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %425 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %424, i32 0, i32 7
  %426 = load %struct.TYPE_10__*, %struct.TYPE_10__** %425, align 8
  %427 = load i32, i32* %13, align 4
  %428 = sub nsw i32 %427, 1
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %426, i64 %429
  %431 = bitcast %struct.TYPE_10__* %423 to i8*
  %432 = bitcast %struct.TYPE_10__* %430 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %431, i8* align 8 %432, i64 96, i1 false)
  br label %433

433:                                              ; preds = %417
  %434 = load i32, i32* %13, align 4
  %435 = add nsw i32 %434, -1
  store i32 %435, i32* %13, align 4
  br label %414

436:                                              ; preds = %414
  %437 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %438 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %437, i32 0, i32 7
  %439 = load %struct.TYPE_10__*, %struct.TYPE_10__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %439, i64 0
  %441 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %442 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %441, i32 0, i32 5
  %443 = bitcast %struct.TYPE_10__* %440 to i8*
  %444 = bitcast %struct.TYPE_10__* %442 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %443, i8* align 8 %444, i64 96, i1 false)
  %445 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 5
  %447 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %446, i32 0, i32 11
  %448 = load i64, i64* %447, align 8
  %449 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %450 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %449, i32 0, i32 6
  %451 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %450, i32 0, i32 11
  %452 = load i32, i32* %451, align 4
  %453 = sext i32 %452 to i64
  %454 = add nsw i64 %453, %448
  %455 = trunc i64 %454 to i32
  store i32 %455, i32* %451, align 4
  %456 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %457 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %456, i32 0, i32 5
  %458 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %457, i32 0, i32 10
  %459 = load i64, i64* %458, align 8
  %460 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i32 0, i32 6
  %462 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %461, i32 0, i32 10
  %463 = load i32, i32* %462, align 8
  %464 = sext i32 %463 to i64
  %465 = add nsw i64 %464, %459
  %466 = trunc i64 %465 to i32
  store i32 %466, i32* %462, align 8
  %467 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %468 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %467, i32 0, i32 5
  %469 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %468, i32 0, i32 9
  %470 = load i64, i64* %469, align 8
  %471 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %472 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %471, i32 0, i32 6
  %473 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %472, i32 0, i32 9
  %474 = load i32, i32* %473, align 4
  %475 = sext i32 %474 to i64
  %476 = add nsw i64 %475, %470
  %477 = trunc i64 %476 to i32
  store i32 %477, i32* %473, align 4
  %478 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %479 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %478, i32 0, i32 5
  %480 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %479, i32 0, i32 8
  %481 = load i64, i64* %480, align 8
  %482 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %483 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %482, i32 0, i32 6
  %484 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %483, i32 0, i32 8
  %485 = load i32, i32* %484, align 8
  %486 = sext i32 %485 to i64
  %487 = add nsw i64 %486, %481
  %488 = trunc i64 %487 to i32
  store i32 %488, i32* %484, align 8
  %489 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %490 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %489, i32 0, i32 5
  %491 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %490, i32 0, i32 7
  %492 = load i64, i64* %491, align 8
  %493 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %494 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %493, i32 0, i32 6
  %495 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %494, i32 0, i32 7
  %496 = load i32, i32* %495, align 4
  %497 = sext i32 %496 to i64
  %498 = add nsw i64 %497, %492
  %499 = trunc i64 %498 to i32
  store i32 %499, i32* %495, align 4
  %500 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %501 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %500, i32 0, i32 5
  %502 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %501, i32 0, i32 6
  %503 = load i64, i64* %502, align 8
  %504 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %505 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %504, i32 0, i32 6
  %506 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %505, i32 0, i32 6
  %507 = load i32, i32* %506, align 8
  %508 = sext i32 %507 to i64
  %509 = add nsw i64 %508, %503
  %510 = trunc i64 %509 to i32
  store i32 %510, i32* %506, align 8
  %511 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %512 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %511, i32 0, i32 5
  %513 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %512, i32 0, i32 5
  %514 = load i64, i64* %513, align 8
  %515 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %516 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %515, i32 0, i32 6
  %517 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %516, i32 0, i32 5
  %518 = load i32, i32* %517, align 4
  %519 = sext i32 %518 to i64
  %520 = add nsw i64 %519, %514
  %521 = trunc i64 %520 to i32
  store i32 %521, i32* %517, align 4
  %522 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %523 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %522, i32 0, i32 5
  %524 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %523, i32 0, i32 4
  %525 = load i64, i64* %524, align 8
  %526 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %527 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %526, i32 0, i32 6
  %528 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %527, i32 0, i32 4
  %529 = load i32, i32* %528, align 8
  %530 = sext i32 %529 to i64
  %531 = add nsw i64 %530, %525
  %532 = trunc i64 %531 to i32
  store i32 %532, i32* %528, align 8
  %533 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %534 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %533, i32 0, i32 5
  %535 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %534, i32 0, i32 3
  %536 = load i64, i64* %535, align 8
  %537 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %538 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %537, i32 0, i32 6
  %539 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %538, i32 0, i32 3
  %540 = load i32, i32* %539, align 4
  %541 = sext i32 %540 to i64
  %542 = add nsw i64 %541, %536
  %543 = trunc i64 %542 to i32
  store i32 %543, i32* %539, align 4
  %544 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %545 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %544, i32 0, i32 5
  %546 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %545, i32 0, i32 2
  %547 = load i64, i64* %546, align 8
  %548 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %549 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %548, i32 0, i32 6
  %550 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 8
  %552 = sext i32 %551 to i64
  %553 = add nsw i64 %552, %547
  %554 = trunc i64 %553 to i32
  store i32 %554, i32* %550, align 8
  %555 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %556 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %555, i32 0, i32 5
  %557 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %556, i32 0, i32 1
  %558 = load i64, i64* %557, align 8
  %559 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %560 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %559, i32 0, i32 6
  %561 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 4
  %563 = sext i32 %562 to i64
  %564 = add nsw i64 %563, %558
  %565 = trunc i64 %564 to i32
  store i32 %565, i32* %561, align 4
  %566 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %567 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %566, i32 0, i32 5
  %568 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %567, i32 0, i32 0
  %569 = load i64, i64* %568, align 8
  %570 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %571 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %570, i32 0, i32 6
  %572 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 8
  %574 = sext i32 %573 to i64
  %575 = add nsw i64 %574, %569
  %576 = trunc i64 %575 to i32
  store i32 %576, i32* %572, align 8
  store i32 0, i32* %13, align 4
  br label %577

577:                                              ; preds = %588, %436
  %578 = load i32, i32* %13, align 4
  %579 = sext i32 %578 to i64
  %580 = icmp ult i64 %579, 96
  br i1 %580, label %581, label %591

581:                                              ; preds = %577
  %582 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %583 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %582, i32 0, i32 5
  %584 = bitcast %struct.TYPE_10__* %583 to i8*
  %585 = load i32, i32* %13, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i8, i8* %584, i64 %586
  store i8 0, i8* %587, align 1
  br label %588

588:                                              ; preds = %581
  %589 = load i32, i32* %13, align 4
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* %13, align 4
  br label %577

591:                                              ; preds = %577
  %592 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %593 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %592, i32 0, i32 1
  %594 = load i32, i32* %593, align 8
  %595 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %596 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %595, i32 0, i32 4
  %597 = load i32, i32* %596, align 8
  %598 = add nsw i32 %597, %594
  store i32 %598, i32* %596, align 8
  %599 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %600 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %599, i32 0, i32 1
  store i32 0, i32* %600, align 8
  br label %601

601:                                              ; preds = %46, %52, %591, %408
  ret void
}

declare dso_local zeroext i16 @E1CS1(i32) #1

declare dso_local zeroext i16 @E1CS0(i32) #1

declare dso_local zeroext i8 @cte_ins(i16 zeroext, i32, i32) #1

declare dso_local zeroext i8 @cte_in(i16 zeroext, i32) #1

declare dso_local i64 @VCR(i8 zeroext, i8 zeroext) #1

declare dso_local i64 @FASCR(i8 zeroext, i8 zeroext) #1

declare dso_local i64 @CRCCR(i8 zeroext, i8 zeroext) #1

declare dso_local i64 @EBCR(i8 zeroext, i8 zeroext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
