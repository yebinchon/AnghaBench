; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_sdiff.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_sdiff.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIDTH = common dso_local global i64 0, align 8
@__const.main.fd = private unnamed_addr constant [2 x i32] [i32 -1, i32 0], align 4
@diff_path = common dso_local global i8* null, align 8
@__const.main.I_arg = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@__const.main.speed_lf = private unnamed_addr constant [20 x i8] c"--speed-large-files\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"aBbdEHI:ilo:stWw:\00", align 1
@longopts = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%sw\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@optarg = common dso_local global i8* null, align 8
@Iflag = common dso_local global i32 0, align 4
@lflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@WIDTH_MIN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"width is %s: %s\00", align 1
@help_msg = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@outfp = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"could not open: %s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@tmpdir = common dso_local global i8* null, align 8
@_PATH_TMP = common dso_local global i8* null, align 8
@width = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"width is too large: %zu\00", align 1
@line_width = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"child could not duplicate descriptor\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"could not execute diff: %s\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"could not fork\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"could not open diff pipe\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"could not open %s\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Error deleting %s.\00", align 1
@file2ln = common dso_local global i32 0, align 4
@file1ln = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [24 x i8] c"diff exited abnormally.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca [3 x i8], align 1
  %26 = alloca [20 x i8], align 16
  %27 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store i64 0, i64* %9, align 8
  %28 = load i64, i64* @WIDTH, align 8
  store i64 %28, i64* %10, align 8
  %29 = bitcast [2 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 bitcast ([2 x i32]* @__const.main.fd to i8*), i64 8, i1 false)
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %30 = load i8*, i8** @diff_path, align 8
  store i8* %30, i8** %17, align 8
  %31 = bitcast [3 x i8]* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.main.I_arg, i32 0, i32 0), i64 3, i1 false)
  %32 = bitcast [20 x i8]* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.main.speed_lf, i32 0, i32 0), i64 20, i1 false)
  %33 = load i32, i32* %4, align 4
  %34 = call i8** @calloc(i32 %33, i32 16)
  store i8** %34, i8*** %16, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %2
  %37 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %2
  %39 = load i8*, i8** %17, align 8
  %40 = load i8**, i8*** %16, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %9, align 8
  %43 = getelementptr inbounds i8*, i8** %40, i64 %41
  store i8* %39, i8** %43, align 8
  %44 = load i8**, i8*** %16, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %9, align 8
  %47 = getelementptr inbounds i8*, i8** %44, i64 %45
  %48 = call i64 @asprintf(i8** %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %38
  br label %53

53:                                               ; preds = %156, %52
  %54 = load i32, i32* %4, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* @longopts, align 4
  %57 = call i32 @getopt_long(i32 %54, i8** %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32* null)
  store i32 %57, i32* %11, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %157

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  switch i32 %60, label %154 [
    i32 132, label %61
    i32 131, label %61
    i32 129, label %61
    i32 128, label %61
    i32 83, label %61
    i32 97, label %62
    i32 66, label %62
    i32 98, label %62
    i32 100, label %62
    i32 69, label %62
    i32 105, label %62
    i32 116, label %62
    i32 87, label %62
    i32 72, label %97
    i32 133, label %103
    i32 73, label %107
    i32 108, label %118
    i32 111, label %119
    i32 115, label %121
    i32 119, label %122
    i32 130, label %134
  ]

61:                                               ; preds = %59, %59, %59, %59, %59
  br label %156

62:                                               ; preds = %59, %59, %59, %59, %59, %59, %59, %59
  %63 = load i8**, i8*** %16, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i8**, i8*** %16, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = sext i32 %69 to i64
  %71 = mul i64 1, %70
  %72 = add i64 %71, 2
  %73 = trunc i64 %72 to i32
  %74 = call i8* @realloc(i8* %65, i32 %73)
  %75 = load i8**, i8*** %16, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %77, 87
  br i1 %78, label %79, label %87

79:                                               ; preds = %62
  %80 = load i8**, i8*** %16, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i8**, i8*** %16, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  br label %96

87:                                               ; preds = %62
  %88 = load i8**, i8*** %16, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** %16, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %79
  br label %156

97:                                               ; preds = %59
  %98 = getelementptr inbounds [20 x i8], [20 x i8]* %26, i64 0, i64 0
  %99 = load i8**, i8*** %16, align 8
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %9, align 8
  %102 = getelementptr inbounds i8*, i8** %99, i64 %100
  store i8* %98, i8** %102, align 8
  br label %156

103:                                              ; preds = %59
  %104 = load i8*, i8** @optarg, align 8
  store i8* %104, i8** %17, align 8
  %105 = load i8**, i8*** %16, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  store i8* %104, i8** %106, align 8
  br label %156

107:                                              ; preds = %59
  store i32 1, i32* @Iflag, align 4
  %108 = getelementptr inbounds [3 x i8], [3 x i8]* %25, i64 0, i64 0
  %109 = load i8**, i8*** %16, align 8
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %9, align 8
  %112 = getelementptr inbounds i8*, i8** %109, i64 %110
  store i8* %108, i8** %112, align 8
  %113 = load i8*, i8** @optarg, align 8
  %114 = load i8**, i8*** %16, align 8
  %115 = load i64, i64* %9, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %9, align 8
  %117 = getelementptr inbounds i8*, i8** %114, i64 %115
  store i8* %113, i8** %117, align 8
  br label %156

118:                                              ; preds = %59
  store i32 1, i32* @lflag, align 4
  br label %156

119:                                              ; preds = %59
  %120 = load i8*, i8** @optarg, align 8
  store i8* %120, i8** %15, align 8
  br label %156

121:                                              ; preds = %59
  store i32 1, i32* @sflag, align 4
  br label %156

122:                                              ; preds = %59
  %123 = load i8*, i8** @optarg, align 8
  %124 = load i32, i32* @WIDTH_MIN, align 4
  %125 = load i32, i32* @INT_MAX, align 4
  %126 = call i64 @strtonum(i8* %123, i32 %124, i32 %125, i8** %27)
  store i64 %126, i64* %10, align 8
  %127 = load i8*, i8** %27, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i8*, i8** %27, align 8
  %131 = load i8*, i8** @optarg, align 8
  %132 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %130, i8* %131)
  br label %133

133:                                              ; preds = %129, %122
  br label %156

134:                                              ; preds = %59
  store i32 0, i32* %24, align 4
  br label %135

135:                                              ; preds = %149, %134
  %136 = load i8**, i8*** @help_msg, align 8
  %137 = load i32, i32* %24, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %152

142:                                              ; preds = %135
  %143 = load i8**, i8*** @help_msg, align 8
  %144 = load i32, i32* %24, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %24, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %24, align 4
  br label %135

152:                                              ; preds = %135
  %153 = call i32 @exit(i32 0) #4
  unreachable

154:                                              ; preds = %59
  %155 = call i32 (...) @usage()
  br label %156

156:                                              ; preds = %154, %133, %121, %119, %118, %107, %103, %97, %96, %61
  br label %53

157:                                              ; preds = %53
  %158 = load i8**, i8*** %16, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @strcmp(i8* %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %190

163:                                              ; preds = %157
  store i32 1, i32* %24, align 4
  br label %164

164:                                              ; preds = %180, %163
  %165 = load i32, i32* %24, align 4
  %166 = load i32, i32* %4, align 4
  %167 = sub nsw i32 %166, 1
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %183

169:                                              ; preds = %164
  %170 = load i8**, i8*** %16, align 8
  %171 = load i32, i32* %24, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %170, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = load i8**, i8*** %16, align 8
  %177 = load i32, i32* %24, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  store i8* %175, i8** %179, align 8
  br label %180

180:                                              ; preds = %169
  %181 = load i32, i32* %24, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %24, align 4
  br label %164

183:                                              ; preds = %164
  %184 = load i8**, i8*** %16, align 8
  %185 = load i64, i64* %9, align 8
  %186 = sub i64 %185, 1
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186
  store i8* null, i8** %187, align 8
  %188 = load i64, i64* %9, align 8
  %189 = add i64 %188, -1
  store i64 %189, i64* %9, align 8
  br label %190

190:                                              ; preds = %183, %157
  %191 = load i64, i64* @optind, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = sub nsw i64 %193, %191
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %4, align 4
  %196 = load i64, i64* @optind, align 8
  %197 = load i8**, i8*** %5, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 %196
  store i8** %198, i8*** %5, align 8
  %199 = load i32, i32* %4, align 4
  %200 = icmp ne i32 %199, 2
  br i1 %200, label %201, label %203

201:                                              ; preds = %190
  %202 = call i32 (...) @usage()
  br label %203

203:                                              ; preds = %201, %190
  %204 = load i8*, i8** %15, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %214

206:                                              ; preds = %203
  %207 = load i8*, i8** %15, align 8
  %208 = call i8* @fopen(i8* %207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %209 = bitcast i8* %208 to i32*
  store i32* %209, i32** @outfp, align 8
  %210 = icmp eq i32* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i8*, i8** @optarg, align 8
  %213 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %212)
  br label %214

214:                                              ; preds = %211, %206, %203
  %215 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i8* %215, i8** @tmpdir, align 8
  %216 = icmp eq i8* %215, null
  br i1 %216, label %222, label %217

217:                                              ; preds = %214
  %218 = load i8*, i8** @tmpdir, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %217, %214
  %223 = load i8*, i8** @_PATH_TMP, align 8
  store i8* %223, i8** @tmpdir, align 8
  br label %224

224:                                              ; preds = %222, %217
  %225 = load i8**, i8*** %5, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 0
  %227 = load i8*, i8** %226, align 8
  store i8* %227, i8** %18, align 8
  %228 = load i8**, i8*** %5, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 1
  %230 = load i8*, i8** %229, align 8
  store i8* %230, i8** %19, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %20, align 8
  %231 = load i8*, i8** %18, align 8
  %232 = load i8*, i8** %19, align 8
  %233 = call i64 @strcmp(i8* %231, i8* %232)
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %224
  %236 = load i8*, i8** %18, align 8
  %237 = call i8* @mktmpcpy(i8* %236)
  store i8* %237, i8** %20, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = load i8*, i8** %20, align 8
  store i8* %240, i8** %19, align 8
  store i8* %240, i8** %18, align 8
  br label %241

241:                                              ; preds = %239, %235
  br label %255

242:                                              ; preds = %224
  %243 = load i8*, i8** %18, align 8
  %244 = call i8* @mktmpcpy(i8* %243)
  store i8* %244, i8** %20, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = load i8*, i8** %20, align 8
  store i8* %247, i8** %18, align 8
  br label %248

248:                                              ; preds = %246, %242
  %249 = load i8*, i8** %19, align 8
  %250 = call i8* @mktmpcpy(i8* %249)
  store i8* %250, i8** %21, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %252, label %254

252:                                              ; preds = %248
  %253 = load i8*, i8** %21, align 8
  store i8* %253, i8** %19, align 8
  br label %254

254:                                              ; preds = %252, %248
  br label %255

255:                                              ; preds = %254, %241
  %256 = load i8*, i8** %18, align 8
  %257 = load i8**, i8*** %16, align 8
  %258 = load i64, i64* %9, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %9, align 8
  %260 = getelementptr inbounds i8*, i8** %257, i64 %258
  store i8* %256, i8** %260, align 8
  %261 = load i8*, i8** %19, align 8
  %262 = load i8**, i8*** %16, align 8
  %263 = load i64, i64* %9, align 8
  %264 = add i64 %263, 1
  store i64 %264, i64* %9, align 8
  %265 = getelementptr inbounds i8*, i8** %262, i64 %263
  store i8* %261, i8** %265, align 8
  %266 = load i8**, i8*** %16, align 8
  %267 = load i64, i64* %9, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %9, align 8
  %269 = getelementptr inbounds i8*, i8** %266, i64 %267
  store i8* null, i8** %269, align 8
  %270 = load i64, i64* %10, align 8
  %271 = sub i64 %270, 3
  %272 = udiv i64 %271, 2
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* @width, align 4
  %274 = load i32, i32* @width, align 4
  %275 = load i32, i32* @SIZE_MAX, align 4
  %276 = sub nsw i32 %275, 3
  %277 = sdiv i32 %276, 2
  %278 = icmp sgt i32 %274, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %255
  %280 = load i32, i32* @width, align 4
  %281 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %280)
  br label %282

282:                                              ; preds = %279, %255
  %283 = load i32, i32* @width, align 4
  %284 = mul nsw i32 %283, 2
  %285 = add nsw i32 %284, 3
  store i32 %285, i32* @line_width, align 4
  %286 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %287 = call i64 @pipe(i32* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %282
  %290 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %291

291:                                              ; preds = %289, %282
  %292 = call i32 (...) @fork()
  store i32 %292, i32* %14, align 4
  switch i32 %292, label %315 [
    i32 0, label %293
    i32 -1, label %313
  ]

293:                                              ; preds = %291
  %294 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @close(i32 %295)
  %297 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @STDOUT_FILENO, align 4
  %300 = call i32 @dup2(i32 %298, i32 %299)
  %301 = icmp eq i32 %300, -1
  br i1 %301, label %302, label %304

302:                                              ; preds = %293
  %303 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %304

304:                                              ; preds = %302, %293
  %305 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @close(i32 %306)
  %308 = load i8*, i8** %17, align 8
  %309 = load i8**, i8*** %16, align 8
  %310 = call i32 @execvp(i8* %308, i8** %309)
  %311 = load i8*, i8** %17, align 8
  %312 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* %311)
  br label %315

313:                                              ; preds = %291
  %314 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %315

315:                                              ; preds = %291, %313, %304
  %316 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @close(i32 %317)
  %319 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %320 = load i32, i32* %319, align 4
  %321 = call i32* @fdopen(i32 %320, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i32* %321, i32** %6, align 8
  %322 = icmp eq i32* %321, null
  br i1 %322, label %323, label %325

323:                                              ; preds = %315
  %324 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  br label %325

325:                                              ; preds = %323, %315
  %326 = load i8*, i8** %18, align 8
  %327 = call i8* @fopen(i8* %326, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %328 = bitcast i8* %327 to i32*
  store i32* %328, i32** %7, align 8
  %329 = icmp eq i32* %328, null
  br i1 %329, label %330, label %333

330:                                              ; preds = %325
  %331 = load i8*, i8** %18, align 8
  %332 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %331)
  br label %333

333:                                              ; preds = %330, %325
  %334 = load i8*, i8** %19, align 8
  %335 = call i8* @fopen(i8* %334, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %336 = bitcast i8* %335 to i32*
  store i32* %336, i32** %8, align 8
  %337 = icmp eq i32* %336, null
  br i1 %337, label %338, label %341

338:                                              ; preds = %333
  %339 = load i8*, i8** %19, align 8
  %340 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %339)
  br label %341

341:                                              ; preds = %338, %333
  %342 = load i32*, i32** %7, align 8
  %343 = call i32 @istextfile(i32* %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %341
  %346 = load i32*, i32** %8, align 8
  %347 = call i32 @istextfile(i32* %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %390, label %349

349:                                              ; preds = %345, %341
  %350 = load i32*, i32** %7, align 8
  %351 = call i32 @fclose(i32* %350)
  %352 = load i32*, i32** %8, align 8
  %353 = call i32 @fclose(i32* %352)
  %354 = load i32*, i32** %6, align 8
  %355 = icmp ne i32* %354, null
  br i1 %355, label %356, label %359

356:                                              ; preds = %349
  %357 = load i32*, i32** %6, align 8
  %358 = call i32 @fclose(i32* %357)
  br label %359

359:                                              ; preds = %356, %349
  %360 = load i8*, i8** %20, align 8
  %361 = icmp ne i8* %360, null
  br i1 %361, label %362, label %370

362:                                              ; preds = %359
  %363 = load i8*, i8** %20, align 8
  %364 = call i64 @unlink(i8* %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %362
  %367 = load i8*, i8** %20, align 8
  %368 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* %367)
  br label %369

369:                                              ; preds = %366, %362
  br label %370

370:                                              ; preds = %369, %359
  %371 = load i8*, i8** %21, align 8
  %372 = icmp ne i8* %371, null
  br i1 %372, label %373, label %381

373:                                              ; preds = %370
  %374 = load i8*, i8** %21, align 8
  %375 = call i64 @unlink(i8* %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %373
  %378 = load i8*, i8** %21, align 8
  %379 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* %378)
  br label %380

380:                                              ; preds = %377, %373
  br label %381

381:                                              ; preds = %380, %370
  %382 = load i8*, i8** %20, align 8
  %383 = call i32 @free(i8* %382)
  %384 = load i8*, i8** %21, align 8
  %385 = call i32 @free(i8* %384)
  %386 = load i8*, i8** %17, align 8
  %387 = load i8*, i8** %18, align 8
  %388 = load i8*, i8** %19, align 8
  %389 = call i32 @binexec(i8* %386, i8* %387, i8* %388)
  br label %390

390:                                              ; preds = %381, %345
  store i32 1, i32* @file2ln, align 4
  store i32 1, i32* @file1ln, align 4
  br label %391

391:                                              ; preds = %398, %390
  %392 = load i32*, i32** %6, align 8
  %393 = load i32*, i32** %7, align 8
  %394 = load i32*, i32** %8, align 8
  %395 = call i64 @parsecmd(i32* %392, i32* %393, i32* %394)
  %396 = load i64, i64* @EOF, align 8
  %397 = icmp ne i64 %395, %396
  br i1 %397, label %398, label %399

398:                                              ; preds = %391
  br label %391

399:                                              ; preds = %391
  %400 = load i32*, i32** %6, align 8
  %401 = call i32 @fclose(i32* %400)
  %402 = load i32, i32* %14, align 4
  %403 = call i32 @waitpid(i32 %402, i32* %13, i32 0)
  %404 = icmp eq i32 %403, -1
  br i1 %404, label %413, label %405

405:                                              ; preds = %399
  %406 = load i32, i32* %13, align 4
  %407 = call i32 @WIFEXITED(i32 %406)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %405
  %410 = load i32, i32* %13, align 4
  %411 = call i32 @WEXITSTATUS(i32 %410)
  %412 = icmp sge i32 %411, 2
  br i1 %412, label %413, label %415

413:                                              ; preds = %409, %405, %399
  %414 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  br label %415

415:                                              ; preds = %413, %409
  %416 = load i8*, i8** %20, align 8
  %417 = icmp ne i8* %416, null
  br i1 %417, label %418, label %426

418:                                              ; preds = %415
  %419 = load i8*, i8** %20, align 8
  %420 = call i64 @unlink(i8* %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %418
  %423 = load i8*, i8** %20, align 8
  %424 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* %423)
  br label %425

425:                                              ; preds = %422, %418
  br label %426

426:                                              ; preds = %425, %415
  %427 = load i8*, i8** %21, align 8
  %428 = icmp ne i8* %427, null
  br i1 %428, label %429, label %437

429:                                              ; preds = %426
  %430 = load i8*, i8** %21, align 8
  %431 = call i64 @unlink(i8* %430)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %436

433:                                              ; preds = %429
  %434 = load i8*, i8** %21, align 8
  %435 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* %434)
  br label %436

436:                                              ; preds = %433, %429
  br label %437

437:                                              ; preds = %436, %426
  %438 = load i8*, i8** %20, align 8
  %439 = call i32 @free(i8* %438)
  %440 = load i8*, i8** %21, align 8
  %441 = call i32 @free(i8* %440)
  store i8* null, i8** %21, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %18, align 8
  %442 = load i32, i32* @lflag, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %453

444:                                              ; preds = %437
  br label %445

445:                                              ; preds = %449, %444
  %446 = load i32*, i32** %7, align 8
  %447 = call i8* @xfgets(i32* %446)
  store i8* %447, i8** %22, align 8
  %448 = icmp ne i8* %447, null
  br i1 %448, label %449, label %452

449:                                              ; preds = %445
  %450 = load i8*, i8** %22, align 8
  %451 = call i32 @enqueue(i8* %450, i8 signext 32, i8* null)
  br label %445

452:                                              ; preds = %445
  br label %471

453:                                              ; preds = %437
  br label %454

454:                                              ; preds = %469, %453
  %455 = load i32*, i32** %7, align 8
  %456 = call i8* @xfgets(i32* %455)
  store i8* %456, i8** %22, align 8
  %457 = load i32*, i32** %8, align 8
  %458 = call i8* @xfgets(i32* %457)
  store i8* %458, i8** %23, align 8
  %459 = load i8*, i8** %22, align 8
  %460 = icmp ne i8* %459, null
  br i1 %460, label %464, label %461

461:                                              ; preds = %454
  %462 = load i8*, i8** %23, align 8
  %463 = icmp ne i8* %462, null
  br i1 %463, label %464, label %468

464:                                              ; preds = %461, %454
  %465 = load i8*, i8** %22, align 8
  %466 = load i8*, i8** %23, align 8
  %467 = call i32 @enqueue(i8* %465, i8 signext 32, i8* %466)
  br label %469

468:                                              ; preds = %461
  br label %470

469:                                              ; preds = %464
  br label %454

470:                                              ; preds = %468
  br label %471

471:                                              ; preds = %470, %452
  %472 = load i32*, i32** %7, align 8
  %473 = call i32 @fclose(i32* %472)
  %474 = load i32*, i32** %8, align 8
  %475 = call i32 @fclose(i32* %474)
  %476 = call i32 (...) @processq()
  %477 = load i32, i32* %13, align 4
  %478 = call i32 @WEXITSTATUS(i32 %477)
  ret i32 %478
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8** @calloc(i32, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i64 @asprintf(i8**, i8*) #2

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #2

declare dso_local i8* @realloc(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i64 @strtonum(i8*, i32, i32, i8**) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @printf(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @usage(...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @fopen(i8*, i8*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i8* @mktmpcpy(i8*) #2

declare dso_local i64 @pipe(i32*) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @dup2(i32, i32) #2

declare dso_local i32 @execvp(i8*, i8**) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @istextfile(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @binexec(i8*, i8*, i8*) #2

declare dso_local i64 @parsecmd(i32*, i32*, i32*) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #2

declare dso_local i32 @WIFEXITED(i32) #2

declare dso_local i32 @WEXITSTATUS(i32) #2

declare dso_local i8* @xfgets(i32*) #2

declare dso_local i32 @enqueue(i8*, i8 signext, i8*) #2

declare dso_local i32 @processq(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
