; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_makelink.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_makelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@dolink = common dso_local global i32 0, align 4
@LN_HARD = common dso_local global i32 0, align 4
@LN_MIXED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EXDEV = common dso_local global i64 0, align 8
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"link %s -> %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s: stat\00", align 1
@mode = common dso_local global i32 0, align 4
@haveopt_m = common dso_local global i32 0, align 4
@owner = common dso_local global i8* null, align 8
@haveopt_o = common dso_local global i32 0, align 4
@group = common dso_local global i8* null, align 8
@haveopt_g = common dso_local global i32 0, align 4
@fflags = common dso_local global i8* null, align 8
@haveopt_f = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@LN_ABSOLUTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"%s: realpath\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@LN_RELATIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"%s: strdup\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"resolved pathname too long\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.stat*)* @makelink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makelink(i8* %0, i8* %1, %struct.stat* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.stat* %2, %struct.stat** %6, align 8
  %24 = load i32, i32* @MAXPATHLEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %9, align 8
  %31 = load i32, i32* @MAXPATHLEN, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %10, align 8
  %34 = load i32, i32* @dolink, align 4
  %35 = load i32, i32* @LN_HARD, align 4
  %36 = load i32, i32* @LN_MIXED, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %113

40:                                               ; preds = %3
  %41 = load i8*, i8** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.stat*, %struct.stat** %6, align 8
  %44 = call i32 @do_link(i8* %41, i8* %42, %struct.stat* %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load i32, i32* @dolink, align 4
  %48 = load i32, i32* @LN_HARD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @EXDEV, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51, %46
  %56 = load i32, i32* @EX_OSERR, align 4
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 (i32, i8*, i8*, ...) @err(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %57, i8* %58)
  br label %60

60:                                               ; preds = %55, %51
  br label %112

61:                                               ; preds = %40
  %62 = load i8*, i8** %5, align 8
  %63 = call i64 @stat(i8* %62, %struct.stat* %11)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @EX_OSERR, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 (i32, i8*, i8*, ...) @err(i32 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @S_ISREG(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %111

74:                                               ; preds = %69
  %75 = load i32, i32* @mode, align 4
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* @haveopt_m, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 511
  store i32 %81, i32* @mode, align 4
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i8*, i8** @owner, align 8
  store i8* %83, i8** %13, align 8
  %84 = load i32, i32* @haveopt_o, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  store i8* null, i8** @owner, align 8
  br label %87

87:                                               ; preds = %86, %82
  %88 = load i8*, i8** @group, align 8
  store i8* %88, i8** %14, align 8
  %89 = load i32, i32* @haveopt_g, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  store i8* null, i8** @group, align 8
  br label %92

92:                                               ; preds = %91, %87
  %93 = load i8*, i8** @fflags, align 8
  store i8* %93, i8** %15, align 8
  %94 = load i32, i32* @haveopt_f, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  store i8* null, i8** @fflags, align 8
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i8*, i8** %4, align 8
  %99 = call i8* @digest_file(i8* %98)
  store i8* %99, i8** %16, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @metadata_log(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* null, i8* null, i8* %101, i32 %103)
  %105 = load i8*, i8** %16, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* @mode, align 4
  %108 = load i8*, i8** %13, align 8
  store i8* %108, i8** @owner, align 8
  %109 = load i8*, i8** %14, align 8
  store i8* %109, i8** @group, align 8
  %110 = load i8*, i8** %15, align 8
  store i8* %110, i8** @fflags, align 8
  br label %111

111:                                              ; preds = %97, %69
  store i32 1, i32* %17, align 4
  br label %290

112:                                              ; preds = %60
  br label %113

113:                                              ; preds = %112, %3
  %114 = load i32, i32* @dolink, align 4
  %115 = load i32, i32* @LN_ABSOLUTE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = load i8*, i8** %4, align 8
  %120 = call i32* @realpath(i8* %119, i8* %27)
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* @EX_OSERR, align 4
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 (i32, i8*, i8*, ...) @err(i32 %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %122, %118
  %127 = load i8*, i8** %5, align 8
  %128 = load %struct.stat*, %struct.stat** %6, align 8
  %129 = call i32 @do_symlink(i8* %27, i8* %127, %struct.stat* %128)
  %130 = load i8*, i8** %5, align 8
  %131 = call i32 @metadata_log(i8* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null, i8* %27, i8* null, i32 0)
  store i32 1, i32* %17, align 4
  br label %290

132:                                              ; preds = %113
  %133 = load i32, i32* @dolink, align 4
  %134 = load i32, i32* @LN_RELATIVE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %282

137:                                              ; preds = %132
  %138 = load i8*, i8** %4, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 47
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load i8*, i8** %4, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = load %struct.stat*, %struct.stat** %6, align 8
  %146 = call i32 @do_symlink(i8* %143, i8* %144, %struct.stat* %145)
  %147 = load i8*, i8** %5, align 8
  %148 = load i8*, i8** %4, align 8
  %149 = call i32 @metadata_log(i8* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null, i8* %148, i8* null, i32 0)
  store i32 1, i32* %17, align 4
  br label %290

150:                                              ; preds = %137
  %151 = load i8*, i8** %4, align 8
  %152 = call i32* @realpath(i8* %151, i8* %27)
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i32, i32* @EX_OSERR, align 4
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 (i32, i8*, i8*, ...) @err(i32 %155, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %154, %150
  %159 = load i8*, i8** %5, align 8
  %160 = call i8* @strdup(i8* %159)
  store i8* %160, i8** %18, align 8
  %161 = load i8*, i8** %18, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load i32, i32* @EX_OSERR, align 4
  %165 = load i8*, i8** %5, align 8
  %166 = call i32 (i32, i8*, i8*, ...) @err(i32 %164, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %163, %158
  %168 = load i8*, i8** %18, align 8
  %169 = call i8* @dirname(i8* %168)
  store i8* %169, i8** %19, align 8
  %170 = load i8*, i8** %19, align 8
  %171 = call i32* @realpath(i8* %170, i8* %30)
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load i32, i32* @EX_OSERR, align 4
  %175 = load i8*, i8** %19, align 8
  %176 = call i32 (i32, i8*, i8*, ...) @err(i32 %174, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %173, %167
  %178 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %177
  %181 = trunc i64 %29 to i32
  %182 = call i32 @strlcat(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %181)
  %183 = sext i32 %182 to i64
  %184 = icmp ugt i64 %183, %29
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %180
  br label %188

188:                                              ; preds = %187, %177
  %189 = load i8*, i8** %18, align 8
  %190 = load i8*, i8** %5, align 8
  %191 = call i32 @strcpy(i8* %189, i8* %190)
  %192 = load i8*, i8** %18, align 8
  %193 = call i8* @basename(i8* %192)
  store i8* %193, i8** %19, align 8
  %194 = load i8*, i8** %19, align 8
  %195 = trunc i64 %29 to i32
  %196 = call i32 @strlcat(i8* %30, i8* %194, i32 %195)
  %197 = sext i32 %196 to i64
  %198 = icmp ugt i64 %197, %29
  br i1 %198, label %199, label %201

199:                                              ; preds = %188
  %200 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %188
  %202 = load i8*, i8** %18, align 8
  %203 = call i32 @free(i8* %202)
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* %27, i8** %23, align 8
  store i8* %30, i8** %20, align 8
  br label %204

204:                                              ; preds = %213, %201
  %205 = load i8*, i8** %23, align 8
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = load i8*, i8** %20, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %207, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %204
  br label %213

213:                                              ; preds = %212
  %214 = load i8*, i8** %23, align 8
  store i8* %214, i8** %22, align 8
  %215 = load i8*, i8** %20, align 8
  store i8* %215, i8** %21, align 8
  %216 = load i8*, i8** %23, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %23, align 8
  %218 = load i8*, i8** %20, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %20, align 8
  br label %204

220:                                              ; preds = %204
  %221 = load i8*, i8** %22, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = load i8*, i8** %22, align 8
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp ne i32 %226, 47
  br i1 %227, label %236, label %228

228:                                              ; preds = %223, %220
  %229 = load i8*, i8** %21, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %241

231:                                              ; preds = %228
  %232 = load i8*, i8** %21, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp ne i32 %234, 47
  br i1 %235, label %236, label %241

236:                                              ; preds = %231, %223
  %237 = load i8*, i8** %23, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 -1
  store i8* %238, i8** %23, align 8
  %239 = load i8*, i8** %20, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 -1
  store i8* %240, i8** %20, align 8
  br label %241

241:                                              ; preds = %236, %231, %228
  br label %242

242:                                              ; preds = %247, %241
  %243 = load i8*, i8** %23, align 8
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp ne i32 %245, 47
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = load i8*, i8** %23, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 -1
  store i8* %249, i8** %23, align 8
  %250 = load i8*, i8** %20, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 -1
  store i8* %251, i8** %20, align 8
  br label %242

252:                                              ; preds = %242
  %253 = load i8*, i8** %20, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %20, align 8
  %255 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %255, align 16
  br label %256

256:                                              ; preds = %269, %252
  %257 = load i8*, i8** %20, align 8
  %258 = load i8, i8* %257, align 1
  %259 = icmp ne i8 %258, 0
  br i1 %259, label %260, label %272

260:                                              ; preds = %256
  %261 = load i8*, i8** %20, align 8
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 47
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  %266 = trunc i64 %32 to i32
  %267 = call i32 @strlcat(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %266)
  br label %268

268:                                              ; preds = %265, %260
  br label %269

269:                                              ; preds = %268
  %270 = load i8*, i8** %20, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %20, align 8
  br label %256

272:                                              ; preds = %256
  %273 = load i8*, i8** %23, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %23, align 8
  %275 = trunc i64 %32 to i32
  %276 = call i32 @strlcat(i8* %33, i8* %274, i32 %275)
  %277 = load i8*, i8** %5, align 8
  %278 = load %struct.stat*, %struct.stat** %6, align 8
  %279 = call i32 @do_symlink(i8* %33, i8* %277, %struct.stat* %278)
  %280 = load i8*, i8** %5, align 8
  %281 = call i32 @metadata_log(i8* %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null, i8* %33, i8* null, i32 0)
  store i32 1, i32* %17, align 4
  br label %290

282:                                              ; preds = %132
  %283 = load i8*, i8** %4, align 8
  %284 = load i8*, i8** %5, align 8
  %285 = load %struct.stat*, %struct.stat** %6, align 8
  %286 = call i32 @do_symlink(i8* %283, i8* %284, %struct.stat* %285)
  %287 = load i8*, i8** %5, align 8
  %288 = load i8*, i8** %4, align 8
  %289 = call i32 @metadata_log(i8* %287, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null, i8* %288, i8* null, i32 0)
  store i32 0, i32* %17, align 4
  br label %290

290:                                              ; preds = %282, %272, %142, %126, %111
  %291 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %291)
  %292 = load i32, i32* %17, align 4
  switch i32 %292, label %294 [
    i32 0, label %293
    i32 1, label %293
  ]

293:                                              ; preds = %290, %290
  ret void

294:                                              ; preds = %290
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @do_link(i8*, i8*, %struct.stat*) #2

declare dso_local i32 @err(i32, i8*, i8*, ...) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i8* @digest_file(i8*) #2

declare dso_local i32 @metadata_log(i8*, i8*, i32*, i8*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @do_symlink(i8*, i8*, %struct.stat*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8* @dirname(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @basename(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
