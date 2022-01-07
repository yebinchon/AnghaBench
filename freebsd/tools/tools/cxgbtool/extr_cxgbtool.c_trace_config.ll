; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_trace_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_trace_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_trace = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"bad trace filter \22%s\22; must be one of \22rx\22, \22tx\22 or \22all\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"bad argument \22%s\22; must be \22on\22 or \22off\22\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"sip\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"dip\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"sport\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"dport\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"vlan\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.15 = private unnamed_addr constant [111 x i8] c"unknown trace parameter \22%s\22\0Aknown parameters are \22interface\22, \22sip\22, \22dip\22, \22sport\22, \22dport\22, \22vlan\22, \22proto\22\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"bad parameter \22%s\22\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"unknown parameter \22%s\22\00", align 1
@CHELSIO_SET_TRACE_FILTER = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i8*)* @trace_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_config(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ch_trace, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %264

18:                                               ; preds = %4
  %19 = call i32 @memset(%struct.ch_trace* %12, i32 0, i32 136)
  %20 = load i8**, i8*** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %59

29:                                               ; preds = %18
  %30 = load i8**, i8*** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %58

39:                                               ; preds = %29
  %40 = load i8**, i8*** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %57

50:                                               ; preds = %39
  %51 = load i8**, i8*** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @errx(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %50, %47
  br label %58

58:                                               ; preds = %57, %37
  br label %59

59:                                               ; preds = %58, %27
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 -1, i32* %5, align 4
  br label %264

65:                                               ; preds = %59
  %66 = load i8**, i8*** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 2
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  br label %96

80:                                               ; preds = %65
  %81 = load i8**, i8*** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %80
  %89 = load i8**, i8*** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %88, %80
  br label %96

96:                                               ; preds = %95, %73
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %96
  %103 = load i8**, i8*** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 4
  store i32 1, i32* %111, align 8
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %110, %102, %96
  br label %115

115:                                              ; preds = %242, %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 2
  %118 = load i32, i32* %6, align 4
  %119 = icmp sle i32 %117, %118
  br i1 %119, label %120, label %245

120:                                              ; preds = %115
  %121 = load i8**, i8*** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %121, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @parse_trace_param(i8* %126, i8** %10, i8** %11)
  store i32 %127, i32* %13, align 4
  %128 = load i8**, i8*** %7, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %120
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 18
  store i8* %136, i8** %137, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 17
  store i8* %138, i8** %139, align 8
  br label %231

140:                                              ; preds = %120
  %141 = load i8**, i8*** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @strcmp(i8* %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %140
  %149 = load i8*, i8** %10, align 8
  %150 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 16
  store i8* %149, i8** %150, align 8
  %151 = load i8*, i8** %11, align 8
  %152 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 15
  store i8* %151, i8** %152, align 8
  br label %230

153:                                              ; preds = %140
  %154 = load i8**, i8*** %7, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i64 @strcmp(i8* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %153
  %162 = load i8*, i8** %10, align 8
  %163 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 14
  store i8* %162, i8** %163, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 13
  store i8* %164, i8** %165, align 8
  br label %229

166:                                              ; preds = %153
  %167 = load i8**, i8*** %7, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @strcmp(i8* %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %166
  %175 = load i8*, i8** %10, align 8
  %176 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 12
  store i8* %175, i8** %176, align 8
  %177 = load i8*, i8** %11, align 8
  %178 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 11
  store i8* %177, i8** %178, align 8
  br label %228

179:                                              ; preds = %166
  %180 = load i8**, i8*** %7, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i64 @strcmp(i8* %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %179
  %188 = load i8*, i8** %10, align 8
  %189 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 10
  store i8* %188, i8** %189, align 8
  %190 = load i8*, i8** %11, align 8
  %191 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 9
  store i8* %190, i8** %191, align 8
  br label %227

192:                                              ; preds = %179
  %193 = load i8**, i8*** %7, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @strcmp(i8* %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %192
  %201 = load i8*, i8** %10, align 8
  %202 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 8
  store i8* %201, i8** %202, align 8
  %203 = load i8*, i8** %11, align 8
  %204 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 7
  store i8* %203, i8** %204, align 8
  br label %226

205:                                              ; preds = %192
  %206 = load i8**, i8*** %7, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = call i64 @strcmp(i8* %210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %205
  %214 = load i8*, i8** %10, align 8
  %215 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 6
  store i8* %214, i8** %215, align 8
  %216 = load i8*, i8** %11, align 8
  %217 = getelementptr inbounds %struct.ch_trace, %struct.ch_trace* %12, i32 0, i32 5
  store i8* %216, i8** %217, align 8
  br label %225

218:                                              ; preds = %205
  %219 = load i8**, i8*** %7, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %219, i64 %221
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @errx(i32 1, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.15, i64 0, i64 0), i8* %223)
  br label %225

225:                                              ; preds = %218, %213
  br label %226

226:                                              ; preds = %225, %200
  br label %227

227:                                              ; preds = %226, %187
  br label %228

228:                                              ; preds = %227, %174
  br label %229

229:                                              ; preds = %228, %161
  br label %230

230:                                              ; preds = %229, %148
  br label %231

231:                                              ; preds = %230, %135
  %232 = load i32, i32* %13, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %231
  %235 = load i8**, i8*** %7, align 8
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %235, i64 %238
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* %240)
  br label %242

242:                                              ; preds = %234, %231
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %243, 2
  store i32 %244, i32* %8, align 4
  br label %115

245:                                              ; preds = %115
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* %6, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %256

249:                                              ; preds = %245
  %250 = load i8**, i8*** %7, align 8
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %250, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* %254)
  br label %256

256:                                              ; preds = %249, %245
  %257 = load i8*, i8** %9, align 8
  %258 = load i32, i32* @CHELSIO_SET_TRACE_FILTER, align 4
  %259 = call i64 @doit(i8* %257, i32 %258, %struct.ch_trace* %12)
  %260 = icmp slt i64 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %263

263:                                              ; preds = %261, %256
  store i32 0, i32* %5, align 4
  br label %264

264:                                              ; preds = %263, %64, %17
  %265 = load i32, i32* %5, align 4
  ret i32 %265
}

declare dso_local i32 @memset(%struct.ch_trace*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @parse_trace_param(i8*, i8**, i8**) #1

declare dso_local i64 @doit(i8*, i32, %struct.ch_trace*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
