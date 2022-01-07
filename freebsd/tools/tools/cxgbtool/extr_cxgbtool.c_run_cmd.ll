; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_run_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_run_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mtus\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"regdump\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"tcamdump\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"memdump\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"meminfo\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"loadfw\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"loadboot\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"qset\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"qsets\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"pktsched\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"tcb\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"clearstats\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"la\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"ioqs\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @run_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_cmd(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 2
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @register_io(i32 %14, i8** %15, i32 3, i8* %16)
  store i32 %17, i32* %7, align 4
  br label %270

18:                                               ; preds = %3
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @mdio_io(i32 %25, i8** %26, i32 3, i8* %27)
  store i32 %28, i32* %7, align 4
  br label %269

29:                                               ; preds = %18
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @mtu_tab_op(i32 %36, i8** %37, i32 3, i8* %38)
  store i32 %39, i32* %7, align 4
  br label %268

40:                                               ; preds = %29
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @conf_pm(i32 %47, i8** %48, i32 3, i8* %49)
  store i32 %50, i32* %7, align 4
  br label %267

51:                                               ; preds = %40
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = load i8**, i8*** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @dump_regs(i32 %58, i8** %59, i32 3, i8* %60)
  store i32 %61, i32* %7, align 4
  br label %266

62:                                               ; preds = %51
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %4, align 4
  %70 = load i8**, i8*** %5, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @dump_tcam(i32 %69, i8** %70, i32 3, i8* %71)
  store i32 %72, i32* %7, align 4
  br label %265

73:                                               ; preds = %62
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %4, align 4
  %81 = load i8**, i8*** %5, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @dump_mc7(i32 %80, i8** %81, i32 3, i8* %82)
  store i32 %83, i32* %7, align 4
  br label %264

84:                                               ; preds = %73
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %4, align 4
  %92 = load i8**, i8*** %5, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @meminfo(i32 %91, i8** %92, i32 3, i8* %93)
  store i32 %94, i32* %7, align 4
  br label %263

95:                                               ; preds = %84
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %4, align 4
  %103 = load i8**, i8*** %5, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @get_sge_context(i32 %102, i8** %103, i32 3, i8* %104)
  store i32 %105, i32* %7, align 4
  br label %262

106:                                              ; preds = %95
  %107 = load i8**, i8*** %5, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 2
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %4, align 4
  %114 = load i8**, i8*** %5, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @get_sge_desc(i32 %113, i8** %114, i32 3, i8* %115)
  store i32 %116, i32* %7, align 4
  br label %261

117:                                              ; preds = %106
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 2
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @strcmp(i8* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %117
  %124 = load i32, i32* %4, align 4
  %125 = load i8**, i8*** %5, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @load_fw(i32 %124, i8** %125, i32 3, i8* %126)
  store i32 %127, i32* %7, align 4
  br label %260

128:                                              ; preds = %117
  %129 = load i8**, i8*** %5, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 2
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %4, align 4
  %136 = load i8**, i8*** %5, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @load_boot(i32 %135, i8** %136, i32 3, i8* %137)
  store i32 %138, i32* %7, align 4
  br label %259

139:                                              ; preds = %128
  %140 = load i8**, i8*** %5, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 2
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %4, align 4
  %147 = load i8**, i8*** %5, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = call i32 @proto_sram_op(i32 %146, i8** %147, i32 3, i8* %148)
  store i32 %149, i32* %7, align 4
  br label %258

150:                                              ; preds = %139
  %151 = load i8**, i8*** %5, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 2
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strcmp(i8* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %150
  %157 = load i32, i32* %4, align 4
  %158 = load i8**, i8*** %5, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 @qset_config(i32 %157, i8** %158, i32 3, i8* %159)
  store i32 %160, i32* %7, align 4
  br label %257

161:                                              ; preds = %150
  %162 = load i8**, i8*** %5, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 2
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %161
  %168 = load i32, i32* %4, align 4
  %169 = load i8**, i8*** %5, align 8
  %170 = load i8*, i8** %6, align 8
  %171 = call i32 @qset_num_config(i32 %168, i8** %169, i32 3, i8* %170)
  store i32 %171, i32* %7, align 4
  br label %256

172:                                              ; preds = %161
  %173 = load i8**, i8*** %5, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 2
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %172
  %179 = load i32, i32* %4, align 4
  %180 = load i8**, i8*** %5, align 8
  %181 = load i8*, i8** %6, align 8
  %182 = call i32 @trace_config(i32 %179, i8** %180, i32 3, i8* %181)
  store i32 %182, i32* %7, align 4
  br label %255

183:                                              ; preds = %172
  %184 = load i8**, i8*** %5, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 2
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %183
  %190 = load i32, i32* %4, align 4
  %191 = load i8**, i8*** %5, align 8
  %192 = load i8*, i8** %6, align 8
  %193 = call i32 @pktsched(i32 %190, i8** %191, i32 3, i8* %192)
  store i32 %193, i32* %7, align 4
  br label %254

194:                                              ; preds = %183
  %195 = load i8**, i8*** %5, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 2
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @strcmp(i8* %197, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %194
  %201 = load i32, i32* %4, align 4
  %202 = load i8**, i8*** %5, align 8
  %203 = load i8*, i8** %6, align 8
  %204 = call i32 @get_tcb2(i32 %201, i8** %202, i32 3, i8* %203)
  store i32 %204, i32* %7, align 4
  br label %253

205:                                              ; preds = %194
  %206 = load i8**, i8*** %5, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 2
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @strcmp(i8* %208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %205
  %212 = load i32, i32* %4, align 4
  %213 = load i8**, i8*** %5, align 8
  %214 = load i8*, i8** %6, align 8
  %215 = call i32 @filter_config(i32 %212, i8** %213, i32 3, i8* %214)
  store i32 %215, i32* %7, align 4
  br label %252

216:                                              ; preds = %205
  %217 = load i8**, i8*** %5, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 2
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @strcmp(i8* %219, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %216
  %223 = load i32, i32* %4, align 4
  %224 = load i8**, i8*** %5, align 8
  %225 = load i8*, i8** %6, align 8
  %226 = call i32 @clear_stats(i32 %223, i8** %224, i32 3, i8* %225)
  store i32 %226, i32* %7, align 4
  br label %251

227:                                              ; preds = %216
  %228 = load i8**, i8*** %5, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 2
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @strcmp(i8* %230, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %227
  %234 = load i32, i32* %4, align 4
  %235 = load i8**, i8*** %5, align 8
  %236 = load i8*, i8** %6, align 8
  %237 = call i32 @get_up_la(i32 %234, i8** %235, i32 3, i8* %236)
  store i32 %237, i32* %7, align 4
  br label %250

238:                                              ; preds = %227
  %239 = load i8**, i8*** %5, align 8
  %240 = getelementptr inbounds i8*, i8** %239, i64 2
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 @strcmp(i8* %241, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %238
  %245 = load i32, i32* %4, align 4
  %246 = load i8**, i8*** %5, align 8
  %247 = load i8*, i8** %6, align 8
  %248 = call i32 @get_up_ioqs(i32 %245, i8** %246, i32 3, i8* %247)
  store i32 %248, i32* %7, align 4
  br label %249

249:                                              ; preds = %244, %238
  br label %250

250:                                              ; preds = %249, %233
  br label %251

251:                                              ; preds = %250, %222
  br label %252

252:                                              ; preds = %251, %211
  br label %253

253:                                              ; preds = %252, %200
  br label %254

254:                                              ; preds = %253, %189
  br label %255

255:                                              ; preds = %254, %178
  br label %256

256:                                              ; preds = %255, %167
  br label %257

257:                                              ; preds = %256, %156
  br label %258

258:                                              ; preds = %257, %145
  br label %259

259:                                              ; preds = %258, %134
  br label %260

260:                                              ; preds = %259, %123
  br label %261

261:                                              ; preds = %260, %112
  br label %262

262:                                              ; preds = %261, %101
  br label %263

263:                                              ; preds = %262, %90
  br label %264

264:                                              ; preds = %263, %79
  br label %265

265:                                              ; preds = %264, %68
  br label %266

266:                                              ; preds = %265, %57
  br label %267

267:                                              ; preds = %266, %46
  br label %268

268:                                              ; preds = %267, %35
  br label %269

269:                                              ; preds = %268, %24
  br label %270

270:                                              ; preds = %269, %13
  %271 = load i32, i32* %7, align 4
  %272 = icmp eq i32 %271, -1
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load i32, i32* @stderr, align 4
  %275 = call i32 @usage(i32 %274)
  br label %276

276:                                              ; preds = %273, %270
  ret i32 0
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @register_io(i32, i8**, i32, i8*) #1

declare dso_local i32 @mdio_io(i32, i8**, i32, i8*) #1

declare dso_local i32 @mtu_tab_op(i32, i8**, i32, i8*) #1

declare dso_local i32 @conf_pm(i32, i8**, i32, i8*) #1

declare dso_local i32 @dump_regs(i32, i8**, i32, i8*) #1

declare dso_local i32 @dump_tcam(i32, i8**, i32, i8*) #1

declare dso_local i32 @dump_mc7(i32, i8**, i32, i8*) #1

declare dso_local i32 @meminfo(i32, i8**, i32, i8*) #1

declare dso_local i32 @get_sge_context(i32, i8**, i32, i8*) #1

declare dso_local i32 @get_sge_desc(i32, i8**, i32, i8*) #1

declare dso_local i32 @load_fw(i32, i8**, i32, i8*) #1

declare dso_local i32 @load_boot(i32, i8**, i32, i8*) #1

declare dso_local i32 @proto_sram_op(i32, i8**, i32, i8*) #1

declare dso_local i32 @qset_config(i32, i8**, i32, i8*) #1

declare dso_local i32 @qset_num_config(i32, i8**, i32, i8*) #1

declare dso_local i32 @trace_config(i32, i8**, i32, i8*) #1

declare dso_local i32 @pktsched(i32, i8**, i32, i8*) #1

declare dso_local i32 @get_tcb2(i32, i8**, i32, i8*) #1

declare dso_local i32 @filter_config(i32, i8**, i32, i8*) #1

declare dso_local i32 @clear_stats(i32, i8**, i32, i8*) #1

declare dso_local i32 @get_up_la(i32, i8**, i32, i8*) #1

declare dso_local i32 @get_up_ioqs(i32, i8**, i32, i8*) #1

declare dso_local i32 @usage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
