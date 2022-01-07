; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_ctlinfo.c_ctl_renametf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_ctlinfo.c_ctl_renametf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cjobinfo = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@NAME_MAX = common dso_local global i32 0, align 4
@CTI_LINEMAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ctl_renametf invalid filename: %s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ctl_renametf error cti_readcf(%s)\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"ctl_renametf error open(%s): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"ctl_renametf error fopen(%s): %s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".na.\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"H%s\0A\00", align 1
@from_host = common dso_local global i8* null, align 8
@OTHER_USERID_CHARS = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"P%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"C%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"J%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"L%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"M%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"f%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"U%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"N%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"ctl_renametf error fclose(%s): %s\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"ctl_renametf error link(%s,%s): %s\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"ctl_renametf internal (missed) error\00", align 1
@TRIGGERTEST_FNAME = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ctl_renametf(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cjobinfo*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load i32, i32* @NAME_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %16, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %17, align 8
  %26 = load i32, i32* @NAME_MAX, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %18, align 8
  %30 = load i32, i32* @CTI_LINEMAX, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %19, align 8
  store %struct.cjobinfo* null, %struct.cjobinfo** %12, align 8
  store i32* null, i32** %11, align 8
  store i8 0, i8* %32, align 16
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 116
  br i1 %41, label %52, label %42

42:                                               ; preds = %2
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 102
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @isalpha(i32 %49) #4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48, %42, %2
  %53 = trunc i64 %31 to i32
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %32, i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %54)
  br label %417

56:                                               ; preds = %48
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call %struct.cjobinfo* @ctl_readcf(i8* %57, i8* %58)
  store %struct.cjobinfo* %59, %struct.cjobinfo** %12, align 8
  %60 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %61 = icmp eq %struct.cjobinfo* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = trunc i64 %31 to i32
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %32, i32 %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %417

66:                                               ; preds = %56
  %67 = load i8*, i8** %5, align 8
  %68 = trunc i64 %23 to i32
  %69 = call i32 @strlcpy(i8* %25, i8* %67, i32 %68)
  %70 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 114, i8* %70, align 16
  %71 = load i32, i32* @O_WRONLY, align 4
  %72 = load i32, i32* @O_CREAT, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @O_TRUNC, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @open(i8* %25, i32 %75, i32 432)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %84

79:                                               ; preds = %66
  %80 = trunc i64 %31 to i32
  %81 = load i32, i32* @errno, align 4
  %82 = call i8* @strerror(i32 %81)
  %83 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %32, i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %25, i8* %82)
  br label %417

84:                                               ; preds = %66
  %85 = load i32, i32* %8, align 4
  %86 = call i32* @fdopen(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %86, i32** %11, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @close(i32 %90)
  %92 = trunc i64 %31 to i32
  %93 = load i32, i32* @errno, align 4
  %94 = call i8* @strerror(i32 %93)
  %95 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %32, i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %25, i8* %94)
  br label %417

96:                                               ; preds = %84
  store i32 0, i32* %9, align 4
  %97 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %98 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 1, i32* %9, align 4
  br label %138

102:                                              ; preds = %96
  %103 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %104 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 1, i32* %9, align 4
  br label %137

109:                                              ; preds = %102
  %110 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %111 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 1, i32* %9, align 4
  br label %136

116:                                              ; preds = %109
  %117 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %118 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %15, align 8
  br label %120

120:                                              ; preds = %132, %116
  %121 = load i8*, i8** %15, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load i8*, i8** %15, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp sle i32 %128, 32
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 1, i32* %9, align 4
  br label %135

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131
  %133 = load i8*, i8** %15, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %15, align 8
  br label %120

135:                                              ; preds = %130, %120
  br label %136

136:                                              ; preds = %135, %115
  br label %137

137:                                              ; preds = %136, %108
  br label %138

138:                                              ; preds = %137, %101
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32*, i32** %11, align 8
  %143 = load i8*, i8** @from_host, align 8
  %144 = call i32 @fprintf(i32* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %143)
  br label %151

145:                                              ; preds = %138
  %146 = load i32*, i32** %11, align 8
  %147 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %148 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @fprintf(i32* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %145, %141
  store i32 0, i32* %9, align 4
  %152 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %153 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i32 1, i32* %9, align 4
  br label %245

157:                                              ; preds = %151
  %158 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %159 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @strcmp(i8* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %244

164:                                              ; preds = %157
  store i32 0, i32* %7, align 4
  %165 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %166 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %15, align 8
  %168 = load i8*, i8** %15, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 45
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  %173 = load i8*, i8** %15, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %15, align 8
  store i8 95, i8* %173, align 1
  br label %175

175:                                              ; preds = %172, %164
  br label %176

176:                                              ; preds = %207, %175
  %177 = load i8*, i8** %15, align 8
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %210

181:                                              ; preds = %176
  %182 = load i8*, i8** %15, align 8
  %183 = load i8, i8* %182, align 1
  %184 = call i64 @islowerch(i8 signext %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %181
  %187 = load i8*, i8** %15, align 8
  %188 = load i8, i8* %187, align 1
  %189 = call i64 @isdigitch(i8 signext %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186, %181
  br label %207

192:                                              ; preds = %186
  %193 = load i8*, i8** @OTHER_USERID_CHARS, align 8
  %194 = load i8*, i8** %15, align 8
  %195 = load i8, i8* %194, align 1
  %196 = call i8* @strchr(i8* %193, i8 signext %195)
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  br label %207

199:                                              ; preds = %192
  %200 = load i8*, i8** %15, align 8
  %201 = load i8, i8* %200, align 1
  %202 = call i64 @isupperch(i8 signext %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  store i32 1, i32* %7, align 4
  br label %207

205:                                              ; preds = %199
  %206 = load i8*, i8** %15, align 8
  store i8 95, i8* %206, align 1
  br label %207

207:                                              ; preds = %205, %204, %198, %191
  %208 = load i8*, i8** %15, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %15, align 8
  br label %176

210:                                              ; preds = %176
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %243

213:                                              ; preds = %210
  %214 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %215 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = call i32* @getpwnam(i8* %216)
  %218 = icmp eq i32* %217, null
  br i1 %218, label %219, label %243

219:                                              ; preds = %213
  %220 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %221 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  store i8* %222, i8** %15, align 8
  br label %223

223:                                              ; preds = %239, %219
  %224 = load i8*, i8** %15, align 8
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %223
  %229 = load i8*, i8** %15, align 8
  %230 = load i8, i8* %229, align 1
  %231 = call i64 @isupperch(i8 signext %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load i8*, i8** %15, align 8
  %235 = load i8, i8* %234, align 1
  %236 = call signext i8 @tolowerch(i8 signext %235)
  %237 = load i8*, i8** %15, align 8
  store i8 %236, i8* %237, align 1
  br label %238

238:                                              ; preds = %233, %228
  br label %239

239:                                              ; preds = %238
  %240 = load i8*, i8** %15, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %15, align 8
  br label %223

242:                                              ; preds = %223
  br label %243

243:                                              ; preds = %242, %213, %210
  br label %244

244:                                              ; preds = %243, %163
  br label %245

245:                                              ; preds = %244, %156
  %246 = load i32, i32* %9, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load i32*, i32** %11, align 8
  %250 = call i32 @fprintf(i32* %249, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %257

251:                                              ; preds = %245
  %252 = load i32*, i32** %11, align 8
  %253 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %254 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @fprintf(i32* %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %255)
  br label %257

257:                                              ; preds = %251, %248
  %258 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %259 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %258, i32 0, i32 2
  %260 = load i8*, i8** %259, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %262, label %268

262:                                              ; preds = %257
  %263 = load i32*, i32** %11, align 8
  %264 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %265 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %264, i32 0, i32 2
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 @fprintf(i32* %263, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %266)
  br label %268

268:                                              ; preds = %262, %257
  %269 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %270 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %269, i32 0, i32 3
  %271 = load i8*, i8** %270, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %279

273:                                              ; preds = %268
  %274 = load i32*, i32** %11, align 8
  %275 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %276 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %275, i32 0, i32 3
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @fprintf(i32* %274, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %277)
  br label %279

279:                                              ; preds = %273, %268
  %280 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %281 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %280, i32 0, i32 4
  %282 = load i8*, i8** %281, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %284, label %290

284:                                              ; preds = %279
  %285 = load i32*, i32** %11, align 8
  %286 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %287 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %286, i32 0, i32 4
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @fprintf(i32* %285, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %288)
  br label %290

290:                                              ; preds = %284, %279
  store i32 0, i32* %9, align 4
  %291 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %292 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %291, i32 0, i32 5
  %293 = load i8*, i8** %292, align 8
  %294 = icmp eq i8* %293, null
  br i1 %294, label %295, label %296

295:                                              ; preds = %290
  store i32 1, i32* %9, align 4
  br label %316

296:                                              ; preds = %290
  %297 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %298 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %297, i32 0, i32 5
  %299 = load i8*, i8** %298, align 8
  store i8* %299, i8** %15, align 8
  br label %300

300:                                              ; preds = %312, %296
  %301 = load i8*, i8** %15, align 8
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %315

305:                                              ; preds = %300
  %306 = load i8*, i8** %15, align 8
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp sle i32 %308, 32
  br i1 %309, label %310, label %311

310:                                              ; preds = %305
  store i32 1, i32* %9, align 4
  br label %315

311:                                              ; preds = %305
  br label %312

312:                                              ; preds = %311
  %313 = load i8*, i8** %15, align 8
  %314 = getelementptr inbounds i8, i8* %313, i32 1
  store i8* %314, i8** %15, align 8
  br label %300

315:                                              ; preds = %310, %300
  br label %316

316:                                              ; preds = %315, %295
  %317 = load i32, i32* %9, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %325, label %319

319:                                              ; preds = %316
  %320 = load i32*, i32** %11, align 8
  %321 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %322 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %321, i32 0, i32 5
  %323 = load i8*, i8** %322, align 8
  %324 = call i32 @fprintf(i32* %320, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %323)
  br label %325

325:                                              ; preds = %319, %316
  %326 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %327 = call i32 @ctl_rewindcf(%struct.cjobinfo* %326)
  %328 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %329 = call i8* @ctl_getline(%struct.cjobinfo* %328)
  store i8* %329, i8** %13, align 8
  br label %330

330:                                              ; preds = %385, %325
  %331 = load i8*, i8** %13, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %333, label %388

333:                                              ; preds = %330
  %334 = load i8*, i8** %13, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 0
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  switch i32 %337, label %381 [
    i32 72, label %338
    i32 80, label %338
    i32 67, label %338
    i32 74, label %338
    i32 76, label %338
    i32 77, label %338
    i32 78, label %339
    i32 85, label %349
  ]

338:                                              ; preds = %333, %333, %333, %333, %333, %333
  br label %385

339:                                              ; preds = %333
  %340 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %341 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %340, i32 0, i32 6
  %342 = load i32, i32* %341, align 8
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %339
  br label %385

345:                                              ; preds = %339
  %346 = load i32*, i32** %11, align 8
  %347 = load i8*, i8** %13, align 8
  %348 = call i32 @fprintf(i32* %346, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %347)
  br label %385

349:                                              ; preds = %333
  %350 = load i8*, i8** %13, align 8
  %351 = call i8* @strchr(i8* %350, i8 signext 47)
  store i8* %351, i8** %14, align 8
  %352 = load i8*, i8** %14, align 8
  %353 = icmp ne i8* %352, null
  br i1 %353, label %354, label %355

354:                                              ; preds = %349
  br label %385

355:                                              ; preds = %349
  %356 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %357 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %356, i32 0, i32 6
  %358 = load i32, i32* %357, align 8
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %377

360:                                              ; preds = %355
  %361 = load i8*, i8** %13, align 8
  %362 = getelementptr inbounds i8, i8* %361, i32 1
  store i8* %362, i8** %13, align 8
  %363 = load i8*, i8** %13, align 8
  %364 = call i32 @strncmp(i8* %363, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i64 2)
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %376

366:                                              ; preds = %360
  %367 = load i32*, i32** %11, align 8
  %368 = load i8*, i8** %13, align 8
  %369 = call i32 @fprintf(i32* %367, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %368)
  %370 = load i32*, i32** %11, align 8
  %371 = load i8*, i8** %13, align 8
  %372 = call i32 @fprintf(i32* %370, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %371)
  %373 = load i32*, i32** %11, align 8
  %374 = load i8*, i8** %13, align 8
  %375 = call i32 @fprintf(i32* %373, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* %374)
  br label %376

376:                                              ; preds = %366, %360
  br label %385

377:                                              ; preds = %355
  %378 = load i32*, i32** %11, align 8
  %379 = load i8*, i8** %13, align 8
  %380 = call i32 @fprintf(i32* %378, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %379)
  br label %385

381:                                              ; preds = %333
  %382 = load i32*, i32** %11, align 8
  %383 = load i8*, i8** %13, align 8
  %384 = call i32 @fprintf(i32* %382, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %383)
  br label %385

385:                                              ; preds = %381, %377, %376, %354, %345, %344, %338
  %386 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %387 = call i8* @ctl_getline(%struct.cjobinfo* %386)
  store i8* %387, i8** %13, align 8
  br label %330

388:                                              ; preds = %330
  %389 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %390 = call i32 @ctl_freeinf(%struct.cjobinfo* %389)
  store %struct.cjobinfo* null, %struct.cjobinfo** %12, align 8
  %391 = load i32*, i32** %11, align 8
  %392 = call i32 @fclose(i32* %391)
  store i32 %392, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %393 = load i32, i32* %10, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %388
  %396 = trunc i64 %31 to i32
  %397 = load i32, i32* @errno, align 4
  %398 = call i8* @strerror(i32 %397)
  %399 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %32, i32 %396, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i8* %25, i8* %398)
  br label %417

400:                                              ; preds = %388
  %401 = load i8*, i8** %5, align 8
  %402 = trunc i64 %28 to i32
  %403 = call i32 @strlcpy(i8* %29, i8* %401, i32 %402)
  %404 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 99, i8* %404, align 16
  %405 = call i32 @link(i8* %25, i8* %29)
  store i32 %405, i32* %10, align 4
  %406 = load i32, i32* %10, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %400
  %409 = trunc i64 %31 to i32
  %410 = load i32, i32* @errno, align 4
  %411 = call i8* @strerror(i32 %410)
  %412 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %32, i32 %409, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i8* %25, i8* %29, i8* %411)
  br label %417

413:                                              ; preds = %400
  %414 = load i8*, i8** %5, align 8
  %415 = call i32 @unlink(i8* %414)
  %416 = call i32 @unlink(i8* %25)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %437

417:                                              ; preds = %408, %395, %89, %79, %62, %52
  %418 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %419 = icmp ne %struct.cjobinfo* %418, null
  br i1 %419, label %420, label %423

420:                                              ; preds = %417
  %421 = load %struct.cjobinfo*, %struct.cjobinfo** %12, align 8
  %422 = call i32 @ctl_freeinf(%struct.cjobinfo* %421)
  br label %423

423:                                              ; preds = %420, %417
  %424 = load i32*, i32** %11, align 8
  %425 = icmp ne i32* %424, null
  br i1 %425, label %426, label %429

426:                                              ; preds = %423
  %427 = load i32*, i32** %11, align 8
  %428 = call i32 @fclose(i32* %427)
  br label %429

429:                                              ; preds = %426, %423
  %430 = load i8, i8* %32, align 16
  %431 = sext i8 %430 to i32
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %435

433:                                              ; preds = %429
  %434 = call i8* @strdup(i8* %32)
  store i8* %434, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %437

435:                                              ; preds = %429
  %436 = call i8* @strdup(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  store i8* %436, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %437

437:                                              ; preds = %435, %433, %413
  %438 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %438)
  %439 = load i8*, i8** %3, align 8
  ret i8* %439
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalpha(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #3

declare dso_local %struct.cjobinfo* @ctl_readcf(i8*, i8*) #3

declare dso_local i32 @strlcpy(i8*, i8*, i32) #3

declare dso_local i32 @open(i8*, i32, i32) #3

declare dso_local i8* @strerror(i32) #3

declare dso_local i32* @fdopen(i32, i8*) #3

declare dso_local i32 @close(i32) #3

declare dso_local i64 @strcmp(i8*, i8*) #3

declare dso_local i32 @fprintf(i32*, i8*, i8*) #3

declare dso_local i64 @islowerch(i8 signext) #3

declare dso_local i64 @isdigitch(i8 signext) #3

declare dso_local i8* @strchr(i8*, i8 signext) #3

declare dso_local i64 @isupperch(i8 signext) #3

declare dso_local i32* @getpwnam(i8*) #3

declare dso_local signext i8 @tolowerch(i8 signext) #3

declare dso_local i32 @ctl_rewindcf(%struct.cjobinfo*) #3

declare dso_local i8* @ctl_getline(%struct.cjobinfo*) #3

declare dso_local i32 @strncmp(i8*, i8*, i64) #3

declare dso_local i32 @ctl_freeinf(%struct.cjobinfo*) #3

declare dso_local i32 @fclose(i32*) #3

declare dso_local i32 @link(i8*, i8*) #3

declare dso_local i32 @unlink(i8*) #3

declare dso_local i8* @strdup(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
