; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_jail.c_rdtun_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_jail.c_rdtun_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfjail = type { i32, i32, %struct.jailparam*, i32*, i32 }
%struct.jailparam = type { i32, i64, i32, i32*, i32* }

@JF_RDTUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"jid\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@jail_errmsg = common dso_local global i32* null, align 8
@IP_ALLOW_DYING = common dso_local global i64 0, align 8
@JAIL_DYING = common dso_local global i32 0, align 4
@JP_BOOL = common dso_local global i32 0, align 4
@JP_NOBOOL = common dso_local global i32 0, align 4
@CTLTYPE = common dso_local global i32 0, align 4
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s cannot be changed after creation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfjail*, i32)* @rdtun_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdtun_params(%struct.cfjail* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfjail*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jailparam*, align 8
  %7 = alloca %struct.jailparam*, align 8
  %8 = alloca %struct.jailparam*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cfjail* %0, %struct.cfjail** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %12 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @JF_RDTUN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %260

18:                                               ; preds = %2
  %19 = load i32, i32* @JF_RDTUN, align 4
  %20 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %21 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  store i32 0, i32* %9, align 4
  %24 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %25 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %24, i32 0, i32 2
  %26 = load %struct.jailparam*, %struct.jailparam** %25, align 8
  store %struct.jailparam* %26, %struct.jailparam** %6, align 8
  br label %27

27:                                               ; preds = %52, %18
  %28 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %29 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %30 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %29, i32 0, i32 2
  %31 = load %struct.jailparam*, %struct.jailparam** %30, align 8
  %32 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %33 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %31, i64 %35
  %37 = icmp ult %struct.jailparam* %28, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %27
  %39 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %40 = call i64 @JP_RDTUN(%struct.jailparam* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %44 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @strcmp(i32* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %42, %38
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %54 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %53, i32 1
  store %struct.jailparam* %54, %struct.jailparam** %6, align 8
  br label %27

55:                                               ; preds = %27
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %260

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 40
  %64 = trunc i64 %63 to i32
  %65 = call %struct.jailparam* @alloca(i32 %64)
  store %struct.jailparam* %65, %struct.jailparam** %7, align 8
  store %struct.jailparam* %65, %struct.jailparam** %8, align 8
  %66 = load %struct.jailparam*, %struct.jailparam** %8, align 8
  %67 = call i64 @jailparam_init(%struct.jailparam* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %59
  %70 = load %struct.jailparam*, %struct.jailparam** %8, align 8
  %71 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %72 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %71, i32 0, i32 4
  %73 = call i64 @jailparam_import_raw(%struct.jailparam* %70, i32* %72, i32 4)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69, %59
  %76 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %77 = load i32*, i32** @jail_errmsg, align 8
  %78 = call i32 @jail_warnx(%struct.cfjail* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %77)
  %79 = call i32 @exit(i32 1) #4
  unreachable

80:                                               ; preds = %69
  %81 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %82 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %81, i32 0, i32 2
  %83 = load %struct.jailparam*, %struct.jailparam** %82, align 8
  store %struct.jailparam* %83, %struct.jailparam** %6, align 8
  br label %84

84:                                               ; preds = %114, %80
  %85 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %86 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %87 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %86, i32 0, i32 2
  %88 = load %struct.jailparam*, %struct.jailparam** %87, align 8
  %89 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %90 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %88, i64 %92
  %94 = icmp ult %struct.jailparam* %85, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %84
  %96 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %97 = call i64 @JP_RDTUN(%struct.jailparam* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %101 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @strcmp(i32* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load %struct.jailparam*, %struct.jailparam** %8, align 8
  %107 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %106, i32 1
  store %struct.jailparam* %107, %struct.jailparam** %8, align 8
  %108 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %109 = bitcast %struct.jailparam* %107 to i8*
  %110 = bitcast %struct.jailparam* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 40, i1 false)
  %111 = load %struct.jailparam*, %struct.jailparam** %8, align 8
  %112 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %111, i32 0, i32 4
  store i32* null, i32** %112, align 8
  br label %113

113:                                              ; preds = %105, %99, %95
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %116 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %115, i32 1
  store %struct.jailparam* %116, %struct.jailparam** %6, align 8
  br label %84

117:                                              ; preds = %84
  store i32 0, i32* %10, align 4
  %118 = load %struct.jailparam*, %struct.jailparam** %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %121 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @IP_ALLOW_DYING, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @bool_param(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %117
  %129 = load i32, i32* @JAIL_DYING, align 4
  br label %131

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %128
  %132 = phi i32 [ %129, %128 ], [ 0, %130 ]
  %133 = call i64 @jailparam_get(%struct.jailparam* %118, i32 %119, i32 %132)
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %239

135:                                              ; preds = %131
  %136 = load %struct.jailparam*, %struct.jailparam** %7, align 8
  %137 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %136, i64 1
  store %struct.jailparam* %137, %struct.jailparam** %8, align 8
  %138 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %139 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %138, i32 0, i32 2
  %140 = load %struct.jailparam*, %struct.jailparam** %139, align 8
  store %struct.jailparam* %140, %struct.jailparam** %6, align 8
  br label %141

141:                                              ; preds = %235, %135
  %142 = load %struct.jailparam*, %struct.jailparam** %8, align 8
  %143 = load %struct.jailparam*, %struct.jailparam** %7, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %143, i64 %145
  %147 = icmp ult %struct.jailparam* %142, %146
  br i1 %147, label %148, label %238

148:                                              ; preds = %141
  %149 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %150 = call i64 @JP_RDTUN(%struct.jailparam* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %234

152:                                              ; preds = %148
  %153 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %154 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = call i64 @strcmp(i32* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %234

158:                                              ; preds = %152
  %159 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %160 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @JP_BOOL, align 4
  %163 = load i32, i32* @JP_NOBOOL, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %161, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %158
  %168 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %169 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %174 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %173, i32 0, i32 4
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %231, label %178

178:                                              ; preds = %172, %167, %158
  %179 = load %struct.jailparam*, %struct.jailparam** %8, align 8
  %180 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %183 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %181, %184
  br i1 %185, label %186, label %218

186:                                              ; preds = %178
  %187 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %188 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @CTLTYPE, align 4
  %191 = and i32 %189, %190
  %192 = load i32, i32* @CTLTYPE_STRING, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %206

194:                                              ; preds = %186
  %195 = load %struct.jailparam*, %struct.jailparam** %8, align 8
  %196 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %199 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %198, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %202 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @strncmp(i32* %197, i32* %200, i64 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %218, label %231

206:                                              ; preds = %186
  %207 = load %struct.jailparam*, %struct.jailparam** %8, align 8
  %208 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %207, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %211 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %214 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @memcmp(i32* %209, i32* %212, i64 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %206, %194, %178
  %219 = load i32, i32* %5, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %218
  %222 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %223 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %224 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @jail_warnx(%struct.cfjail* %222, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32* %225)
  %227 = load %struct.cfjail*, %struct.cfjail** %4, align 8
  %228 = call i32 @failed(%struct.cfjail* %227)
  store i32 -1, i32* %10, align 4
  br label %230

229:                                              ; preds = %218
  store i32 1, i32* %10, align 4
  br label %230

230:                                              ; preds = %229, %221
  br label %238

231:                                              ; preds = %206, %194, %172
  %232 = load %struct.jailparam*, %struct.jailparam** %8, align 8
  %233 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %232, i32 1
  store %struct.jailparam* %233, %struct.jailparam** %8, align 8
  br label %234

234:                                              ; preds = %231, %152, %148
  br label %235

235:                                              ; preds = %234
  %236 = load %struct.jailparam*, %struct.jailparam** %6, align 8
  %237 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %236, i32 1
  store %struct.jailparam* %237, %struct.jailparam** %6, align 8
  br label %141

238:                                              ; preds = %230, %141
  br label %239

239:                                              ; preds = %238, %131
  %240 = load %struct.jailparam*, %struct.jailparam** %7, align 8
  %241 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %240, i64 1
  store %struct.jailparam* %241, %struct.jailparam** %8, align 8
  br label %242

242:                                              ; preds = %252, %239
  %243 = load %struct.jailparam*, %struct.jailparam** %8, align 8
  %244 = load %struct.jailparam*, %struct.jailparam** %7, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %244, i64 %246
  %248 = icmp ult %struct.jailparam* %243, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %242
  %250 = load %struct.jailparam*, %struct.jailparam** %8, align 8
  %251 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %250, i32 0, i32 3
  store i32* null, i32** %251, align 8
  br label %252

252:                                              ; preds = %249
  %253 = load %struct.jailparam*, %struct.jailparam** %8, align 8
  %254 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %253, i32 1
  store %struct.jailparam* %254, %struct.jailparam** %8, align 8
  br label %242

255:                                              ; preds = %242
  %256 = load %struct.jailparam*, %struct.jailparam** %7, align 8
  %257 = load i32, i32* %9, align 4
  %258 = call i32 @jailparam_free(%struct.jailparam* %256, i32 %257)
  %259 = load i32, i32* %10, align 4
  store i32 %259, i32* %3, align 4
  br label %260

260:                                              ; preds = %255, %58, %17
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i64 @JP_RDTUN(%struct.jailparam*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local %struct.jailparam* @alloca(i32) #1

declare dso_local i64 @jailparam_init(%struct.jailparam*, i8*) #1

declare dso_local i64 @jailparam_import_raw(%struct.jailparam*, i32*, i32) #1

declare dso_local i32 @jail_warnx(%struct.cfjail*, i8*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @jailparam_get(%struct.jailparam*, i32, i32) #1

declare dso_local i64 @bool_param(i32) #1

declare dso_local i32 @strncmp(i32*, i32*, i64) #1

declare dso_local i32 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @failed(%struct.cfjail*) #1

declare dso_local i32 @jailparam_free(%struct.jailparam*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
