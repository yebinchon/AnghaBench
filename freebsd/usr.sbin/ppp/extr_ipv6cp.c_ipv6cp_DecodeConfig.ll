; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_DecodeConfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_DecodeConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32 }
%struct.fsm_decode = type { i64, i64, i64, i64 }
%struct.ipv6cp = type { i32, i32, i32, i32, i32*, i32, i32* }
%struct.fsm_opt = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@IPV6CP_IFIDLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c" %s[%d]\00", align 1
@LogIPV6CP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s 0x%02x%02x%02x%02x%02x%02x%02x%02x\0A\00", align 1
@LogPHASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"0x0000000000000000: Unacceptable IntefaceID!\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"0x%02x%02x%02x%02x%02x%02x%02x%02x: Unacceptable IntefaceID!\0A\00", align 1
@.str.4 = private unnamed_addr constant [99 x i8] c"%s changing IntefaceID: 0x%02x%02x%02x%02x%02x%02x%02x%02x --> 0x%02x%02x%02x%02x%02x%02x%02x%02x\0A\00", align 1
@MODE_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*, i32*, i32*, i32, %struct.fsm_decode*)* @ipv6cp_DecodeConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6cp_DecodeConfig(%struct.fsm* %0, i32* %1, i32* %2, i32 %3, %struct.fsm_decode* %4) #0 {
  %6 = alloca %struct.fsm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsm_decode*, align 8
  %11 = alloca %struct.ipv6cp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [100 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.fsm_opt*, align 8
  store %struct.fsm* %0, %struct.fsm** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.fsm_decode* %4, %struct.fsm_decode** %10, align 8
  %18 = load %struct.fsm*, %struct.fsm** %6, align 8
  %19 = call %struct.ipv6cp* @fsm2ipv6cp(%struct.fsm* %18)
  store %struct.ipv6cp* %19, %struct.ipv6cp** %11, align 8
  %20 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %27 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %28 = call i32 @memset(i32* %26, i32 0, i32 %27)
  br label %29

29:                                               ; preds = %301, %5
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = ptrtoint i32* %30 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = icmp sge i64 %35, 8
  br i1 %36, label %37, label %302

37:                                               ; preds = %29
  %38 = call %struct.fsm_opt* @fsm_readopt(i32** %7)
  store %struct.fsm_opt* %38, %struct.fsm_opt** %17, align 8
  %39 = icmp eq %struct.fsm_opt* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %302

41:                                               ; preds = %37
  %42 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %43 = load %struct.fsm_opt*, %struct.fsm_opt** %17, align 8
  %44 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @protoname(i32 %46)
  %48 = load %struct.fsm_opt*, %struct.fsm_opt** %17, align 8
  %49 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snprintf(i8* %42, i32 100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %47, i32 %51)
  %53 = load %struct.fsm_opt*, %struct.fsm_opt** %17, align 8
  %54 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %283 [
    i32 128, label %57
  ]

57:                                               ; preds = %41
  %58 = load %struct.fsm_opt*, %struct.fsm_opt** %17, align 8
  %59 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %62 = call i32 @memcpy(i32* %23, i32* %60, i32 %61)
  %63 = load i32, i32* @LogIPV6CP, align 4
  %64 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %65 = getelementptr inbounds i32, i32* %23, i64 0
  %66 = load i32, i32* %65, align 16
  %67 = getelementptr inbounds i32, i32* %23, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds i32, i32* %23, i64 2
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds i32, i32* %23, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds i32, i32* %23, i64 4
  %74 = load i32, i32* %73, align 16
  %75 = getelementptr inbounds i32, i32* %23, i64 5
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds i32, i32* %23, i64 6
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds i32, i32* %23, i64 7
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @log_Printf(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %64, i32 %66, i32 %68, i32 %70, i32 %72, i32 %74, i32 %76, i32 %78, i32 %80)
  %82 = load i32, i32* %9, align 4
  switch i32 %82, label %282 [
    i32 129, label %83
    i32 131, label %89
    i32 130, label %272
  ]

83:                                               ; preds = %57
  %84 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %85 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %87 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %88 = call i32 @ipv6cp_ValidateInterfaceID(%struct.ipv6cp* %86, i32* %23, %struct.fsm_decode* %87)
  br label %282

89:                                               ; preds = %57
  %90 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %91 = call i32 @memcmp(i32* %23, i32* %26, i32 %90)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i32, i32* @LogIPV6CP, align 4
  %95 = call i32 @log_IsKept(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @LogIPV6CP, align 4
  br label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @LogPHASE, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = call i32 (i32, i8*, ...) @log_Printf(i32 %102, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %105 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %104, i32 0, i32 5
  %106 = call i32 @fsm_Close(i32* %105)
  br label %271

107:                                              ; preds = %89
  %108 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %109 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %108, i32 0, i32 6
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %112 = call i32 @memcmp(i32* %23, i32* %110, i32 %111)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %141

114:                                              ; preds = %107
  %115 = load i32, i32* @LogIPV6CP, align 4
  %116 = call i32 @log_IsKept(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @LogIPV6CP, align 4
  br label %122

120:                                              ; preds = %114
  %121 = load i32, i32* @LogPHASE, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = getelementptr inbounds i32, i32* %23, i64 0
  %125 = load i32, i32* %124, align 16
  %126 = getelementptr inbounds i32, i32* %23, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds i32, i32* %23, i64 2
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds i32, i32* %23, i64 3
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds i32, i32* %23, i64 4
  %133 = load i32, i32* %132, align 16
  %134 = getelementptr inbounds i32, i32* %23, i64 5
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds i32, i32* %23, i64 6
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds i32, i32* %23, i64 7
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, ...) @log_Printf(i32 %123, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %125, i32 %127, i32 %129, i32 %131, i32 %133, i32 %135, i32 %137, i32 %139)
  br label %270

141:                                              ; preds = %107
  %142 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %143 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %146 = call i32 @memcmp(i32* %23, i32* %144, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %269

148:                                              ; preds = %141
  store i32 100, i32* %12, align 4
  br label %149

149:                                              ; preds = %179, %148
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %149
  %153 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %154 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %155 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %154, i32 0, i32 6
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @ipcp_SetIPv6address(%struct.ipv6cp* %153, i32* %23, i32* %156)
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  br label %160

160:                                              ; preds = %152, %149
  %161 = phi i1 [ false, %149 ], [ %159, %152 ]
  br i1 %161, label %162, label %180

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %177, %162
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %12, align 4
  %166 = call i32 @SetInterfaceID(i32* %23, i32 1)
  br label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %172 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %171, i32 0, i32 6
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %175 = call i32 @memcmp(i32* %23, i32* %173, i32 %174)
  %176 = icmp eq i32 %175, 0
  br label %177

177:                                              ; preds = %170, %167
  %178 = phi i1 [ false, %167 ], [ %176, %170 ]
  br i1 %178, label %163, label %179

179:                                              ; preds = %177
  br label %149

180:                                              ; preds = %160
  %181 = load i32, i32* %12, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %197

183:                                              ; preds = %180
  %184 = load i32, i32* @LogIPV6CP, align 4
  %185 = call i32 @log_IsKept(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = load i32, i32* @LogIPV6CP, align 4
  br label %191

189:                                              ; preds = %183
  %190 = load i32, i32* @LogPHASE, align 4
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi i32 [ %188, %187 ], [ %190, %189 ]
  %193 = call i32 (i32, i8*, ...) @log_Printf(i32 %192, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %194 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %195 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %194, i32 0, i32 5
  %196 = call i32 @fsm_Close(i32* %195)
  br label %268

197:                                              ; preds = %180
  %198 = load i32, i32* @LogIPV6CP, align 4
  %199 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %200 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %201 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %206 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %211 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 2
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %216 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %221 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %220, i32 0, i32 4
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 4
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %226 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %225, i32 0, i32 4
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 5
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %231 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 6
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %236 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %235, i32 0, i32 4
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 7
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds i32, i32* %23, i64 0
  %241 = load i32, i32* %240, align 16
  %242 = getelementptr inbounds i32, i32* %23, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds i32, i32* %23, i64 2
  %245 = load i32, i32* %244, align 8
  %246 = getelementptr inbounds i32, i32* %23, i64 3
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds i32, i32* %23, i64 4
  %249 = load i32, i32* %248, align 16
  %250 = getelementptr inbounds i32, i32* %23, i64 5
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds i32, i32* %23, i64 6
  %253 = load i32, i32* %252, align 8
  %254 = getelementptr inbounds i32, i32* %23, i64 7
  %255 = load i32, i32* %254, align 4
  %256 = call i32 (i32, i8*, ...) @log_Printf(i32 %198, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.4, i64 0, i64 0), i8* %199, i32 %204, i32 %209, i32 %214, i32 %219, i32 %224, i32 %229, i32 %234, i32 %239, i32 %241, i32 %243, i32 %245, i32 %247, i32 %249, i32 %251, i32 %253, i32 %255)
  %257 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %258 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %257, i32 0, i32 4
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %261 = call i32 @memcpy(i32* %259, i32* %23, i32 %260)
  %262 = load %struct.fsm*, %struct.fsm** %6, align 8
  %263 = getelementptr inbounds %struct.fsm, %struct.fsm* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %266 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %265, i32 0, i32 3
  %267 = call i32 @bundle_AdjustFilters(i32 %264, i32* %266, i32* null)
  br label %268

268:                                              ; preds = %197, %191
  br label %269

269:                                              ; preds = %268, %141
  br label %270

270:                                              ; preds = %269, %122
  br label %271

271:                                              ; preds = %270, %101
  br label %282

272:                                              ; preds = %57
  %273 = load %struct.fsm_opt*, %struct.fsm_opt** %17, align 8
  %274 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = shl i32 1, %276
  %278 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %279 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 4
  br label %282

282:                                              ; preds = %57, %272, %271, %83
  br label %301

283:                                              ; preds = %41
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* @MODE_NOP, align 4
  %286 = icmp ne i32 %284, %285
  br i1 %286, label %287, label %300

287:                                              ; preds = %283
  %288 = load %struct.fsm_opt*, %struct.fsm_opt** %17, align 8
  %289 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = shl i32 1, %291
  %293 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %294 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 8
  %297 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %298 = load %struct.fsm_opt*, %struct.fsm_opt** %17, align 8
  %299 = call i32 @fsm_rej(%struct.fsm_decode* %297, %struct.fsm_opt* %298)
  br label %300

300:                                              ; preds = %287, %283
  br label %301

301:                                              ; preds = %300, %282
  br label %29

302:                                              ; preds = %40, %29
  %303 = load i32, i32* %9, align 4
  %304 = load i32, i32* @MODE_NOP, align 4
  %305 = icmp ne i32 %303, %304
  br i1 %305, label %306, label %342

306:                                              ; preds = %302
  %307 = load i32, i32* %9, align 4
  %308 = icmp eq i32 %307, 129
  br i1 %308, label %309, label %339

309:                                              ; preds = %306
  %310 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %311 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %339, label %314

314:                                              ; preds = %309
  %315 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %316 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %319 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = icmp eq i64 %317, %320
  br i1 %321, label %322, label %333

322:                                              ; preds = %314
  %323 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %324 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %327 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %326, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = icmp eq i64 %325, %328
  br i1 %329, label %330, label %333

330:                                              ; preds = %322
  %331 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %332 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %331, i32 0, i32 0
  store i32 1, i32* %332, align 8
  br label %333

333:                                              ; preds = %330, %322, %314
  %334 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %335 = call i32 @memset(i32* %23, i32 0, i32 %334)
  %336 = load %struct.ipv6cp*, %struct.ipv6cp** %11, align 8
  %337 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %338 = call i32 @ipv6cp_ValidateInterfaceID(%struct.ipv6cp* %336, i32* %23, %struct.fsm_decode* %337)
  br label %339

339:                                              ; preds = %333, %309, %306
  %340 = load %struct.fsm_decode*, %struct.fsm_decode** %10, align 8
  %341 = call i32 @fsm_opt_normalise(%struct.fsm_decode* %340)
  br label %342

342:                                              ; preds = %339, %302
  %343 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %343)
  ret void
}

declare dso_local %struct.ipv6cp* @fsm2ipv6cp(%struct.fsm*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.fsm_opt* @fsm_readopt(i32**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @protoname(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @ipv6cp_ValidateInterfaceID(%struct.ipv6cp*, i32*, %struct.fsm_decode*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @log_IsKept(i32) #1

declare dso_local i32 @fsm_Close(i32*) #1

declare dso_local i32 @ipcp_SetIPv6address(%struct.ipv6cp*, i32*, i32*) #1

declare dso_local i32 @SetInterfaceID(i32*, i32) #1

declare dso_local i32 @bundle_AdjustFilters(i32, i32*, i32*) #1

declare dso_local i32 @fsm_rej(%struct.fsm_decode*, %struct.fsm_opt*) #1

declare dso_local i32 @fsm_opt_normalise(%struct.fsm_decode*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
